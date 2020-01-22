#!/bin/sh
set -e

chmod +x /usr/local/lib/postgresql/wbt_cc_sql.so

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" "$POSTGRES_DB" <<-EOSQL

CREATE or replace FUNCTION cc_destination_in(cstring) RETURNS cc_destination
     AS '/usr/local/lib/postgresql/wbt_cc_sql.so', 'cc_destination_in'
     LANGUAGE C IMMUTABLE STRICT;

CREATE or replace FUNCTION cc_destination_in(int4, int4, int8, int4, int4) RETURNS cc_destination
     AS '/usr/local/lib/postgresql/wbt_cc_sql.so', 'cc_destination_in_args'
     LANGUAGE C IMMUTABLE CALLED ON NULL INPUT ;

CREATE TYPE cc_destination (
  internallength = 24,
  input          = cc_destination_in,
  output         = cc_destination_out
) ;

EOSQL
