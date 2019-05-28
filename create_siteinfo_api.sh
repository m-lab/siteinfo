#!/bin/bash

# /configs
# /v1/sites/locations.json
# /v1/sites/hostnames.json
# /v1/sites/measurement-lab.zone
# /v1/sites/raw.json
# /archive/

# +
gcloud --project mlab-sandbox compute addresses create siteinfo-lb-ip-1 --ip-version=IPV4 --global

# +
gcloud --project mlab-sandbox compute backend-buckets create siteinfo-static-bucket \
    --gcs-bucket-name siteinfo-mlab-sandbox

# +
gcloud --project mlab-sandbox compute url-maps create siteinfo-url-map \
    --default-backend-bucket=siteinfo-static-bucket


gcloud --project mlab-sandbox compute url-maps add-path-matcher siteinfo-url-map \
    --path-matcher-name siteinfo-url-map-matcher \
    --default-backend-bucket=siteinfo-static-bucket \
    --backend-bucket-path-rules="/metadata/*=siteinfo-static-bucket" \
    --new-hosts siteinfo.mlab-sandbox.measurementlab.net

# TODO: add ip lookup
# TODO: add dns hostname update.

# +
gcloud --project mlab-sandbox beta compute ssl-certificates create siteinfo-ssl-cert \
    --domains siteinfo.mlab-sandbox.measurementlab.net

# +
gcloud --project mlab-sandbox compute target-https-proxies create siteinfo-lb-proxy \
    --url-map siteinfo-url-map --ssl-certificates siteinfo-ssl-cert

# +
gcloud --project mlab-sandbox compute forwarding-rules create siteinfo-fw-rule \
    --address 35.190.26.149 --global \
    --target-https-proxy siteinfo-lb-proxy \
    --ports 443




########
