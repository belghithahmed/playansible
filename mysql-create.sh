#!/bin/bash

#mysqladmin -u root -p$1 create $2
PASSWDDB=$2
mysql -uroot -p$1 -e "CREATE DATABASE ${PASSWDDB} /*\!40100 DEFAULT CHARACTER SET utf8 */;"
mysql -uroot -p$1 -e "CREATE USER ${PASSWDDB}@'%' IDENTIFIED BY '${PASSWDDB}';"
mysql -uroot -p$1 -e "GRANT ALL PRIVILEGES ON ${PASSWDDB}.* TO '${PASSWDDB}'@'%';"
mysql -uroot -p$1 -e "FLUSH PRIVILEGES;"