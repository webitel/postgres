FROM postgres:11-alpine
LABEL maintainer="Vitaly Kovalyshyn"

ENV POSTGRES_DB webitel
ENV POSTGRES_USER opensips
ENV POSTGRES_PASSWORD webitel

COPY install-pgcrypto.sh /docker-entrypoint-initdb.d/
COPY install-uuid-ossp.sh /docker-entrypoint-initdb.d/
COPY install-pg-trgm.sh /docker-entrypoint-initdb.d/

