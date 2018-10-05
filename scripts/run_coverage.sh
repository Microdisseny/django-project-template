#!/bin/bash
SCRIPTDIR="$( cd "$(dirname "$BASH_SOURCE")" ; pwd -P )"
MANAGE="$SCRIPTDIR/../manage.py"

export ENVIRONMENT_NAME=test
coverage run \
  --omit='manage.py','*migrations*','django_project/wsgi.py','django_project/settings-devel.py','django_project/settings-test.py' \
  --source=. $MANAGE test tests \
  && coverage report -m --skip-covered
