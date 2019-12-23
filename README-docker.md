# Docker devel environment

```
docker-compose exec db /app/docker/postgres/db_init.sh
```

# Migracions

```
docker-compose exec django python3 manage.py migrate
```

# Crear admin

```
docker-compose exec django python3 manage.py shell -c "from django.contrib.auth.models import User;User.objects.create_superuser('admin', 'tech@microdisseny.com', 'admin')"
```

## Production

Generate secret key to use in production

```
python manage.py generatesecretkey
```

## Common django commands

```
python manage.py makemessages -l {{ 2 letter language code}}
python manage.py compilemessages
```
