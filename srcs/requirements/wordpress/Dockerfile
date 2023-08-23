FROM debian:bullseye-slim 

RUN apt update && apt install -y wget php-fpm php-json php-mysql wordpress libfcgi-bin

RUN mkdir -p /run/php

WORKDIR /var/www/html

RUN wget -O /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x /usr/local/bin/wp && \
    wp core download --path=/var/www/html --allow-root

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY script/entrypoint.sh /tmp/entrypoint.sh

COPY ./conf/wp-config.php /var/www/html/wp-config.php

RUN chmod +x /tmp/entrypoint.sh

ENTRYPOINT ["/tmp/entrypoint.sh"]