hepsw/cvmfs-lz
=================

A docker container with CVMFS installed, running and configured with Lux-Zeplin (LZ) s/w.

## Usage

Once the container has been built or pulled from the docker-index:

```sh
$ docker run -h dev -ti --privileged hepsw/cvmfs-lz /bin/bash
::: mounting FUSE...
Repository cernvm-prod.cern.ch is already mounted on /cvmfs/cernvm-prod.cern.ch
Repository sft.cern.ch is already mounted on /cvmfs/sft.cern.ch
Repository lz.opensciencegrid.org is already mounted on /cvmfs/lz.opensciencegrid.org
::: mounting FUSE... [done]
running [/etc/cvmfs/run-cvmfs.sh]... [done]
now running main go-process...
running [/bin/bash]...
```

Do note the required `--privileged` option (because of FUSE)
