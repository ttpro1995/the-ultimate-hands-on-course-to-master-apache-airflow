#!/usr/bin/env bash

# Initiliase the metadatabase
airflow initdb

# Run the scheduler in background
airflow scheduler &> /dev/null &

# Run the web server in foreground (for docker logs)
exec airflow webserver
