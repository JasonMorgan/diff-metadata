# Diff Product Metadata

This repo contains a task that will allow you to diff the product metadata for Pivotal Products hosted at http://strabo.cfapps.io/spec-zoo.html.

You'll need to provide the task the product name, product metadata file name (if it differs from metadata.yml), and product version.

## Example of usage

Product and Version 1: http://strabo.cfapps.io/spec-zoo.html?p=tiles%2Bp-healthwatch-1.4.5-build.41%2Bmetadata%2Bmetadata.yml

Product and Version 2: http://strabo.cfapps.io/spec-zoo.html?p=tiles%2Bp-healthwatch-1.4.4-build.1%2Bmetadata%2Bmetadata.yml

task variables:
```yaml
params:
  BASEURL: "https://s3.amazonaws.com/strabo/tiles" # This came from digging into the strabo.cfapps site and finding the s3 bucket that hosts the metadata files
  TILENAME: p-healthwatch
  VERSION1: "1.4.5-build.41"
  VERSION2: "1.4.4-build.1"
  VERSION1METADATAFILENAME: metadata.yml # we can leave the default name here, a few of the product versions have different file names for the metadata.
  VERSION2METADATAFILENAME: metadata.yml
```

Running this task locally

```shell
git pull <this repo>
cd <directory>
fly -t my_concourse_target execute -c diff-metadata.task.yaml -i source=$PWD
```

## Dockerfile

The dockerfile included in the repo was used to build jasonmorgan/alpine-worker:0.1.0. Please feel free to use it to build your own.