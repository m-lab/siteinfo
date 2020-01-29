#!/bin/bash
#
# A simple script to run a Cloud Build trigger on a remote repo.

BASE_URL="https://cloudbuild.googleapis.com/v1/projects"

case $PROJECT_ID in
mlab-sandbox)
  TRIGGER_NAMES=(
    epoxy-images-push-to-sandbox-stage1
  )
  ;;
mlab-staging)
  TRIGGER_NAMES=(
    epoxy-images-push-to-master-stage1
  )
  ;;
mlab-oti)
  TRIGGER_NAMES=(
    epoxy-images-tag-stage1
  )
  ;;
*)
  echo "Unknown project: ${PROJECT_ID}. Exiting..."
  exit 1
esac

# Generate an auth bearer token for the HTTPS request to the API.
AUTH_TOKEN="$(gcloud config config-helper --format='value(credential.access_token)')"

# Create the RepoSource request body document.
# https://cloud.google.com/cloud-build/docs/api/reference/rest/Shared.Types/Build#RepoSource
cat <<EOF > request.json
{
  "projectId": "${PROJECT_ID}",
  "branchName": "${BRANCH_NAME}"
}
EOF

for trigger in ${TRIGGER_NAMES[@]}; do
  # Get the trigger ID for the named trigger.
  trigger_id=$(
    gcloud beta builds triggers list --filter "name=${trigger}" \
        --format "value(id)" --project "${PROJECT_ID}"
  )
  if [[ -n "${trigger_id}" ]]; then
    curl --request POST \
        --data "@request.json" \
        --header "Content-Type: application/json" \
        --header "Authorization: Bearer $AUTH_TOKEN" \
        "${BASE_URL}/${PROJECT_ID}/triggers/${trigger_id}:run"
  else
    echo "Unable to determine trigger ID for named trigger: ${trigger}"
    exit 1
  fi
done
