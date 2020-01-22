#!/bin/sh

psql --username "$POSTGRES_USER" "$POSTGRES_DB" -a -f /sql/webitel.sql

