##
## hepsw/cvmfs-cc7-base
## A container where CernVM-FS is up and running
##
FROM hepsw/cc7-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root
ENV HOME /root

## make sure FUSE can be enabled
RUN if [[ ! -e /dev/fuse ]]; then mknod -m 666 /dev/fuse c 10 229; fi

# install cvmfs repos
ADD etc-yum-cernvm.repo /etc/yum.repos.d/cernvm.repo

# Install rpms
RUN yum update -y && yum -y install \
    cvmfs \
    freetype fuse \
    glibc-headers \
    man nano openssh-server openssl098e libXext libXpm \
    time \
    ; \
    yum clean all

RUN mkdir -p \
    /cvmfs/cernvm-prod.cern.ch \
    /cvmfs/sft.cern.ch

RUN echo "cernvm-prod.cern.ch /cvmfs/cernvm-prod.cern.ch cvmfs defaults 0 0" >> /etc/fstab && \
    echo "sft.cern.ch         /cvmfs/sft.cern.ch cvmfs defaults 0 0" >> /etc/fstab

WORKDIR /root

## add files last (as this invalids caches)
ADD dot-pythonrc.py  $HOME/.pythonrc.py

ADD etc-cvmfs-default-local /etc/cvmfs/default.local
ADD etc-cvmfs-domain-local  /etc/cvmfs/domain.d/cern.ch.local

ADD run-cvmfs.sh /etc/cvmfs/run-cvmfs.sh
RUN chmod uga+rx /etc/cvmfs/run-cvmfs.sh

## make the whole container seamlessly executable
#ENTRYPOINT ["/bin/bash"]

RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
 
RUN systemctl enable autofs && systemctl start autofs

VOLUME [ "/cvmfs" ]
CMD ["/usr/sbin/init"]


