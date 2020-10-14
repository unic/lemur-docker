#!/bin/bash
/usr/local/src/lemur/venv/bin/celery -A lemur.common.celery beat --loglevel=info
