#! /bin/bash

if ! wp core is-installed --allow-root --path="/var/www/wordpress"; then
    wp core install --url="marcrodr.42.fr" \
    --title="Inception" \
    --admin_user=$MYSQL_USER \
    --admin_password=$MYSQL_PASSWD \
    --admin_email=marcrodr@42.student \
    --path=/var/www/wordpress --allow-root
    
    wp user create \
    "$COMMON_USER" \
    "$COMMON_EMAIL" \
    --role=contributor \
    --user_pass=$COMMON_PASS \
    --path=/var/www/wordpress --allow-root
fi

exec php-fpm7.4 --nodaemonize