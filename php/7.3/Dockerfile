FROM php:7.3.25-fpm-alpine

RUN addgroup -g 1412 stackhead
RUN adduser -h /home/stackhead -s /bin/bash -u 1412 -D -G stackhead stackhead
RUN chown -R stackhead:stackhead /home/stackhead

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

USER stackhead
