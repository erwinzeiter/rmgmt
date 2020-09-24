#!/bin/bash
#author Erwin Zeiter <erwin.zeiter@jedox.com>

export COMMIT_HASH="$1"
export BUILD_NUM="$2"

export tagname="$(git describe --tags --match "v20.[0-9].[0-9]" --abbrev=0)"
export longhash="$(git rev-list -n 1 $tagname)"
export shorthash="$(git rev-parse --short=7 $longhash)"

echo "tagname:  $tagname"
echo "longhash: $longhash"
echo "COMMIT_HASH_FROM_JENKINS: $COMMIT_HASH"
echo "shorthash: $shorthash"
echo "Buildnumber: $BUILD_NUM"

echo "this is cool how it works"
