FROM ubuntu
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
COPY chefdk_0.9.0-1_amd64.deb /chefdk_0.9.0-1_amd64.deb
RUN dpkg -i /chefdk_0.9.0-1_amd64.deb
RUN apt-get update && \
    apt-get install -y git
