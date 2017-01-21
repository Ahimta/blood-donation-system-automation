#!/usr/bin/env bash

# Usage: sh deploy.sh <backend-path>

cd $1
heroku git:remote -a blood-donation-system0

git add public/
git commit -m "deploy"

git push --force heroku heroku:master
git checkout master