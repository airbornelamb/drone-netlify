#!/bin/sh
set -e

PROD=""

if [ -z "$PLUGIN_NETLIFY_AUTH_TOKEN" ] ; then
    echo "> Error! netlify_auth_token not defined"
    exit 1
fi

if [ -z "$PLUGIN_NETLIFY_SITE_ID" ] ; then
    echo "> Error! netlify_site_id not defined"
    exit 1
fi

if [ -z "$PLUGIN_DIR" ] ; then
    echo "> Error! dir not defined"
    exit 1
fi

if [ "$PLUGIN_PRODUCTION" = "yes" ] ; then
    PROD="--prod"
fi
    

if [ -n "$PLUGIN_MESSAGE" ] ; then
    netlify deploy --auth $PLUGIN_NETLIFY_AUTH_TOKEN --site $PLUGIN_NETLIFY_SITE_ID --dir $PLUGIN_DIR --message $PLUGIN_MESSAGE $PROD
else
    netlify deploy --auth $PLUGIN_NETLIFY_AUTH_TOKEN --site $PLUGIN_NETLIFY_SITE_ID --dir $PLUGIN_DIR $PROD
fi
