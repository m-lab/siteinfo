#!/bin/bash

set -eux

_=${PROJECT:?Please provide PROJECT name in environment}

# Maximum percentage (in either direction) the RR count can change between
# deployments. As of this writing, adding or removing a single experiment can
# change the total record count by around 27%. As the number of experiments
# increases, this value can be made smaller.
MAX_PERCENT_RR_CHANGE="0.30"

CLOUDDNS_ZONE="${PROJECT}-measurement-lab-org"

SITEINFO_ZONE=$(find . -name "measurement-lab.org.zone")
SITEINFO_NORMALIZED="siteinfo.normalized"

CLOUDDNS_ZONE="clouddns.zone"
CLOUDDNS_NORMALIZED="clouddns.normalized"

# The file current_dns_rr_count is generated by a previous build step.
CURRENT_DNS_RR_COUNT=$(cat /workspace/current_dns_rr_count)

grep '\bIN' "${SITEINFO_ZONE}" | \
    sed -e 's/^@/measurement-lab.org./' -e 's/[[:space:]]\+/ /g' | \
    sort > "${SITEINFO_NORMALIZED}"

NEW_DNS_RR_COUNT=$(wc -l "${SITEINFO_NORMALIZED}")

PERCENT_CHANGE=$(echo "scale=2; (${CURRENT_DNS_RR_COUNT} - ${NEW_DNS_RR_COUNT}) / ${CURRENT_DNS_RR_COUNT}" | bc)
ABS_PERCENT_CHANGE=$(echo "${PERCENT_CHANGE}" | sed -e 's/^-//')
PERCENT_CHANGE_RESULT=$(echo "${ABS_PERCENT_CHANGE} > ${MAX_PERCENT_RR_CHANGE}" | bc)

if [[ "${PERCENT_CHANGE_RESULT}" == "1" ]]; then
  echo "Maximum RR change percent exceeded. ${ABS_PERCENT_CHANGE} > ${MAX_PERCENT_RR_CHANGE}"
  exit 1
fi

# Deploy the zone to Cloud DNS
gcloud dns record-sets import "${SITEINFO_ZONE}" \
    --zone-file-format \
    --zone "${CLOUDDNS_ZONE}" \
    --delete-all-existing \
    --project "${PROJECT}"

# After the new zone has been imported, double check to be sure that an export
# of the zone _exactly_ matches the zone file we just imported. This step may
# be unnecessary or not useful, but it just one very small sanity check.
gcloud dns record-sets export ${CLOUDDNS_ZONE} \
    --zone ${PROJECT}-measurement-lab-org \
    --project ${PROJECT}
grep '\bIN' "${CLOUDDNS_ZONE}" | \
    sed -e 's/.measurement-lab.org.//' -e 's/"//g' | \
    cut -d' ' -f1,3,4,5 | \
    grep -Ev '(NS|SOA)' | \
    sort > "${CLOUDDNS_NORMALIZED}"

RR_DIFFS=$(comm -3 "${SITEINFO_NORMALIZED}" "${CLOUDDNS_NORMALIZED}")
if [[ -n "${RR_DIFFS}" ]]; then
  echo "siteinfo and Cloud DNS RRs differ."
  echo "{$RR_DIFFS}"
  exit 1
fi