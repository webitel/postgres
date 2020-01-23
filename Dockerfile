FROM postgres:12-alpine
LABEL maintainer="Vitaly Kovalyshyn"

ENV POSTGRES_DB webitel
ENV POSTGRES_USER opensips
ENV POSTGRES_PASSWORD webitel

COPY sql /sql
COPY lib/wbt_cc_sql.so /usr/local/lib/postgresql/

COPY install-0-pgcrypto.sh /docker-entrypoint-initdb.d/
COPY install-0-uuid-ossp.sh /docker-entrypoint-initdb.d/
COPY install-0-btree-gin.sh /docker-entrypoint-initdb.d/
COPY install-0-pg-trgm.sh /docker-entrypoint-initdb.d/

COPY install-webitel-db.sh /docker-entrypoint-initdb.d/
