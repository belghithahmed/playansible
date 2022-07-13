#!/bin/bash
PASSWDDB=$1
set -e
#create user
sudo -u postgres psql -c "CREATE USER $PASSWDDB WITH PASSWORD '$PASSWDDB';"
#create db
sudo -u postgres psql -c "create database  $PASSWDDB;" 
#grant privileges on db
sudo -u postgres psql -c "grant all privileges on database $PASSWDDB to $PASSWDDB;"

set +e