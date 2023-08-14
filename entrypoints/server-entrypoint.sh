#!/bin/sh
until cd /myworkdir
do
    echo "Waiting for server volume..."
done

# python manage.py runserver 0.0.0.0:8000
# gunicorn --bind 0.0.0.0:8000 --workers 3 dj_celery_redis_docker.wsgi:application
gunicorn --bind 0.0.0.0:8000 --workers 3 --limit-request-line 8190 --limit-request-fields 1000 dj_celery_redis_docker.wsgi:application

