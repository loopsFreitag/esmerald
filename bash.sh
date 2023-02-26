#!/bin/bash

source .env

APP=app/app.py
if [ ! -f "$APP" ]; then
    shiny create .
fi

#get info trough .env
wait_bd_connection(){
    while ! wget host.docker.internal:3309 --quiet; do 
        echo "waiting db conn..."
        sleep 1 
    done
}

#wait_bd_connection

echo "db conn established"

chmod -R 777 .

uvicorn app.app:app --host 0.0.0.0 --port 8080