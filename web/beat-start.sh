#!/bin/bash

cd /usr/local/src/lemur/

export PATH=/usr/local/src/lemur/venv/bin:${PATH}

/usr/local/src/lemur/venv/bin/celery -A lemur.common.celery beat
