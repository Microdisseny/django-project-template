# Django project

Install base dependencies:

```
pip install -r requirements.txt
```

## Local development
In the project folder "django_project" copy settings-devel-example.py to
settings-devel.py and customise as needed

## Production

Generate secret key to use in production

```
python manage.py generatesecretkey
```


## Project specific configuration


## Standard configuration

DEBUG = False

## Common vendor apps

django-cors-headers
https://github.com/ottoyiu/django-cors-headers

easy-thumbnails
https://github.com/SmileyChris/easy-thumbnails

django-fancybox
https://github.com/bashu/django-fancybox

django-groupadmin-users
https://github.com/Microdisseny/django-groupadmin-users

django-import-export
https://github.com/django-import-export/django-import-export

django-loginas
https://github.com/skorokithakis/django-loginas

django-oauth-toolkit
https://github.com/evonove/django-oauth-toolkit

django-rest-framework
https://github.com/encode/django-rest-framework

django-theme-microdisseny
https://github.com/Microdisseny/django-theme-microdisseny
