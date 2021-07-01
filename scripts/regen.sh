#!/usr/bin/env bash

cd SubProject || exit
git reset --keep HEAD
git add -N .
git diff --output ../patchs.patch

tmerr=$?
cd ..
exit $tmerr

