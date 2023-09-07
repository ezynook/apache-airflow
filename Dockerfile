FROM ghcr.io/ezynook/airflow-web:2.7.0
MAINTAINER Pasit Y.

COPY ./requirement.txt /requirement.txt
RUN pip install --no-cache-dir -r /requirement.txt
RUN rm -f /requirement.txt