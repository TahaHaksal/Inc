FROM debian:buster

RUN apt-get update && \
    apt-get install -y mariadb-server systemd

COPY ./confdir/my.cnf /etc/mysql/my.cnf

COPY db.sh /

COPY sqlEntries /

RUN chmod -R 755 /etc/mysql/my.cnf

RUN chmod -R 755 /db.sh

RUN chmod -R 755 /sqlEntries

CMD '/db.sh'; 'bash'