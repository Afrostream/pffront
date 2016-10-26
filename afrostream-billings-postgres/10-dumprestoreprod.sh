#!/bin/sh

PGPASSWORD="4TwV23GXYZCyDhtJ5ybAyYeKEK" pg_dump -Fc --no-acl --no-owner --dbname=d8pun490ac8ria --host=ec2-54-247-167-90.eu-west-1.compute.amazonaws.com --username=tjmgcqkrixvkzu --port 5432 > /tmp/dump-prod.pgsql
PGPASSWORD="postgres" pg_restore -Fc --no-acl --no-owner --dbname=postgres --host=localhost --username=postgres --port 5432 /tmp/dump-prod.pgsql
