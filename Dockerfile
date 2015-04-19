# docker image to run PXbrowser scripts from /srv/data

# https://github.com/phusion/baseimage-docker
FROM phusion/baseimage:0.9.16
MAINTAINER Thibault de Malliard <tdemalliard+docker@gmail.com>

# Set correct time.
ENV TZ America/Montreal

#################################
#### apt-get cacher
RUN echo 'Acquire::http { Proxy "http://172.17.42.1:3142"; };' >> /etc/apt/apt.conf.d/01proxy && \
    apt-get -q update && \
    apt-get upgrade -qy

#################################
#### install python2.7
RUN apt-get install -qy \
	python-pip \
	build-essential \
	python-dev

#################################
#### install python packages
RUN  pip install numpy

RUN apt-get install -qy \
	liblapack-dev \
	libatlas-dev \
	gfortran
RUN  pip install scipy

RUN  pip install pandas
RUN  pip install flask
RUN  pip install ipython

RUN  apt-get install -qy \
	libffi-dev
RUN  pip install cairosvg

RUN  pip install querystring-parser

RUN apt-get install -qy \
	sqlite3 \
	libsqlite3-dev
RUN pip install pysqlite