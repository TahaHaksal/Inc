FROM debian:buster

RUN apt-get update && \
    apt-get install -y curl php-fpm php-mysql

WORKDIR /var/www/html

ARG MYSQL_USER
ARG MYSQL_DB
ARG MYSQL_PASSWORD
ARG MYSQL_HOST

RUN curl -O https://wordpress.org/wordpress-6.2.tar.gz && \
    tar -xzf wordpress-6.2.tar.gz && \
    rm wordpress-6.2.tar.gz && \
    rm -f wordpress/wp-config-sample.php && \
    rm -f wordpress/wp-config.php

COPY ./conf/wp-config.php /var/www/html/wordpress/wp-config.php

COPY ./tools/config.sh .

COPY ./conf/php.conf /etc/php/7.3/fpm/pool.d/www.conf

RUN sh ./config.sh && rm -f config.sh

CMD ["/usr/sbin/php-fpm7.3", "-F"]
