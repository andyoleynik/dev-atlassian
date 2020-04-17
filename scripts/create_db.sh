#!/bin/bash
set -e

POSTGRES="psql --username ${POSTGRES_USER}"

for DB_NAME in ${DB_NAMES}
do
echo "Creating database: ${DB_NAME}"
$POSTGRES <<EOSQL
CREATE DATABASE ${DB_NAME} WITH ENCODING 'UNICODE' LC_COLLATE 'C' LC_CTYPE 'C' TEMPLATE template0;
EOSQL
done
