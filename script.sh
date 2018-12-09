#!/bin/sh
set -e

PROD=""
MESSAGE=""

[ -n "$PLUGIN_PRODUCTION" ] && PROD="--prod"
[ -n "$PLUGIN_MESSAGE" ] && MESSAGE="--message $PLUGIN_MESSAGE"

[ -z "$PLUGIN_NETLIFY_AUTH_TOKEN" ] && { echo "> Error! netlify_auth_token not defined" ; exit 1; }
[ -z "$PLUGIN_NETLIFY_SITE_ID" ] && { echo "> Error! netlify_site_id not defined" ; exit 1; }
[ -z "$PLUGIN_DIR" ] && { echo "> Error! dir not defined" ; exit 1; }

netlify deploy $PROD --auth $PLUGIN_NETLIFY_AUTH_TOKEN --site $PLUGIN_NETLIFY_SITE_ID --dir $PLUGIN_DIR $MESSAGE
