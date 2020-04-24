# StackHead Docker images repository

The Docker images provided in this repository supply user configuration.
All containers have a user and group named **stackhead** with id **1412**.

Processes should be run by this user in order to ensure that file system permissions are applied.

If you're using those images as base image, make sure to switch back to "stackhead" user at the end.

## Images

We use Alpine-based images to reduce the image size.

### PHP

* Docker Registry: [getstackhead/php](https://hub.docker.com/repository/docker/getstackhead/php)
* GitHub Registry: [docker.pkg.github.com/getstackhead/dockerimages/php](https://github.com/getstackhead/dockerimages/packages/198281)

#### Available tags

Each tag relates to the PHP version used in the image.

* 7.0 ([Dockerfile](./php/7.0/Dockerfile))
* 7.1 ([Dockerfile](./php/7.1/Dockerfile))
* 7.2 ([Dockerfile](./php/7.2/Dockerfile))
* 7.3 ([Dockerfile](./php/7.3/Dockerfile))
* 7.4 ([Dockerfile](./php/7.4/Dockerfile))

#### Example usage

```
# from Docker registry
FROM getstackhead/php:7.4

# from GitHub registry
FROM docker.pkg.github.com/getstackhead/dockerimages/php:7.4
```
