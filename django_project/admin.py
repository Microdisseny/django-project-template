# from django.contrib import admin
from django.contrib.admin.apps import AdminConfig


class CustomAdminConfig(AdminConfig):
    default_site = 'django_project.admin-site.CustomAdminSite'
    name = 'django.contrib.admin'
