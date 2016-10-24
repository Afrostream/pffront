#!/bin/sh

export DATABASE_URL=postgres://postgres:postgres@`host afrostreampostgres | grep "has address" | cut -f4 -d' '`:5432/postgres
APP_PATH="/usr/src/app"

cd "${APP_PATH}"
if [ ! -d "${APP_PATH}" ]
then
  echo "npm install all modules..."
  npm install
fi

export

echo "running npm run dev..."
npm run dev
