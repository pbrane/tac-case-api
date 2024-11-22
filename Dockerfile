# Set the base image
FROM postgres:17

COPY db_init/create.sql /docker-entrypoint-initdb.d/
