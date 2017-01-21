#!/usr/bin/env bash

# Usage: sh shutdown.sh <log-path>

kill `cat $1/app.pid` &
kill `cat $1/mongod.pid` &
