#!/usr/bin/env sh
set -eu

# Set default values if environment variables empty
export DOCKER_PROXY_SERVICE_NAME=${DOCKER_PROXY_SERVICE_NAME:-php}
export DOCKER_PROXY_SERVICE_PORT=${DOCKER_PROXY_SERVICE_PORT:-9000}
export NGINX_PUBLIC_DIRECTORY=${NGINX_PUBLIC_DIRECTORY:-html}

envsubst '${DOCKER_PROXY_SERVICE_NAME} ${DOCKER_PROXY_SERVICE_PORT} ${NGINX_PUBLIC_DIRECTORY}' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"