import multiprocessing
from distutils.util import strtobool
import os

bind = os.environ.get("GUNICORN_BIND", "0.0.0.0:8000")
workers = int(os.getenv("WEB_CONCURRENCY", multiprocessing.cpu_count() * 2))
threads = int(os.getenv("PYTHON_MAX_THREADS", 3))
accesslog = "-"
access_log_format = "%(h)s %(l)s %(u)s %(t)s '%(r)s' %(s)s %(b)s '%(f)s' '%(a)s' in %(M)sms"
errorlog = "-"
loglevel = "info"
reload = bool(strtobool(os.getenv("WEB_RELOAD", False)))
limit_request_line = int(os.getenv("LIMIT_REQUEST_LINE", 8190))
limit_request_fields = int(os.getenv("LIMIT_REQUEST_FIELDS", 1000))
app_module = "dj_celery_redis_docker.wsgi:application"
