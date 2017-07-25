FROM node:6.11.1

MAINTAINER Utposts <admin@utposts.com>
  
# Update 
RUN apt-get update

# Install Python.
RUN \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

# Install git, awscli
RUN \
  apt-get install -y git && pip install --upgrade awscli && \ 
  pip install --upgrade awsebcli==3.10.1
