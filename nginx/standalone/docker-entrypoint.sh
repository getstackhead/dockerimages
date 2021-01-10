#!/usr/bin/env sh
set -eu

# Set default values if environment variables empty
export NGINX_PUBLIC_DIRECTORY=${NGINX_PUBLIC_DIRECTORY:-html}
export NGINX_LISTEN_PORT=${NGINX_LISTEN_PORT:-8080}

envsubst '${NGINX_PUBLIC_DIRECTORY} ${NGINX_LISTEN_PORT}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"
