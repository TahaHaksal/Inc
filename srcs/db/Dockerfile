FROM debian:buster

RUN apt-get update && \
    apt-get install -y mariadb-server supervisor

COPY ./conf/my.cnf /etc/mysql/my.cnf

COPY ./tools/db.sh /

COPY ./tools/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN mkdir -p /var/run/mysqld && \
    chmod 777 /var/run/mysqld

RUN chmod -R 755 /etc/mysql/my.cnf

RUN chmod -R 755 /db.sh

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]