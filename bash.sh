#!/bin/bash

source .env

APP=app/app.py
if [ ! -f "$APP" ]; then
    shiny create .
fi

#get info trough .env
wait_bd_connection(){
    while ! wget host.docker.internal:3309 -v; do 
        echo "waiting db conn..."
        sleep 1 
    done
}

wait_bd_connection

echo "db conn established"

chmod -R 777 .

cd app/

uvicorn app:app --host 0.0.0.0 --port ${APP_PORT}