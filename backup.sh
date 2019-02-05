#!/usr/bin/env bash

source env.sh

BACKUPS_DIR_CURRENT="backups/"`date +%Y-%m-%d-%H-%M-%S`

mkdir -p ${BACKUPS_DIR_CURRENT}

${MYSQL_DUMP} | grep -v "${MYSQL_DUMP_SKIP}" > ${BACKUPS_DIR_CURRENT}/dbdump.sql
