#! /bin/sh
set -e

echo
echo "Run pytest"
echo
docker-compose exec django pytest

echo
echo "Run isort"
echo
docker-compose exec django isort --check

echo
echo "Run autopep8"
echo
docker-compose exec django autopep8 --exit-code --diff -r .

echo
echo "Run flake8"
echo
docker-compose exec django flake8

echo
echo "Run pylama"
echo
docker-compose exec django pylama

echo
echo "Run safety"
echo
docker-compose exec django safety check

echo
echo "Run bandit"
echo
docker-compose exec django bandit -r . -x ./tests/
