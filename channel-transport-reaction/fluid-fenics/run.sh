#!/usr/bin/env bash
set -e -u

. ../../tools/log.sh
exec > >(tee --append "$LOGFILE") 2>&1

python3 -m venv --system-site-package .venv
. .venv/bin/activate
pip install -r requirements.txt


python3 fluid.py

close_log
