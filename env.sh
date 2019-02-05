#!/usr/bin/env bash

export NGINX_RESTART="no"
export NGINX_EXTERNAL_PORT=8100
export PHP_FPM_RESTART="no"
export CRON_RESTART="no"
export MYSQL_RESTART="no"
export MYSQL_ROOT_PASSWORD="FddFdgjhj6fGr%54llk"
export MYSQL_INNODB_BUFFER_POOL_SIZE=256M
export MYSQL_INNODB_LOG_FILE_SIZE=256M
export MYSQL_INNODB_LOG_BUFFER_SIZE=16M
export MYSQL_INNODB_FLUSH_LOG_AT_TRX_COMMIT=2
export MYSQL_QUERY_CACHE_LIMIT=2M
export MYSQL_QUERY_CACHE_SIZE=100M
export MYSQL_KEY_BUFFER_SIZE=64M
export MYSQL_MAX_ALLOWED_PACKET=128M
export MYSQL_SQL_MODE="NO_AUTO_CREATE_USER"
export MYSQL_INIT_CONNECT="SET NAMES utf8;SET collation_connection = utf8_unicode_ci;"
export MYSQL_CHARACTER_SET_SERVER="utf8"
export MYSQL_COLLATION_SERVER="utf8_unicode_ci"
export MYSQL_PROMPT="\u@\h [\d] > "

export MYSQL_NAME="gameinsightgift"
export MYSQL_USER="gameinsightgift"
export MYSQL_PASSWORD="1234"
export MYSQL_HOST="mysql"

export MYSQL_DUMP="docker-compose run project mysqldump "${MYSQL_NAME}" -u"${MYSQL_USER}" --password="${MYSQL_PASSWORD}" -h"${MYSQL_HOST}""
export MYSQL_RESTORE_ROOT="docker-compose run project mysql -uroot --password="${MYSQL_ROOT_PASSWORD}" -h"${MYSQL_HOST}""
export MYSQL_RESTORE="docker-compose run project mysql "${MYSQL_NAME}" -u"${MYSQL_USER}" --password="${MYSQL_PASSWORD}" -h"${MYSQL_HOST}""
export MYSQL_DUMP_SKIP="Using a password on the command line interface can be insecure"
