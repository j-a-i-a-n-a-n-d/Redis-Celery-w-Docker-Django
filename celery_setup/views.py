from django.shortcuts import render, HttpResponse
from .tasks import sleepy, send_mail_task
# Create your views here.


def index(request):
    send_mail_task.delay(10)
    return HttpResponse("Email with Celery Task Worked!")
