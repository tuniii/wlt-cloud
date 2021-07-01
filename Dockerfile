FROM tobi312/php:7.4-fpm-nginx-alpine

ENV DB_SERVER ""
ENV DB_USER ""
ENV DB_PASS ""
ENV DB_NAME ""

RUN apk add git; \
  mkdir /var/www/wlt_cloud; \
  git clone https://github.com/WLANThermo-nano/WLANThermo_Server.git /var/www/wlt_cloud; \
  cd /var/www/wlt_cloud; \
  git checkout container; \
  cp nginx.conf /etc/nginx/conf.d/default.conf;
