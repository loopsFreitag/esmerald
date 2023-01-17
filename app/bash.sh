#!/bin/bash

APP=app.py
if [ ! -f "$APP" ]; then
    shiny create .
fi

chmod -R 777 .

uvicorn app:app --host 0.0.0.0 --port 8080