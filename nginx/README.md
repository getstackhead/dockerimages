# StackHead Nginx images

This image allows configuring the public path, which is served by Nginx, and the name of the 
service and port that receives the traffic.

* Docker Registry: [getstackhead/nginx](https://hub.docker.com/repository/docker/getstackhead/nginx)
* GitHub Registry: [docker.pkg.github.com/getstackhead/dockerimages/nginx](https://github.com/getstackhead/dockerimages/packages/203850)

## Configuration

Customization can be done by setting environment variables.
The default values for those vary by image (see below).

|Environment variable|Description|
| ------------------ | --------- |
|DOCKER_PROXY_SERVICE_NAME|Name of Docker service|
|DOCKER_PROXY_SERVICE_PORT|Port to receive the HTTP request|
|NGINX_PUBLIC_DIRECTORY|Folder containing files to be served|

## Available tags

The tags describe which files Nginx can process and forward to the respective service.

* php ([Dockerfile](./php/Dockerfile))
  * DOCKER_PROXY_SERVICE_NAME=php
  * DOCKER_PROXY_SERVICE_PORT=9000
  * NGINX_PUBLIC_DIRECTORY=html

## Example usage

### Dockerfile
```dockerfile
# from Docker registry
FROM getstackhead/nginx:php

# from GitHub registry
FROM docker.pkg.github.com/getstackhead/dockerimages/nginx:php
```

### Docker Compose
```yaml
services:
  nginx:
    image: getstackhead/nginx:php
    environment:
      DOCKER_PROXY_SERVICE_NAME: phpfpm # name of PHP service (default: php)
      NGINX_PUBLIC_DIRECTORY: htdocs # folder containing files to be served (default: www)
    volumes:
      - .:/var/www # Nginx serves /var/www/$NGINX_PUBLIC_DIRECTORY
    links:
      - php
  phpfpm:
    image: php:7.4-fpm
    # ...
```

### StackHead project definition
```yaml
deployment:
  type: docker
  settings:
    services:
      - name: data
        image: mydatacontainer
      - name: nginx
        image: getstackhead/nginx:php
        environment:
          DOCKER_PROXY_SERVICE_NAME: phpfpm # name of my php service below is phpfpm
          NGINX_PUBLIC_DIRECTORY: htdocs # files are in /var/www/htdocs (mounted from mydatacontainer)
        volumes_from:
          - data
        links:
          - php
      - name: phpfpm
        image: php:7.4-fpm
        # ... more configuration here...
```