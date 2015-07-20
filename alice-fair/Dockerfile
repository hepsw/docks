##
## hepsw/alice-fair
## A container where all dependencies for FairRoot development are
## installed.
##
FROM hepsw/alice-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root
ENV HOME /root
ENV PYTHONSTARTUP=$HOME/.pythonrc.py
ENV SIMPATH=/opt/alice/sw/externals

RUN mkdir -p          /build/build-fair
ADD fair-config.cache /build/fair-config.cache

RUN git clone git://github.com/FairRootGroup/FairSoft /build/fair-soft && \
	cd /build/fair-soft && \
	./configure.sh /build/fair-config.cache && \
	/bin/rm -rf /build/fair-soft

RUN git clone git://github.com/FairRootGroup/FairRoot /build/fair-root && \
	cd /build/build-fair && \
	cmake -DCMAKE_INSTALL_PREFIX=/opt/alice/sw /build/fair-root && \
	make && \
	make install && \
	/bin/rm -rf /build

WORKDIR /opt/alice

ADD http://cern.ch/binet/sw/dist/cubied /usr/bin/cubied
ADD dot-pythonrc.py         $HOME/.pythonrc.py

RUN chmod +x /usr/bin/cubied

## make the whole container seamlessly executable
ENTRYPOINT ["/usr/bin/cubied"]
CMD ["bash"]

## EOF

