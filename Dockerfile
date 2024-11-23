# Set the base image
FROM postgres:17

COPY db_init/create.sql /docker-entrypoint-initdb.d/
RUN apt-get update && apt-get install -y reptyr dnsutils bind9-utils net-tools iproute2 iputils-ping iputils-tracepath ncat && apt-get clean && rm -rf /var/lib/apt/lists/*