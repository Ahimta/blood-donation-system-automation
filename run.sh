#!/usr/bin/env bash

# Usage: sh run.sh <backend-path> <log-path>
mongod &
echo $! > $2/mongod.pid

cd $1
npm run start &
echo $! > $2/app.pid
