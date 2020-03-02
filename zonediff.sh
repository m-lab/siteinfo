#!/bin/bash

_=${PROJECT:?Please provide PROJECT name in environment}
ZONE_FILE=${1:?Please provide a zone file path}
ZONE_NAME=$(basename $ZONE_FILE)
URL=https://siteinfo.${PROJECT}.measurementlab.net/v1/zones/${ZONE_NAME}
diff -Ndur \
  <( curl --silent ${URL} ) \
  ${ZONE_FILE} > ${ZONE_FILE}.diff || :
