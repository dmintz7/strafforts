#!/bin/bash

if [ ! -f /app/.env ]; then
	echo "Initializing Strava Configuration File"
	touch /app/.env
	echo STRAVA_API_CLIENT_ID=$STRAVA_API_CLIENT_ID >> /app/.env
	echo STRAVA_API_CLIENT_SECRET=$STRAVA_API_CLIENT_SECRET >> /app/.env
fi

rm /app/tmp/pids/server.pid

echo "Initializing Database"
bundle exec rails db:create && bundle exec rails db:migrate && bundle exec rails db:seed
service redis-server stop

echo "Starting Server"
yarn start