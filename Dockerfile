FROM python:3.7-alpine
MAINTAINER Omer Wolf

ENV PYTHONUNBUFFERDE 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

## For security
RUN adduser -D user
USER user