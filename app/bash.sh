#!/bin/bash

shiny create .

chmod -R 777 .

uvicorn app:app --host 0.0.0.0 --port 8080