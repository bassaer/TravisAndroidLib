#!/bin/sh

cur_ver=$(git describe --tags --abbrev=0)
next_ver=$(scripts/changelog.sh -v)
if [ $cur_ver = $next_ver ]; then
    echo 'skip deploy'
    exit 0
fi

# AAR build
./gradlew travismylib:assembleRelease

# upload maven repo
./gradlew travismylib:uploadArchives

# deploy to bintray
./gradlew travismylib:build
./gradlew travismylib:bintrayUpload
