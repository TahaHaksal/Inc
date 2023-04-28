#!/bin/bash

service mysql start;

sed -i 's/username_placeholder/'${MYSQL_USER}'/g' init.sql && \
sed -i 's/password_placeholder/'${MYSQL_PASSWORD}'/g' init.sql && \
sed -i 's/database_placeholder/'${MYSQL_DB}'/g' init.sql

mysql < init.sql

mysqladmin -u root shutdown;
rm -f init.sql;