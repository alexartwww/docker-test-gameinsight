#!/usr/bin/env bash

source env.sh

BACKUPS_DIR_CURRENT="backups/"`ls -1r backups/ | head -1`

echo "Restoring from "${BACKUPS_DIR_CURRENT}
cat project/conf/init.sql | ${MYSQL_RESTORE_ROOT}
cat ${BACKUPS_DIR_CURRENT}"/dbdump.sql" | grep -v "${MYSQL_DUMP_SKIP}" | ${MYSQL_RESTORE}
echo "Done"
