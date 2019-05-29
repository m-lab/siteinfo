#!/bin/bash

# /configs
# /v1/sites/locations.json
# /v1/sites/hostnames.json
# /v1/sites/sites.json
# /v1/zones/measurement-lab.zone

PROJECT=${1:?Please provide project}

# TODO: make buckets.
# siteinfo-${PROJECT} && empty-${PROJECT}

# TODO: add ip lookup
gcloud --project ${PROJECT} compute addresses create \
  siteinfo-lb-ip-1 --ip-version=IPV4 --global

# TODO: create backend bucket for empty-bucket.
gcloud --project ${PROJECT} compute backend-buckets create \
    siteinfo-backend-bucket \
    --gcs-bucket-name siteinfo-${PROJECT}

# TODO: create url-map with default to empty-bucket.
gcloud --project ${PROJECT} compute url-maps create siteinfo-url-map \
    --default-backend-bucket=siteinfo-backend-bucket

# TODO: restrict all requests to /v1/* -- requires an "empty" default backend bucket.
gcloud --project ${PROJECT} compute url-maps add-path-matcher siteinfo-url-map \
    --path-matcher-name siteinfo-url-map-matcher \
    --default-backend-bucket=siteinfo-backend-bucket \
    --backend-bucket-path-rules="/v1/*=siteinfo-backend-bucket" \
    --new-hosts siteinfo.${PROJECT}.measurementlab.net

# TODO: add dns hostname update.

# +
gcloud --project ${PROJECT} beta compute ssl-certificates create siteinfo-ssl-cert \
    --domains siteinfo.${PROJECT}.measurementlab.net

# +
gcloud --project ${PROJECT} compute target-https-proxies create siteinfo-lb-proxy \
    --url-map siteinfo-url-map --ssl-certificates siteinfo-ssl-cert

# +
gcloud --project ${PROJECT} compute forwarding-rules create siteinfo-fw-rule \
    --address ${LB_IP} --global \
    --target-https-proxy siteinfo-lb-proxy \
    --ports 443
