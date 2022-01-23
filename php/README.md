# StackHead PHP images

This image comes with a user and group named **stackhead** with id **1412**.
This is the user that is used by StackHead deployment.

Processes should be run by this user in order to ensure that the required file system permissions are received.
If you're using those images as base image, make sure to switch back to "stackhead" user at the end before starting your process.

* Docker Registry: [getstackhead/php](https://hub.docker.com/repository/docker/getstackhead/php)
* GitHub Registry: [docker.pkg.github.com/getstackhead/dockerimages/php](https://github.com/getstackhead/dockerimages/packages/198281)

## Available tags

Each tag relates to the PHP-FPM version used in the image.

* 7.2 ([Dockerfile](./7.2/Dockerfile))
* 7.3 ([Dockerfile](./7.3/Dockerfile))
* 7.4 ([Dockerfile](./7.4/Dockerfile))
* 8.0 ([Dockerfile](./8.0/Dockerfile))
* 8.1 ([Dockerfile](./8.1/Dockerfile))

## Example usage

### Dockerfile
```dockerfile
# from Docker registry
FROM getstackhead/php:7.4

# from GitHub registry
FROM docker.pkg.github.com/getstackhead/dockerimages/php:7.4
```
