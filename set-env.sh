#!/bin/bash

set -ex

VERSION=`cat VERSION`

if [[ $GITHUB_REF == "refs/heads/master" ]]; then
    echo "::set-env name=TAGS::latest,${VERSION}"
else
    echo "::set-env name=TAGS::dev,${VERSION}-dev"
fi
