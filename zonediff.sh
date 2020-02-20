#!/bin/bash

ZONE_FILE=${1:?Please provide a zone file}
ZONE_NAME=$(basename $ZONE_FILE)
_=${PROJECT:?Please provide PROJECT name in environment}
URL=https://siteinfo.${PROJECT}.measurementlab.net/v1/zones/${ZONE_NAME}
diff -Ndur \
  <( curl --silent ${URL} ) \
  ${ZONE_FILE} > ${ZONE_FILE}.diff || :
