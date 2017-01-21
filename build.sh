#!/usr/bin/env bash

# Usage: sh build.sh <backend-path> <frontend-path>

cd $2
npm install
npm run jspm install
npm run build

cd $1
npm install
git checkout -B heroku master

cp -r $2/dist/* $1/public
