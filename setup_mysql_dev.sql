#!/usr/bin/bash
MYSQL_ROOT_PASSWORD = hbnb_dev_pwd;
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE DATABASE IF NOT EXISTS hbnb_dev_db;"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';"
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';"

