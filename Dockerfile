FROM ghcr.io/ezynook/apache-airflow/airflow:2.8.0-pgsql
MAINTAINER Pasit Y.

COPY ./requirement.txt /requirement.txt
RUN pip install --no-cache-dir -r /requirement.txt
RUN rm -f /requirement.txt