#!/bin/bash

set -e
#create user
sudo -u postgres createuser $1 with encrypted password $1
#create db
sudo -u postgres createdb $1
#grant privileges on db
grant all privileges on database $1 to $1 ;

set +e