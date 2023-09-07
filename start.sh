#!/bin/bash

if [[ -z "$1" || "$1" == "-h" ]]; then
    echo "
    Not found command
    --deploy        =   Start all service
    --remove        =   Delete All container
    --add-package   =   Start all service with re-build
    "
    exit 1
fi

if [ "$1" == "--deploy" ]; then
    echo "Wait pull Airflow Images..."
    docker pull ghcr.io/ezynook/airflow-web:2.7.0 > /dev/null
    echo "Wait pull MySQL Images..."
    docker pull ghcr.io/ezynook/airflow-db:2.7.0 > /dev/null

    echo "Check all file..."
    if [[  -z "$(ls | grep 'docker-compose')" && -z "$(ls | grep 'Dockerfile')"  ]]; then
        echo "Dockerfile & docker-compose not found!"
        exit 1
    fi
    echo "Starting Airflow..."
    sleep 5
    docker-compose up -d > /dev/null
    echo "All Services Running...."
    echo "
    -----Checking Service-----
    $ docker ps
    "
elif [ "$1" == "--remove" ]; then
    if [[  -n "$(docker ps | grep 'airflow')" || -z "$(docker ps | grep 'airflow_db')"  ]]; then
        docker-compose down > /dev/null
        echo "Remove Container Successully!...."
        exit 0
    fi
elif [ "$1" == "--add-package" ]; then
    echo "Wait pull Airflow Images..."
    docker pull ghcr.io/ezynook/airflow-web:2.7.0 > /dev/null
    echo "Wait pull MySQL Images..."
    docker pull ghcr.io/ezynook/airflow-db:2.7.0 > /dev/null

    echo "Check all file..."
    if [[  -z "$(ls | grep 'docker-compose')" && -z "$(ls | grep 'Dockerfile')"  ]]; then
        echo "Dockerfile & docker-compose not found!"
        exit 1
    fi
    echo "Starting Airflow..."
    sleep 5
    docker-compose -f docker-compose-build.yml up -d > /dev/null
    echo "All Services Running...."
    echo "
    -----Checking Service-----
    $ docker ps
    "
fi
