#!/bin/bash
set -e

#  only run if you start the container with a data directory that is empty
#  see: https://hub.docker.com/_/postgres #Initialization scripts

psql -v ON_ERROR_STOP=1 POSTGRES_PASSWORD=postgres --username "postgres" --dbname "postgres" <<-EOSQL
	      CREATE ROLE db_owner WITH LOGIN CREATEDB PASSWORD 'pass01';
EOSQL
