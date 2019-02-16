#!/bin/sh
git pull origin master
yarn install
yarn build --release
yarn run sequelize db:migrate --url "$DATABASE_URL"
service docker-ndo restart