#!/usr/bin/env sh
set -eu

# Set default values if environment variables empty
[ -z "$DOCKER_PROXY_SERVICE_NAME" ] && export DOCKER_PROXY_SERVICE_NAME=php
[ -z "$DOCKER_PROXY_SERVICE_PORT" ] && export $DOCKER_PROXY_SERVICE_PORT=9000
[ -z "$NGINX_PUBLIC_DIRECTORY" ] && export NGINX_PUBLIC_DIRECTORY=html

envsubst '${DOCKER_PROXY_SERVICE_NAME} ${DOCKER_PROXY_SERVICE_PORT} ${NGINX_PUBLIC_DIRECTORY}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"