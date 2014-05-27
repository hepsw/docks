FROM ubuntu
MAINTAINER Sebastien Binet "binet@cern.ch"

# install a few dependencies
RUN apt-get install -y \
	git rinse sudo tar

RUN git clone \
	git://github.com/sbinet/docker-containers \
	/docker-containers

RUN mkdir /build && \
	cd /build && \
	/docker-containers/mkimage-slc.sh
