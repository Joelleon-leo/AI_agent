#!/bin/sh

if [ "$1" = "serve" ]; then
    exec uvicorn app.main:app \
        --host 0.0.0.0 \
        --port 8080
else
    exec "$@"
fi