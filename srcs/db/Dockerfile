FROM debian:buster

<<<<<<< HEAD
ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ARG DB_ROOT_PASSWORD

#-y flag for assume yes to update and upgrade stuff
RUN apt-get update && apt-get upgrade -y

#install mariadb and other usefull applications
RUN apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/ .

RUN sh db.sh && rm -f db.sh

CMD ["mysqld"]
=======
RUN apt-get update && \
    apt-get install -y mariadb-server supervisor

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/db.sh /
COPY ./tools/init.sql /

RUN mkdir -p /var/run/mysqld && \
    chmod 777 /var/run/mysqld

RUN chmod -R 755 /etc/mysql/my.cnf

RUN chmod -R 755 /db.sh

RUN sh /db.sh

ENTRYPOINT ["mysqld"]
>>>>>>> 2a8568048bed8f8ed809d1e5ecb3250b06a626f0
