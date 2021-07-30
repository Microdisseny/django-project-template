from django.conf import settings
from django.contrib import admin

# from django.urls import path

# from .views import custom_view


class CustomAdminSite(admin.AdminSite):
    site_header = settings.ADMIN_SITE_HEADER
    site_title = settings.ADMIN_SITE_TITLE
    index_title = settings.ADMIN_INDEX_TITLE
    site_url = settings.SITE_URL

    def each_context(self, request):
        context = super().each_context(request)
        context['DOCUMENTATION_URL'] = settings.DOCUMENTATION_URL
        context['DOCUMENTATION_TITLE'] = settings.DOCUMENTATION_TITLE
        return context

    # def get_urls(self):
    #     urls = super().get_urls()
    #     my_urls = [
    #         path('custom_view/<parameter>', self.admin_view(custom_view), name='custom_view')
    #     ]
    #     return my_urls + urls
