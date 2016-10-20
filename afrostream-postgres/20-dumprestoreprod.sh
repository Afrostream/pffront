#!/bin/sh

PGPASSWORD="p6o70uurl15iblacuu0g042e742" pg_dump -Fc --no-acl --no-owner --dbname=d8kcdisl77do4k --host=ec2-54-217-234-109.eu-west-1.compute.amazonaws.com --username=u9u17sot1un0hr --port 5552 > /tmp/dump-prod.pgsql
PGPASSWORD="postgres" pg_restore -Fc --no-acl --no-owner --dbname=postgres --host=localhost --username=postgres --port 5432 /tmp/dump-prod.pgsql
