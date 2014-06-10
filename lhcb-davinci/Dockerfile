##
## hepsw/lhcb-davinci
## A container where the LHCb software stack (up to DaVinci) has been installed
##
FROM hepsw/lhcb-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root
ENV HOME /root

ENV MYSITEROOT /opt/lhcb-sw
ENV CMTCONFIG x86_64-slc6-gcc48-opt

## install (source+binaries)
RUN lbpkr install DAVINCI_v34r1_`echo $CMTCONFIG| tr "-" "_"`

## FIXME: install manually QMTestFiles (bug in rpm deps)
RUN lbpkr install PARAM_QMTestFiles

## clean-up
RUN /bin/rm -rf $MYSITEROOT/{tmp,targz} && \
    mkdir $MYSITEROOT/{tmp,targz}

## temporary fixup for ROOT-6 install leaking into regular ROOT-5 install
RUN /bin/rm -rf $MYSITEROOT/lcg/releases/ROOT/v5-99-*

WORKDIR /root

## EOF

