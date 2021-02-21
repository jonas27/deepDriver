#!/bin/bash

# for testing download only first 9 entries
head -n 3 manifest.txt > manifest-down.txt

# Create dir for downloads
DOWNLOD_DIR="./downloads"
mkdir -p $DOWNLOD_DIR

# download manifest
./gdc-client download -d $DOWNLOD_DIR -m manifest-down.txt

# extract all gzip files and 
for d in $DOWNLOD_DIR ; do
    echo "$d"
done

