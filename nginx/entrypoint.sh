#!/bin/sh

UPSTREAM_FILE="/etc/nginx/conf.d/upstream.conf"

[ ! -z "${FPM_HOST}" ] && sed -i "s/!FPM_HOST!/${FPM_HOST}/" $UPSTREAM_FILE
[ ! -z "${FPM_PORT}" ] && sed -i "s/!FPM_PORT!/${FPM_PORT}/" $UPSTREAM_FILE

# Check if the nginx syntax is fine, then launch.
nginx -t

exec "$@"
