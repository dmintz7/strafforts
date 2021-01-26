#!/bin/bash

if [ ! -f /app/.env ]; then
	echo "Initializing Strava Configuration File"
	touch /app/.env
	echo STRAVA_API_CLIENT_ID=$STRAVA_API_CLIENT_ID >> /app/.env
	echo STRAVA_API_CLIENT_SECRET=$STRAVA_API_CLIENT_SECRET >> /app/.env
fi

echo "Initializing Database"
bundle exec rails db:create && bundle exec rails db:migrate && bundle exec rails db:seed
python3 /app/run-bash.py

echo "Starting Server"
yarn start