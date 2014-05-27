##
## binet/lhcb-base
## A container where the means to install the LHCb software stack have been installed
##
FROM binet/slc-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root
ENV HOME /root

ENV MYSITEROOT /opt/lhcb-sw
ENV CMTCONFIG x86_64-slc6-gcc48-opt

RUN mkdir -p $MYSITEROOT

## install some system dependencies
RUN yum install -y \
    bzip2 \
    freetype \
    tar \
    which

## retrieve install
RUN curl -O -L http://cern.ch/binet/sw/dist/pkr && \
    chmod +x ./pkr && \
    mv ./pkr /usr/bin/. && \
    pkr version

## install LBSCRIPTS (for LbLogin)
RUN pkr install LBSCRIPTS

## clean-up
RUN /bin/rm -rf $MYSITEROOT/{tmp,targz} && \
    mkdir $MYSITEROOT/{tmp,targz}

WORKDIR /root

## add files last (as this invalids caches)
ADD dot-pythonrc.py  $HOME/.pythonrc.py
ADD dot-bashrc       $HOME/.bashrc

## EOF

