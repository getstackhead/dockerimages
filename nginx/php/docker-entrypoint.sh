#!/usr/bin/env sh
set -eu

# Set default values if environment variables empty
DOCKER_PROXY_SERVICE_NAME=${DOCKER_PROXY_SERVICE_NAME:-php}
DOCKER_PROXY_SERVICE_PORT=${DOCKER_PROXY_SERVICE_PORT:-9000}
NGINX_PUBLIC_DIRECTORY=${DOCKER_PROXY_SERVICE_PORT:-html}

envsubst '${DOCKER_PROXY_SERVICE_NAME} ${DOCKER_PROXY_SERVICE_PORT} ${NGINX_PUBLIC_DIRECTORY}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"