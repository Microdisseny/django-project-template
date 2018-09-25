#!/bin/bash
SCRIPTDIR=`dirname "$BASH_SOURCE"`
MANAGE="$SCRIPTDIR/../manage.py"

ARGS=${@:-tests}  # By default only run tests in the tests folder

export ENVIRONMENT_NAME=test
python -Wall $MANAGE test "$@"
