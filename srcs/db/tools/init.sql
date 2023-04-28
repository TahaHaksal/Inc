GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
CREATE DATABASE IF NOT EXISTS database_placeholder;
CREATE USER IF NOT EXISTS 'username_placeholder'@'%' IDENTIFIED BY 'password_placeholder';
GRANT ALL PRIVILEGES ON database_placeholder.* TO 'username_placeholder'@'%';
FLUSH PRIVILEGES;
use database_placeholder;