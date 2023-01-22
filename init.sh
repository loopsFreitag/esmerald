#!/bin/bash

#check .env
if [ ! -f .env ]
then
    touch .env
    cp .env.example .env
    echo '.env file created!'
fi

echo 'starting settings...'

docker-compose up

echo 'finishing settings...'