#!/bin/bash

apt update
apt install -y curl

TRIGGER_ID_mlab_sandbox="2a1bc430-6ae6-4d9d-9ae7-d75716a6077d"
TRIGGER_ID_mlab_staging="98e3222b-e851-4622-86d1-e41368a72c47"
TRIGGER_ID_mlab_oti="dbe996f9-eb52-4bd4-bde8-6712b3040002"

TRIGGER_ID="TRIGGER_ID_${PROJECT_ID/-/_}"

cat <<EOF > request.json
{
  "projectId": "${PROJECT_ID}",
  "triggerId": "${!TRIGGER_ID}",
  "branchName": "${BRANCH_NAME}"
}
EOF

curl --request POST --data "@request.json" --header "Content-Type: application/json" \
    "https://cloudbuild.googleapis.com/v1/projects/${PROJECT_ID}/triggers/${!TRIGGER_ID}:run"

