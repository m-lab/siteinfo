# siteinfo

M-Lab Public Site Information Automation

The latest files can always be found:

* https://siteinfo.mlab-oti.measurementlab.net/v1/index.html

# GCP Cloud DNS zones
Every GCP project must have these Cloud DNS zones:
* Name `<project>-measurement-lab-org` for DNS name `<project>.measurement-lab.org`
* Name `acme-<project>-measurement-lab-org` for DNS name `acme.<project>.measurement-lab.org`
They can be easily created in the GCP Console or via gcloud like:
```
gcloud dns managed-zones create <name> \
    --description "Appropriate description." \
    --dns-name "<dns-name>" \
    --project "${PROJECT}"
```
**NOTE**: When a Cloud DNS zone is created Cloud DNS automatically create NS
records for those zones. These nameservers are currently hard coded into the
Jsonnet zone file(s). If a Cloud DNS zone gets [re]created, then you will need
to verify the nameservers assigned to the zone and appropriately update the
Jsonnet zone file(s) with the proper nameservers.
