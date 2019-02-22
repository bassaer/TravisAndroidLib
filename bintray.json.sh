#!/bin/bash
version=$(./changelog.sh -v)
desc=$(./changelog.sh -d)
released=$(date '+%Y-%m-%d')

cat << EOF
{
    "package": {
        "name": "travismylib",
        "repo": "TravisAndroidLib",
        "desc": "android lib travis",
        "website_url": "https://github.com/bassaer/TravisAndroidLib",
        "issue_tracker_url": "https://github.com/bassaer/TravisAndroidLib.git",
        "vcs_url": "https://github.com/bassaer/TravisAndroidLib.git",
        "github_use_tag_release_notes": true,
        "github_release_notes_file": "CHANGELOG.md",
        "licenses": ["MIT"],
        "labels": ["android"],
        "public_download_numbers": true
    },

    "version": {
        "name": "${version}",
        "desc": "${desc}",
        "released": "${released}",
        "vcs_tag": "${version}",
    },

    "files":
        [
        {"includePattern": "travismylib/build/outputs/aar/*release.aar"}
        ],
    "publish": true
}
EOF
