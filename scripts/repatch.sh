#!/usr/bin/env sh

cd SubProject || exit

git reset --hard HEAD
git apply --reject ../patchs.patch
tmerr=$?

cd ..

exit $tmerr
