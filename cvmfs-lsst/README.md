hepsw/cvmfs-lsst
=================

A docker container with CVMFS installed, running and configured with LSST s/w.
This container has been derived from instructions of [airnandez/lsst-cvmfs](https://github.com/airnandez/lsst-cvmfs)

## Usage

Once the container has been built or pulled from the docker-index:

```sh
$ docker run -h dev --privileged -i -t hepsw/cvmfs-lsst
::: mounting FUSE...
```

Do note the required `--privileged` option (because of FUSE)

