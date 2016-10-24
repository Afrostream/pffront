#!/bin/sh

APP_PATH="/usr/src/app"

cd "${APP_PATH}"
if [ ! -d "${APP_PATH}" ]
then
  echo "npm install all modules..."
  npm install
fi

echo "running npm run dev..."
npm run dev
