#!/bin/bash

set -eux

_=${PROJECT:?Please provide PROJECT name in environment}
_=${DOMAIN:?Please provide DOMAIN name in environment}
_=${ZONEFILE:?Please provide ZONEFILE name in environment}
_=${VERSION:?Please provide VERSION in environment}

# The maximum amount of time in seconds to wait for the zone file import
# operation to complete before exiting with an error.
MAX_IMPORT_WAIT="300"

SITEINFO_ZONE="/workspace/output/${VERSION}/zones/${ZONEFILE}"
SITEINFO_NORMALIZED="/workspace/siteinfo.normalized"

CLOUDDNS_ZONE="/workspace/clouddns.zone"
CLOUDDNS_ZONE_NAME="${DOMAIN//./-}"
CLOUDDNS_NORMALIZED="/workspace/clouddns.normalized"

# Install jq
apt update
apt install -y jq

# Make sure that every experiment has the same number of RRs.
# NOTE: this matches v1 and v2 hostname. It does not match machine names.
UNIQ_EXP_RR_COUNTS=$(
  grep -oP '^([a-z.-]+)[.-]mlab(?=[1-4])' "${SITEINFO_ZONE}" \
    | sort | uniq -c | awk '{print $1}' | uniq
)
UNIQ_EXP_RR_COUNT=$(echo "${UNIQ_EXP_RR_COUNTS}" | wc -w)
if [[ "${UNIQ_EXP_RR_COUNT}" -ne "1" ]]; then
  echo "Not all experiments have the same number of RRs."
  exit 1
fi

# Make sure that every switch in switches.json has a corresponding s1.* RR in the
# generated zone file.
SITE_COUNT=$(jq '. | length' /workspace/output/v1/sites/switches.json)
SW_RR_COUNT=$(grep '^s1' "${SITEINFO_ZONE}" | wc -l)
if [[ "${SITE_COUNT}" -ne "${SW_RR_COUNT}" ]]; then
  echo "Not every site has a corresponding switch RR in the zone."
  exit 1
fi

# We only deploy the primary zone file for measurement-lab.org to the mlab-oti project.
if [[ "${DOMAIN}" == "measurement-lab.org" ]] && [[ "${PROJECT}" != "mlab-oti" ]]; then
  echo "Not deploying primary zone for ${DOMAIN} to project ${PROJECT}."
  exit 0
fi

# Deploy the zone to Cloud DNS
gcloud dns record-sets import "${SITEINFO_ZONE}" \
    --zone-file-format \
    --zone "${CLOUDDNS_ZONE_NAME}" \
    --delete-all-existing \
    --project "${PROJECT}"

# Wait until the import operation is complete before continuing.
count="0"
while true; do
  if [[ "${count}" -gt "${MAX_IMPORT_WAIT}" ]]; then
    echo "Zone file import to Cloud DNS is taking too long."
    exit 1
  fi
  status=$(
    gcloud dns record-sets changes list \
        --zone "${CLOUDDNS_ZONE_NAME}" \
        --sort-order descending \
        --limit 1 \
        --format 'value(status)' \
        --project "${PROJECT}"
  )
  if [[ "${status}" == "done" ]]; then
    break;
  fi
  sleep 5
  count=$(( count + 5 ))
done

# Normalize the zone siteinfo just generated.
grep '\bIN' "${SITEINFO_ZONE}" | \
    sed -e "s/^@/${DOMAIN}./" -e "s/[[:space:]]\+/ /g" | \
    grep -Ev "(NS|SOA)" | \
    sort > "${SITEINFO_NORMALIZED}"

# After the new zone has been imported, double check to be sure that an export
# of the zone _exactly_ matches the zone file we just imported. This step may
# be unnecessary or not useful, but it just one very small sanity check.
gcloud dns record-sets export ${CLOUDDNS_ZONE} \
    --zone ${CLOUDDNS_ZONE_NAME} \
    --zone-file-format \
    --project ${PROJECT}
grep "\bIN" "${CLOUDDNS_ZONE}" | \
    sed -e "s/.${DOMAIN}.//" -e "s/\"//g" | \
    cut -d" " -f1,3,4,5 | \
    grep -Ev "(NS|SOA)" | \
    sort > "${CLOUDDNS_NORMALIZED}"

RR_DIFFS=$(comm -3 "${SITEINFO_NORMALIZED}" "${CLOUDDNS_NORMALIZED}")
if [[ -n "${RR_DIFFS}" ]]; then
  echo "siteinfo and Cloud DNS RRs differ for domain ${DOMAIN}."
  echo "{$RR_DIFFS}"
  exit 1
fi
