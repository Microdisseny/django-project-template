from django.conf import settings
from django.contrib import admin

from .views import dashboard_test

class CustomAdminSite(admin.AdminSite):
    site_header = settings.ADMIN_SITE_HEADER
    site_title = settings.ADMIN_SITE_TITLE
    index_title = settings.ADMIN_INDEX_TITLE
