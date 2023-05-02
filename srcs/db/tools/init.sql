<<<<<<< HEAD
CREATE DATABASE IF NOT EXISTS database_here;
CREATE USER IF NOT EXISTS 'username_here'@'%' IDENTIFIED BY 'password_here';
GRANT ALL PRIVILEGES ON database_here.* TO 'username_here'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'root_pw_here';
use database_here;
=======
-- GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
CREATE DATABASE IF NOT EXISTS database_placeholder;
CREATE USER IF NOT EXISTS 'username_placeholder'@'%' IDENTIFIED BY 'password_placeholder';
GRANT ALL PRIVILEGES ON database_placeholder.* TO 'username_placeholder'@'%';
FLUSH PRIVILEGES;
use database_placeholder;
>>>>>>> 2a8568048bed8f8ed809d1e5ecb3250b06a626f0
