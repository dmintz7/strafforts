#!/bin/bash

echo "Initializing Strava Configuration File"
touch /app/.env
echo STRAVA_API_CLIENT_ID=$STRAVA_API_CLIENT_ID >> /app/.env
echo STRAVA_API_CLIENT_SECRET=$STRAVA_API_CLIENT_SECRET >> /app/.env

echo "Initializing Database"
bundle exec rails db:create && bundle exec rails db:migrate && bundle exec rails db:seed

echo "Starting Server"
yarn
yarn start