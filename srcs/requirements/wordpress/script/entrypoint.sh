#! /bin/bash

wp core install --url="marcrodr.42.fr" --title="WP-CLI" --admin_user=$MYSQL_USER \
--admin_password=$MYSQL_PASSWD --path=/var/www/html --allow-root

exec php-fpm7.4 --nodaemonize