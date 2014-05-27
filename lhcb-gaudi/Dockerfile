##
## hepsw/docks/lhcb-gaudi
## A container where the GAUDI software stack has been installed
##
FROM hepsw/docks/lhcb-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root
ENV HOME /root

ENV MYSITEROOT /opt/lhcb-sw
ENV CMTCONFIG x86_64-slc6-gcc48-opt

## install (source+binaries)
RUN pkr install GAUDI_v25r1_`echo $CMTCONFIG| tr "-" "_"`

## clean-up
RUN /bin/rm -rf $MYSITEROOT/{tmp,targz} && \
    mkdir $MYSITEROOT/{tmp,targz}

## temporary fixup for ROOT-6 install leaking into regular ROOT-5 install
RUN /bin/rm -rf $MYSITEROOT/lcg/releases/ROOT/v5-99-*

WORKDIR /root

## EOF

