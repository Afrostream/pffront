#!/bin/sh

PGPASSWORD="p6o70uurl15iblacuu0g042e742" psql -h localhost -d postgres -U postgres -p 5432 -a -w -f /tmp/postgis.sql
