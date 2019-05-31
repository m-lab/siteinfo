#!/bin/bash

OUTPUT=${1:?Please provide output location}
_=${PROJECT:?Please provide PROJECT name in environment}
ZONE=measurement-lab.org.zone
URL=https://siteinfo.${PROJECT}.measurementlab.net/v1/zones/${ZONE}
diff -Ndur \
  <( curl --silent ${URL} ) \
  ${OUTPUT}/${ZONE} > ${OUTPUT}/${ZONE}.diff || :
