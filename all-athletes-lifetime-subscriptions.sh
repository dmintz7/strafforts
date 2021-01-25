#!/bin/bash

# There was an error running the rake caused by the space in the subscription name.
# Instead of digging through Ruby, I change the name of the subscription, run rake then change it back

cd /app/
/usr/local/bin/rails fetch:latest
/usr/local/bin/rails $(/usr/local/bin/rails runner /app/athletes-missing-subscriptions-step1.rb)
/usr/local/bin/rails runner /app/athletes-missing-subscriptions-step2.rb