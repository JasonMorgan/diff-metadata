# Diff Product Metadata

This repo contains a task that will allow you to diff the product metadata for Pivotal Products hosted at http://strabo.cfapps.io/spec-zoo.html.

You'll need to provide the task the product name, product metadata file name (if it differs from metadata.yml), and product version.

## Example of usage

Product and Version 1: http://strabo.cfapps.io/spec-zoo.html?p=tiles%2Bp-healthwatch-1.4.5-build.41%2Bmetadata%2Bmetadata.yml

Product and Version 2: http://strabo.cfapps.io/spec-zoo.html?p=tiles%2Bp-healthwatch-1.4.4-build.1%2Bmetadata%2Bmetadata.yml

task variables:
```yaml
params:
  BASEURL: "https://s3.amazonaws.com/strabo/tiles"
  TILENAME: p-healthwatch
  VERSION1: "1.4.5-build.41"
  VERSION2: "1.4.4-build.1"
  VERSION1METADATAFILENAME: metadata.yml
  VERSION2METADATAFILENAME: metadata.yml
```
