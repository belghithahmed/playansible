#!/bin/bash
PASSWDDB=$1
set -e
#create user
sudo -u postgres psql -c "create user ${PASSWDDB} with encrypted password '${PASSWDDB}';"
#create db
sudo -u postgres psql -c "create db ${PASSWDDB};" 
#grant privileges on db
sudo -u postgres psql -c "grant all privileges on database ${PASSWDDB} to ${PASSWDDB};"

set +e