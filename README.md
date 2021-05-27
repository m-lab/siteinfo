# siteinfo

M-Lab Public Site Information Automation

The latest files can always be found:

* https://siteinfo.mlab-oti.measurementlab.net/v1/index.html

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
