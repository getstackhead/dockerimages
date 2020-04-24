FROM php:7.2.29-fpm-alpine
LABEL maintainer="mario.lubenka@googlemail.com"

RUN addgroup -g 1412 stackhead
RUN adduser -h /home/stackhead -s /bin/bash -u 1412 --disabled-password -G stackhead stackhead
RUN chown -R stackhead:stackhead /home/stackhead

USER stackhead