from celery import shared_task
from time import sleep
from django.core.mail import send_mail


@shared_task
def sleepy(duration):
    sleep(duration)
    return None


@shared_task
def send_mail_task(duration):
    sleep(duration)
    send_mail(
        'Celery Task Worked!',
        'Celery Task Worked!',
        'jai01anand@gmail.com',
        ['jai5789anand@gmail.com'])
