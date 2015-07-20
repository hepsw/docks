##
## hepsw/alice-base
## A container where all dependencies for FairRoot development are
## installed.
##
FROM ubuntu
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root
ENV HOME /root
ENV PYTHONSTARTUP=$HOME/.pythonrc.py
ENV SIMPATH=/opt/alice/sw/externals

RUN apt-get update -y && \
	apt-get install -y \
	 cmake cmake-data g++ gcc gfortran \
	 build-essential make patch sed libx11-dev libxft-dev \
	 libxext-dev libxpm-dev libxmu-dev libglu1-mesa-dev \
	 libgl1-mesa-dev ncurses-dev curl bzip2 gzip unzip tar \
	 subversion git xutils-dev flex bison lsb-release \
	 python-dev libxml2-dev wget libssl-dev

RUN mkdir -p          /build
ADD fair-config.cache /build/fair-config.cache

RUN mkdir -p /opt/alice && \
	git clone git://github.com/FairRootGroup/FairSoft /build/fair-soft && \
	cd /build/fair-soft && \
	./configure.sh /build/fair-config.cache && \
	/bin/rm -rf /build/fair-soft

WORKDIR /opt/alice

ADD http://cern.ch/binet/sw/dist/cubied /usr/bin/cubied
ADD dot-pythonrc.py         $HOME/.pythonrc.py

RUN chmod +x /usr/bin/cubied

## make the whole container seamlessly executable
ENTRYPOINT ["/usr/bin/cubied"]
CMD ["bash"]

## EOF

