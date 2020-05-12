from django.conf import settings
from django.contrib import admin

# from django.urls import path

# from .views import custom_view


class CustomAdminSite(admin.AdminSite):
    site_header = settings.ADMIN_SITE_HEADER
    site_title = settings.ADMIN_SITE_TITLE
    index_title = settings.ADMIN_INDEX_TITLE

    # def get_urls(self):
    #     urls = super().get_urls()
    #     my_urls = [
    #         path('custom_view/<parameter>', self.admin_view(custom_view), name='custom_view')
    #     ]
    #     return my_urls + urls
