#python image from dockerhub
FROM python:3.8-alpine

#set environment variables
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
RUN apk update && apk add python3-dev gcc libc-dev

#setting the directories for the project
WORKDIR /myworkdir

#copying the requirements file to the workdir
COPY requirements.txt /myworkdir/

#installing the requirements
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

#copying the project files to the workdir
COPY . /myworkdir/

#command to run the server
#CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
RUN chmod +x /myworkdir/entrypoints/server-entrypoint.sh
RUN chmod +x /myworkdir/entrypoints/worker-entrypoint.sh
