hepsw/cvmfs-cms
=================

A docker container with CVMFS installed, running and configured with CMS s/w.

## Usage

Once the container has been built or pulled from the docker-index:

```sh
$ docker run -h dev --privileged -i -t hepsw/cvmfs-cms
::: mounting FUSE...
CernVM-FS: running with credentials 499:497
CernVM-FS: loading Fuse module... done
CernVM-FS: mounted cvmfs on /cvmfs/cernvm-prod.cern.ch
CernVM-FS: running with credentials 499:497
CernVM-FS: loading Fuse module... done
CernVM-FS: mounted cvmfs on /cvmfs/sft.cern.ch
CernVM-FS: running with credentials 499:497
CernVM-FS: loading Fuse module... done
CernVM-FS: mounted cvmfs on /cvmfs/cms.cern.ch
::: mounting FUSE... [done]
::: sourcing cmsset_default.sh...
::: sourcing cmsset_default.sh... [done]
[root@dev ~]# scram pro CMSSW CMSSW_7_2_0_pre2
[root@dev ~]# cd CMSSW_7_2_0_pre2/src
[root@dev src]# eval `scram run -sh`
[root@dev src]# cmsRun
cmsRun: No configuration file given.
For usage and an options list, please do 'cmsRun --help'.
```

Do note the required `--privileged` option (because of FUSE)

