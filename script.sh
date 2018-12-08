#!/bin/sh
set -e

if [ -z "$PLUGIN_NETLIFY_AUTH_TOKEN" ]
then
    echo "> Error! NETLIFY_AUTH_TOKEN not defined"
    exit 1
fi

if [ -z "$PLUGIN_NETLIFY_SITE_ID" ]
then
    echo "> Error! NETLIFY_SITE_ID not defined"
    exit 1
fi

if [ -z "$PLUGIN_NETLIFY_SITE_ID" ]
then
    echo "> Error! NETLIFY_SITE_ID not defined"
    exit 1
fi

netlify deploy
