#!/bin/bash
/usr/local/src/lemur/venv/bin/celery -A lemur.common.celery worker --concurrency 10 -E -n lemurworker1@%%h --loglevel=info
