FROM debian:bullseye-slim 

RUN apt update && apt install -y curl php-fpm php-json php-mysql

##RUN service php7.4-fpm start  tirar essa duvida dps, do service. Is PID1?
RUN mkdir -p /run/php

ENTRYPOINT ["php-fpm7.4", "--nodaemonize"]