#!/bin/bash

echo "Checking for directory /docker-entrypoint.d"

if [ -d "/docker-entrypoint.d" ]; then
    echo "Running scripts in /docker-entrypoint.d"
    run-parts --regex '\.sh$' /docker-entrypoint.d
fi

cron &

exec apachectl -D FOREGROUND
