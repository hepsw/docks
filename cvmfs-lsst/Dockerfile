##
## hepsw/cvmfs-lsst
## A container where CernVM-FS is up and running
##
FROM hepsw/cvmfs-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root
ENV HOME /root
ENV VO_LSST_SW_DIR       /cvmfs/lsst.in2p3.fr

## make sure FUSE can be enabled
RUN if [[ ! -e /dev/fuse ]]; then mknod -m 666 /dev/fuse c 10 229; fi

WORKDIR /root

RUN mkdir -p /cvmfs/lsst.in2p3.fr && \
    echo "lsst.in2p3.fr /cvmfs/lsst.in2p3.fr cvmfs defaults 0 0" >> /etc/fstab

ADD dot-bashrc              $HOME/.bashrc
ADD lsst-pub-key            /etc/cvmfs/keys/lsst.in2p3.fr
ADD lsst-default-local      /etc/cvmfs/default.local
ADD lsst-cvmfs-configl      /etc/cvmfs/config.d/lsst.in2p3.fr

RUN chmod 0444 /etc/cvmfs/keys/lsst.in2p3.fr.pub && \
    chmod 0644 \
     /etc/cvmfs/default.local \
     /etc/cvmfs/config.d/lsst.in2p3.fr.conf

## make the whole container seamlessly executable
ENTRYPOINT ["/bin/bash"]

## EOF

