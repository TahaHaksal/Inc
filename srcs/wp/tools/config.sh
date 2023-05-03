#!/bin/sh

chmod 755 -R /var/www/html/wordpress
chown -R www-data:www-data /var/www/html/wordpress
mkdir -p /run/php/ && touch /run/php/php7.3-fpm.pid

#changing the config file with the correct values from the .env file
sed -i "s/database_name_here/${MYSQL_DB}/g" wordpress/wp-config.php && \
sed -i "s/username_here/${MYSQL_USER}/g" wordpress/wp-config.php &&\
sed -i "s/password_here/${MYSQL_PASSWORD}/g" wordpress/wp-config.php
