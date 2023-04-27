FROM debian:buster

RUN apt-get update && \
    apt-get install -y curl php-fpm php-mysql

WORKDIR /var/www/html

RUN curl -O https://wordpress.org/wordpress-6.2.tar.gz && \
    tar -xzf wordpress-6.2.tar.gz && \
    rm wordpress-6.2.tar.gz && \
    rm -f wordpress/wp-config-sample.php && \
    rm -f wordpress/wp-config.php

COPY ./conf/wp-config.php /var/www/html/wordpress/wp-config.php

CMD 'bash'