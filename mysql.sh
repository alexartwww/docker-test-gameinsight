#!/usr/bin/env bash

source env.sh

docker-compose run project mysql ${MYSQL_NAME} -u${MYSQL_USER} --password=${MYSQL_PASSWORD} -h${MYSQL_HOST} --prompt="${MYSQL_PROMPT}"
