#!/bin/bash
SCRIPTDIR="$( cd "$(dirname "$BASH_SOURCE")" ; pwd -P )"
MANAGE="$SCRIPTDIR/../manage.py"

ARGS=${@:-tests}  # By default only run tests in the tests folder

export ENVIRONMENT_NAME=test
python -Wall $MANAGE test "$ARGS"
