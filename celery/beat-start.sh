#!/bin/bash
echo "Starting celery beat with user $(whoami)($(id -u)) and group $(groups celery | awk -F":" '{print $2}' | awk '{print $1}')($(id -g))"
echo -e "Configured log_level: ${CELERY_LOG_LEVEL:-info}\n\n"

/usr/local/src/lemur/venv/bin/celery -A lemur.common.celery beat --loglevel=${CELERY_LOG_LEVEL:-info}
