#! /bin/sh

banner_first=1
function banner () {
  if [ $banner_first -gt 0 ];
  then
    banner_first=0
  else
    echo
    echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  fi
  echo
  echo "* $1"
  echo "  $2"
  echo
}

set -e

banner "Run pytest" "docker-compose exec django pytest"
docker-compose exec django pytest

banner "Run diff-cover" "docker-compose exec django diff-cover coverage.xml --html-report report.html --fail-under 80"
docker-compose exec django diff-cover coverage.xml --html-report report.html --fail-under 80

banner "Run diff-quality" "docker-compose exec django diff-quality --violations=pycodestyle --fail-under 100"
docker-compose exec django diff-quality --violations=pycodestyle --fail-under 100

banner "Run diff-quality" "docker-compose exec django diff-quality --violations=pyflakes --fail-under 100"
docker-compose exec django diff-quality --violations=pyflakes --fail-under 100

banner "Run diff-quality" "docker-compose exec django diff-quality --violations=flake8 --fail-under 100"
docker-compose exec django diff-quality --violations=flake8 --fail-under 100

banner "Run diff-quality" "docker-compose exec django diff-quality --violations=pylint --fail-under 90 --options='--rcfile=setup.cfg'"
docker-compose exec django diff-quality --violations=pylint --fail-under 90 --options='--rcfile=setup.cfg'

banner "Run makemigrations" "docker-compose exec django python3 manage.py makemigrations --check --dry-run"
docker-compose exec django python3 manage.py makemigrations --check --dry-run

banner "Run isort" "docker-compose exec django isort . --check --diff"
docker-compose exec django isort . --check --diff

banner "Run autopep8" "docker-compose exec django autopep8 --exit-code --diff -r ."
docker-compose exec django autopep8 --exit-code --diff -r .

banner "Run flake8" "docker-compose exec django flake8"
docker-compose exec django flake8

banner "Run pylama" "docker-compose exec django pylama"
docker-compose exec django pylama

set +e

banner "Run pip list --outdated" "docker-compose exec django pip list --outdated"
docker-compose exec django pip list --outdated

banner "Run safety" "docker-compose exec django safety check"
docker-compose exec django safety check

banner "Run bandit" "docker-compose exec django bandit -r . -x ./tests/"
docker-compose exec django bandit -r . -x ./tests/

banner "Run pylint" "docker-compose exec django pylint --rcfile=setup.cfg \$(git ls-files -- '*.py' ':!:*/migrations*') --load-plugins pylint_django --load-plugins pylint_django.checkers.migrations --load-plugins pylint_pytest"
docker-compose exec django pylint --rcfile=setup.cfg $(git ls-files -- '*.py' ':!:*/migrations*') --load-plugins pylint_django --load-plugins pylint_django.checkers.migrations --load-plugins pylint_pytest

banner "Run mypy" "docker-compose exec django mypy ."
docker-compose exec django mypy .
