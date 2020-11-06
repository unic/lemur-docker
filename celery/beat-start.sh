#!/bin/bash
CURRENT_USER=$(id -u)
CURRENT_GROUP=$(id -g)

echo "Starting celery beat with user $CURRENT_USER and group $CURRENT_GROUP"
echo "Configured log_level: ${CELERY_LOG_LEVEL:-info}"

/usr/local/src/lemur/venv/bin/celery -A lemur.common.celery beat --loglevel=${CELERY_LOG_LEVEL:-info}
