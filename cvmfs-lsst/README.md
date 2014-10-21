hepsw/cvmfs-lsst
=================

A docker container with CVMFS installed, running and configured with LSST s/w.
This container has been derived from instructions of [airnandez/lsst-cvmfs](https://github.com/airnandez/lsst-cvmfs)

## Usage

Once the container has been built or pulled from the docker-index:

```sh
$ docker run -h dev --privileged -i -t hepsw/cvmfs-lsst
::: mounting FUSE...
CVMFS_HTTP_PROXY required
CVMFS_HTTP_PROXY required
CernVM-FS: running with credentials 499:497
CernVM-FS: loading Fuse module... done
CernVM-FS: mounted cvmfs on /cvmfs/lsst.in2p3.fr
::: mounting FUSE... [done]

[root@dev ~]# cd /cvmfs/lsst.in2p3.fr/software/x86_64-slc6/lsst-v9.2/
[root@dev lsst-v9.2]# . loadLSST.sh 
Creating user data directory: /root/.eups

[root@dev lsst]# yum install -y git

[root@dev lsst]# git clone http://git.lsstcorp.org/contrib/demos/lsst_dm_stack_demo.git
Cloning into 'lsst_dm_stack_demo'...
remote: Counting objects: 495, done.
remote: Compressing objects: 100% (439/439), done.
remote: Total 495 (delta 111), reused 265 (delta 16)
Receiving objects: 100% (495/495), 544.16 MiB | 326.00 KiB/s, done.
Resolving deltas: 100% (111/111), done.
Checking connectivity... done.
[root@dev lsst]# cd lsst_dm_stack_demo
[root@dev lsst_dm_stack_demo]# ls
README               bin                            detected-sources_small.txt.expected
astrometry_net_data  detected-sources.txt.expected  input

[root@dev lsst_dm_stack_demo]# setup obs_sdss
[root@dev lsst_dm_stack_demo]# ./bin/demo.sh --small
Setting up: astrometry_net_data             Flavor: Linux64    Version: LOCAL:/lsst/lsst_dm_stack_demo/astrometry_net_data
: Loading config overrride file '/cvmfs/lsst.in2p3.fr/software/x86_64-slc6/lsst-v9.2/Linux64/obs_sdss/9.0+11/config/processCcd.py'
: Config override file does not exist: '/cvmfs/lsst.in2p3.fr/software/x86_64-slc6/lsst-v9.2/Linux64/obs_sdss/9.0+11/config/sdss/processCcd.py'
: input=/lsst/lsst_dm_stack_demo/input
: calib=None
: output=/lsst/lsst_dm_stack_demo/output_small

[...]
processCcd: Matching icSource and Source catalogs to propagate flags.
CameraMapper: Loading registry registry from output_small/_parent/registry.sqlite3

Processing completed successfully. The results are in detected-sources_small.txt.
```

Do note the required `--privileged` option (because of FUSE)

