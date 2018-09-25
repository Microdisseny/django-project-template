DEBUG = True

SECRET_KEY = '13p5$sz7_4g-a2^e$5=e&hxz$b=c6dr-beml*ubcwpc(u5ixe%'

AUTH_PASSWORD_VALIDATORS = []

ALLOWED_HOSTS = os.getenv('ALLOWED_HOSTS', '*').split(',')

APP_URL = '/'
STATIC_URL = '/static/'

if APP_URL == '/' or APP_URL == '':
    SESSION_COOKIE_NAME = 'sessionid_%s' % APP_NAME
    SESSION_COOKIE_PATH = '/'
else:
    SESSION_COOKIE_NAME = 'sessionid_%s' % APP_URL.replace('/', '_')
    SESSION_COOKIE_PATH = '%s' % '/'
