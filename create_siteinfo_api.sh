#!/bin/bash
#
# create_siteinfo_api.sh creates all GCP resources needed to serve the siteinfo
# API from a GCS bucket.

set -euxo pipefail
PROJECT=${1:?Please provide project}

# Create siteinfo and empty GCS buckets.
siteinfo_bucket="siteinfo-${PROJECT}"
if ! gsutil acl get "gs://${siteinfo_bucket}" &> /dev/null ; then
  gsutil mb -p ${PROJECT} -c multi_regional "gs://${siteinfo_bucket}"
  gsutil defacl set public-read "gs://${siteinfo_bucket}"
fi
empty_bucket="empty-${PROJECT}"
if ! gsutil acl get "gs://${empty_bucket}" &> /dev/null ; then
  gsutil mb -p ${PROJECT} "gs://${empty_bucket}"
  gsutil defacl set public-read "gs://${empty_bucket}"
fi

# Lookup or create loadbalancer IP.
lb_ip=$(
  gcloud --project ${PROJECT} compute addresses describe \
    siteinfo-lb-ip-1 --global --format="value(address)" || :
)
if [[ -z "${lb_ip}" ]] ; then
  lb_ip=$(
    gcloud --project ${PROJECT} compute addresses create \
      siteinfo-lb-ip-1 --ip-version=IPV4 --global --format="value(address)"
  )
fi

# Lookup or create the backend bucket for the siteinfo data bucket.
siteinfo_backend_name=$(
  gcloud --project ${PROJECT} compute backend-buckets describe \
    siteinfo-backend-bucket --format='value(name)' || :
)
if [[ -z "${siteinfo_backend_name}" ]] ; then
  siteinfo_backend_name=$(
    gcloud --project ${PROJECT} compute backend-buckets create \
      siteinfo-backend-bucket \
      --gcs-bucket-name ${siteinfo_bucket} --format='value(name)'
  )
fi
empty_backend_name=$(
  gcloud --project ${PROJECT} compute backend-buckets describe \
    empty-backend-bucket --format='value(name)' || :
)
if [[ -z "${empty_backend_name}" ]] ; then
  empty_backend_name=$(
    gcloud --project ${PROJECT} compute backend-buckets create \
      empty-backend-bucket \
      --gcs-bucket-name ${empty_bucket} --format='value(name)'
  )
fi

# Create url-map with default to empty-bucket.
urlmap_name=$(
  gcloud --project ${PROJECT} compute url-maps describe \
    siteinfo-url-map --format='value(name)' || :
)
if [[ -z "${urlmap_name}" ]] ; then
  urlmap_name=$(
    gcloud --project ${PROJECT} compute url-maps create \
      siteinfo-url-map \
      --default-backend-bucket=${empty_backend_name} \
      --format='value(name)'
  )
fi

# Allow requests to /v1/* to the siteinfo backend bucket.
found=$(
  gcloud --project ${PROJECT} compute url-maps describe \
    ${urlmap_name} --format='value(pathMatchers[pathRules][0][paths][0])' || :
)
if [[ "${found}" != "/v1/*" ]] ; then
  gcloud --project ${PROJECT} compute url-maps add-path-matcher \
    ${urlmap_name} \
    --path-matcher-name siteinfo-url-map-matcher \
    --default-backend-bucket=${empty_backend_name} \
    --backend-bucket-path-rules="/v1/*=${siteinfo_backend_name}" \
    --new-hosts siteinfo.${PROJECT}.measurementlab.net
fi

# Setup DNS for siteinfo hostname.
current_ip=$(
  gcloud dns record-sets list --zone "${PROJECT}-measurementlab-net" \
    --name "siteinfo.${PROJECT}.measurementlab.net." \
    --format "value(rrdatas[0])" --project ${PROJECT} || : )
if [[ "${current_ip}" != "${lb_ip}" ]] ; then
  # Add the record, deleting the existing one first.
  gcloud dns record-sets transaction start \
    --zone "${PROJECT}-measurementlab-net" \
    --project ${PROJECT}
  # Allow remove to fail when CURRENT_IP is empty.
  gcloud dns record-sets transaction remove \
    --zone "${PROJECT}-measurementlab-net" \
    --name "siteinfo.${PROJECT}.measurementlab.net." \
    --type A \
    --ttl 300 \
    "${current_ip}" --project ${PROJECT} || :
  gcloud dns record-sets transaction add \
    --zone "${PROJECT}-measurementlab-net" \
    --name "siteinfo.${PROJECT}.measurementlab.net." \
    --type A \
    --ttl 300 \
    "${lb_ip}" \
    --project ${PROJECT}
  gcloud dns record-sets transaction execute \
    --zone "${PROJECT}-measurementlab-net" \
    --project ${PROJECT}
fi

# Create managed let's encrypt TLS certificates.
certificate_name=$(
  gcloud --project ${PROJECT} beta compute ssl-certificates describe \
    siteinfo-certificate --format='value(name)' || :
)
if [[ -z "${certificate_name}" ]] ; then
  certificate_name=$(
    gcloud --project ${PROJECT} beta compute ssl-certificates create \
      siteinfo-certificate \
      --domains siteinfo.${PROJECT}.measurementlab.net --format='value(name)'
  )
fi

# Create the HTTPS target proxy connecting the url-map and managed certificate.
proxy_name=$(
  gcloud --project ${PROJECT} compute target-https-proxies describe \
    siteinfo-lb-proxy --format='value(name)' || :
)
if [[ -z "${proxy_name}" ]] ; then
  proxy_name=$(
    gcloud --project ${PROJECT} compute target-https-proxies create \
      siteinfo-lb-proxy \
      --url-map ${urlmap_name} --ssl-certificates ${certificate_name} \
      --format='value(name)'
  )
fi

# Create the forwarding rule connecting our loadbalancer IP to the target proxy.
forwarder_name=$(
  gcloud --project ${PROJECT} compute forwarding-rules describe \
    siteinfo-forwarder --global --format='value(name)' || :
)
if [[ -z "${forwarder_name}" ]] ; then
  gcloud --project ${PROJECT} compute forwarding-rules create \
    siteinfo-forwarder \
    --address ${lb_ip} --global \
    --target-https-proxy ${proxy_name} \
    --ports 443
fi
