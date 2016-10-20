FROM postgres:9.4

RUN apt-get -y update && apt-get -y install postgresql-9.4-postgis-2.2 && rm -rf /var/lib/apt/lists/*
COPY postgis.sql /tmp
COPY 10-activatepostgis.sh /docker-entrypoint-initdb.d/
COPY 20-dumprestoreprod.sh /docker-entrypoint-initdb.d/
