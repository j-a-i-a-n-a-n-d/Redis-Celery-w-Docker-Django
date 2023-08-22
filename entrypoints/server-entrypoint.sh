#!/bin/sh
until cd /myworkdir
do
    echo "Waiting for server volume..."
done

gunicorn -c dj_celery_redis_docker/gunicorn.py dj_celery_redis_docker.wsgi:application

