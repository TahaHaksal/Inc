FROM debian:buster

RUN apt-get update && \
    apt-get install -y mariadb-server supervisor

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/ /

RUN mkdir -p /var/run/mysqld && \
    chmod 777 /var/run/mysqld

RUN chmod -R 755 /etc/mysql/my.cnf

RUN chmod -R 755 /db.sh

RUN sh /db.sh

ENTRYPOINT ["mysqld"]