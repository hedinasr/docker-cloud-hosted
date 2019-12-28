# WordPress database
CREATE DATABASE IF NOT EXISTS wordpress;
GRANT ALL PRIVILEGES ON wordpress.* TO 'wpadmin' identified by 'wpadmin';
