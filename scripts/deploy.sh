#!/bin/sh

# AAR build
./gradlew travismylib:assembleRelease

# upload maven repo
./gradlew travismylib:uploadArchives

# deploy to bintray
./gradlew travismylib:build
./gradlew travismylib:bintrayUpload
