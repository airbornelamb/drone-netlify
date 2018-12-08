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

if [ -n "$PLUGIN_MESSAGE" ]
then
    netlify deploy --auth $PLUGIN_NETLIFY_AUTH_TOKEN --site $PLUGIN_NETLIFY_SITE_ID --message $PLUGIN_MESSAGE
else
    netlify deploy --auth $PLUGIN_NETLIFY_AUTH_TOKEN --site $PLUGIN_NETLIFY_SITE_ID
fi
