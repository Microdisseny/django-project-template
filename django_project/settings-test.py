SECRET_KEY = '13p5$sz7_4g-a2^e$5=e&hxz$b=c6dr-beml*ubcwpc(u5ixe%'

# needed if using spatialite
SPATIALITE_LIBRARY_PATH = 'mod_spatialite'

DATABASES['default'] = {
    'ENGINE': 'django.db.backends.sqlite3',
    # 'ENGINE': 'django.contrib.gis.db.backends.spatialite',
    'NAME': 'test.db'
}

# https://www.caktusgroup.com/blog/2013/06/26/media-root-and-django-tests/
MEDIA_ROOT = os.path.join(BASE_DIR, 'tests', 'media')
MEDIA_URL = '/media/'
