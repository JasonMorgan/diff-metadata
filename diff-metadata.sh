#!/bin/bash

for i in $(BASEURL TILENAME VERSION1 VERSION2 VERSION1METADATAFILENAME VERSION2METADATAFILENAME);
do if [ -z "${!i}" ]
  then
    echo "\$i is empty"
    exit 1
  fi
done 
Url1="$BASEURL/$TILENAME-$VERSION1/metadata/$VERSION1METADATAFILENAME"
Url2="$BASEURL/$TILENAME-$VERSION2/metadata/$VERSION2METADATAFILENAME"
curl -s "$Url1" > file1.yaml
curl -s "$Url2" > file2.yaml
diff file1.yaml file2.yaml
