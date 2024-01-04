FROM ghcr.io/ezynook/apache-airflow:2.2.4-mysql
MAINTAINER Pasit Y.

COPY ./requirement.txt /requirement.txt
RUN pip install --no-cache-dir -r /requirement.txt
RUN rm -f /requirement.txt