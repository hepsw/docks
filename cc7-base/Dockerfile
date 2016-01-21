##
## hepsw/cc7-base is a WIP image for CERN CentOS-7
##
FROM centos:7.1.1503
MAINTAINER Sebastien Binet "binet@cern.ch"

# add CERN CentOS yum repo
ADD http://linux.web.cern.ch/linux/centos7/CentOS-CERN.repo /etc/yum.repos.d/CentOS-CERN.repo
ADD http://linuxsoft.cern.ch/cern/centos/7.1.1503/os/x86_64/RPM-GPG-KEY-cern /tmp/RPM-GPG-KEY-cern

RUN /usr/bin/rpm --import /tmp/RPM-GPG-KEY-cern && \
    /bin/rm /tmp/RPM-GPG-KEY-cern

# RUN /usr/bin/yum groups mark convert && \
#     /usr/bin/yum --enablerepo=*-testing clean all && \
#     /usr/bin/yum groupinstall --skip-broken -y 'CERN Base Tools' && \
#     /usr/bin/yum groupinstall --skip-broken -y --exclude libwbclient.i686 'Software Development Workstation (CERN Recommended Setup)' && \
#     /usr/bin/yum --enablerepo=*-testing clean all

RUN yum update -y && \
	yum swap -y fakesystemd systemd && \
	yum clean all

ENV container docker

RUN yum -y install systemd systemd-libs dbus

ADD dbus.service /etc/systemd/system/dbus.service
RUN systemctl enable dbus.service

RUN (cd /lib/systemd/system/sysinit.target.wants/; \
	for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
	rm -f /lib/systemd/system/multi-user.target.wants/*;\
	rm -f /etc/systemd/system/*.wants/*;\
	rm -f /lib/systemd/system/local-fs.target.wants/*; \
	rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
	rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
	rm -f /lib/systemd/system/basic.target.wants/*;\
	rm -f /lib/systemd/system/anaconda.target.wants/*;

VOLUME [ "/sys/fs/cgroup" ]

CMD ["/usr/lib/systemd/systemd"]

## EOF
