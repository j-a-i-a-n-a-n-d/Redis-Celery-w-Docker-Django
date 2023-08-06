#!/bin/sh
until cd /myworkdir
do
    echo "Waiting for server volume..."
done

pwd 
celery --app dj_celery_redis_docker worker -l info 
