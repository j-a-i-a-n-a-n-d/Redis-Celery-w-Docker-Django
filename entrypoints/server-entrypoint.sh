#!/bin/sh
until cd /myworkdir
do
    echo "Waiting for server volume..."
done

python manage.py runserver 0.0.0.0:8000