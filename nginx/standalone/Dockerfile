FROM nginx:1.19.2-alpine

VOLUME /var/www
COPY nginx-default.conf.template /etc/nginx/conf.d/default.conf.template
COPY docker-entrypoint.sh /
RUN chown -R 1412:1412 /docker-entrypoint.sh
RUN chown -R 1412:1412 /etc/nginx
RUN chown -R 1412:1412 /var/www /var/cache
RUN touch /var/run/nginx.pid
RUN chown -R 1412:1412 /var/run /run

USER 1412:1412

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
