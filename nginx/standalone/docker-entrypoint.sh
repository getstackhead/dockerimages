#!/usr/bin/env sh
set -eu

# Set default values if environment variables empty
export NGINX_PUBLIC_DIRECTORY=${NGINX_PUBLIC_DIRECTORY:-html}

envsubst '${NGINX_PUBLIC_DIRECTORY}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"
