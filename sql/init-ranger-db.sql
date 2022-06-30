# When ranger scripts init database, it will check db connection and ranger db via assigned
# ranger db user and password, so create ranger db and db user is required! otherwise install
# will fail.

DROP DATABASE IF EXISTS @DB_RANGER_NAME@;
CREATE DATABASE IF NOT EXISTS @DB_RANGER_NAME@;

DROP USER IF EXISTS '@DB_RANGER_USER@'@'%';
CREATE USER IF NOT EXISTS '@DB_RANGER_USER@'@'%' IDENTIFIED BY '@MYSQL_RANGER_DB_USER_PASSWORD@';
GRANT ALL PRIVILEGES ON @DB_RANGER_NAME@.* TO '@DB_RANGER_USER@'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
