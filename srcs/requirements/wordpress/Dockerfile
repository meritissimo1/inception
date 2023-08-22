FROM debian:bullseye-slim 

RUN apt update && apt install -y curl php-fpm php-json php-mysql

RUN mkdir -p /run/php

ENTRYPOINT ["php-fpm7.4", "--nodaemonize"]