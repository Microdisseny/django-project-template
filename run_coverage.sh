export ENVIRONMENT_NAME=test
coverage run \
  --omit='manage.py','*migrations*','django_project/wsgi.py','django_project/settings-devel.py','django_project/settings-test.py' \
  --source=. manage.py test tests \
  && coverage report -m --skip-covered
