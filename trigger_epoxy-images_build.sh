#!/bin/bash

set -x

apt update > /dev/null
apt install -y curl > /dev/null

BASE_URL="https://cloudbuild.googleapis.com/v1/projects"

TRIGGER_ID_mlab_sandbox="2a1bc430-6ae6-4d9d-9ae7-d75716a6077d"
TRIGGER_ID_mlab_staging="98e3222b-e851-4622-86d1-e41368a72c47"
TRIGGER_ID_mlab_oti="dbe996f9-eb52-4bd4-bde8-6712b3040002"

TRIGGER_ID="TRIGGER_ID_${PROJECT_ID/-/_}"

AUTH_TOKEN="$(gcloud config config-helper --format='value(credential.access_token)')"

cat <<EOF > request.json
{
  "projectId": "${PROJECT_ID}",
  "triggerId": "${!TRIGGER_ID}",
  "branchName": "${BRANCH_NAME}"
}
EOF

cat request.json

curl --request POST \
     --data "@request.json" \
     --header "Content-Type: application/json" \
     --header "Authorization: Bearer $AUTH_TOKEN" \
     "${BASE_URL}/${PROJECT_ID}/triggers/${!TRIGGER_ID}:run"

