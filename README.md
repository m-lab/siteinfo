# siteinfo

## M-Lab Public Site Information

This repository is responsible for recording, tracking and publishing public
information about every M-Lab site, server and service. All of the raw
information can be found directly in this repository. However, this raw
information is meant to be processed using [Jsonnet](https://jsonnet.org/) into
parsable JSON files. While this can be done by anyone with a clone of this
repository and the proper dependencies and utilities installed, the resources
produced by this repository are mostly meant to be consumed through a REST-ish
interface. Artifacts created by this repository are stored in a Google Cloud
Storage bucket and made public through a GCP Loadbalancer backed by the
bucket.

There are currently two API versions, v1 and v2. Indexes to the resources
available for each can be found at the following URLs, respectively:

* <https://siteinfo.mlab-oti.measurementlab.net/v1/index.html>
* <https://siteinfo.mlab-oti.measurementlab.net/v2/index.html>

The v2 API does not provide all of the same resources as v1, but instead the v1
resources where there was a change from the v1 version. That is to say, not all
v1 resources are deprecated, except in the case where there is a v2 resources
with the same name, in which case the v2 resource should always be used.
Additionally, the v2 API contains a few resources which did not exist when the
v1 API was created, and are therefore specific to v2.

The primary difference between the v1 and v2 APIs is that v2 introduced the
usage of GCP project-based hostnames, as well as replacing dots with dashes in
hostnames. For example, a typical v1 NDT experiment hostname would have looked
like:

`ndt.iupui.mlab1.fra01.measurement-lab.org`

... whereas the same v2 hostname will look like:

`ndt-iupui-mlab1-fra01.mlab-oti.measurement-lab.org`

**NOTE**: v1 hostnames are no longer supported on the M-Lab platform and will
not resolve through DNS.

Brief descriptions of each resource type can be found be below.

### v1

* `./adhoc/placeholder.json`: internal use.
* `./retired/annotations.json`: the same as annotations.json below, but for
  sites which have been retired and are no longer in active service.
* `./sites/annotations.json`: mostly for internal use, consumed by the
  [uuid-annotator](https://github.com/m-lab/uuid-annotator) to annotate every
  test that gets run against platform experiments.
* `./sites/geo.json`: GeoJSON formatted information about sites.
* `./sites/hostnames.json`: a list of every M-Lab hostname, both bare machines and
  experiments, along with IPv4 and IPv6 addresses.
* `./sites/locations.json`: not dissimilar to geo.json, but with less
  information and not GeoJSON formatted. Mostly for internal use.
* `./sites/sites.json`: an exhaustive inventory of every M-Lab site, with as
  much data and metadata as we have about the site, the machines at the site and
  the experiments running on each machine. This will generally be overkill for
  most use cases.
* `./sites/switches.json`: a map of every site, with information about the layer
  2 switch in front of the machines at that site.
* `./zones/placeholder.zone`: internal use.
* `./zones/placeholder.zone.diff`: internal use.

### v2

* `./adhoc/placeholder.json`: internal use.
* `./retired/placeholder.json`: internal use.
* `./sites/hostnames.json`: same as v1, but using v2 names, as described above.
* `./sites/machines.json`: a list of machines (both physical and virtual) on the
  platform, along with IP addresses, type and GCP project.
* `./sites/projects.json`: similar to machines.json above, but a map of every
  machine, using the machine's short name (e.g., mlab2-lju01), to its GCP
  project. Mostly for internal use.
* `./sites/sites.json`: same as v1, but using v2 names, as describe above.
* `./zones/measurement-lab.org.zone`: BIND-style zone file for the
  measurement-lab.org domain. Mostly for internal use.
* `./zones/measurement-lab.org.zone.diff`: internal use.
* `./zones/mlab-oti.measurement-lab.org.zone`: BIND-style zone file for the
  mlab-oti.measurement-lab.org domain. Mostly for internal use.
* `./zones/mlab-oti.measurement-lab.org.zone.diff`: internal use.

## GCP Cloud DNS zones

Every GCP project must have these Cloud DNS zones:

* Name `<project>-measurement-lab-org` for DNS name `<project>.measurement-lab.org`
* Name `acme-<project>-measurement-lab-org` for DNS name
  `acme.<project>.measurement-lab.org`

They can be easily created in the GCP Console or via gcloud like:

```lang-sh
gcloud dns managed-zones create <name> \
    --description "Appropriate description." \
    --dns-name "<dns-name>" \
    --project "${PROJECT}"
```

**NOTE**: When a Cloud DNS zone is created Cloud DNS automatically create NS
records for those zones. These nameservers are currently hard coded into the
Jsonnet zone file(s). If a Cloud DNS zone gets [re]created, then you will need
to verify the nameservers assigned to the zone and appropriately update the
Jsonnet zone file(s) with the proper nameservers. The nameservers for zones
can be easily found in the GCP Console or you can find them with gcloud. For
example:

```lang-sh
gcloud dns record-sets list \
      --zone "acme-mlab-sandbox-measurement-lab-org" \
      --name "acme.mlab-sandbox.measurement-lab.org" \
      --type "NS" \
      --project mlab-sandbox
```

## Triggering builds in other repositories

The Cloud Build configuration for this repository has several steps which
trigger builds in other repositories (e.g, epoxy-images, switch-config). It does
this by leveraging the `cbctl` command from the gcp-config repository. For the
mlab-staging and mlab-oti projects, this involves querying the Github API to find
the appropriate build reference (i.e., release tag name or branch). For private
repositories (like switch-config), this requires the Github client to
authenticate to the Github API. This is done by leveraging a [Github personal
access
tokens](https://docs.github.com/en/github/authenticating-to-github/keeping-your-account-and-data-secure/creating-a-personal-access-token).
A personal access token was created under the "M-Lab Machine User" Github
account for this purpose. In order for builds in this repository to access the
token, the token is [stored as a secret in the GCP Secret
Manager](https://cloud.google.com/build/docs/securing-builds/use-secrets). The
secret can be created with this command:

```lang-sh
echo -n "<token>" | gcloud secrets create siteinfo-builds-github-token --data-file=- --project <project>
```

You will then need to make sure that the Cloud Build service account for the
project has access to the secret. To do this you need to know the email of the
default Cloud Build service account for the project. You can find this in the
GCP Web Console by going to TOOLS -> Cloud Build -> Settings. Once you have this
you can run:

```lang-sh
gcloud secrets add-iam-policy-binding siteinfo-builds-github-token \
      --member 'serviceAccount:<service-account>' \
      --role 'roles/secretmanager.secretAccessor' \
      --project <project>
```

You can refer to the cloudbuild.yaml file in this repository to see how this
secret is used in a build, or you can read [the documentation on using secrets
from the Secret Manager in builds](https://cloud.google.com/build/docs/securing-builds/use-secrets).
