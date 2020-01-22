FROM postgres:12-alpine
LABEL maintainer="Vitaly Kovalyshyn"

ENV POSTGRES_DB webitel
ENV POSTGRES_USER opensips
ENV POSTGRES_PASSWORD webitel

COPY sql /
COPY lib/wbt_cc_sql.so /usr/local/lib/postgresql/

COPY install-pgcrypto.sh /docker-entrypoint-initdb.d/
COPY install-uuid-ossp.sh /docker-entrypoint-initdb.d/
COPY install-btree-gin.sh /docker-entrypoint-initdb.d/
COPY install-pg-trgm.sh /docker-entrypoint-initdb.d/
COPY install-wbt-cc.sh /docker-entrypoint-initdb.d/

COPY webitel.sh /docker-entrypoint-initdb.d/
