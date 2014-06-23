hepsw/cvmfs-lhcb
================

A docker container with CVMFS installed, running and configured with LHCb s/w.

## Usage

Once the container has been built or pulled from the docker-index:

```sh
$ docker run -h dev --privileged -i -t hepsw/cvmfs-lhcb
::: mounting FUSE...
CernVM-FS: running with credentials 499:497
CernVM-FS: loading Fuse module... done
CernVM-FS: mounted cvmfs on /cvmfs/cernvm-prod.cern.ch
CernVM-FS: running with credentials 499:497
CernVM-FS: loading Fuse module... done
CernVM-FS: mounted cvmfs on /cvmfs/sft.cern.ch
CernVM-FS: running with credentials 499:497
CernVM-FS: loading Fuse module... done
CernVM-FS: mounted cvmfs on /cvmfs/lhcb.cern.ch
::: mounting FUSE... [done]
::: sourcing LbLogin...
WARNING : using environment variable VO_LHCB_SW_DIR for sharedarea
WARNING : Copying /etc/skel/.bash_profile to /root/.bash_profile
ALWAYS  : Configuring LbScripts v7r10p4 from /cvmfs/lhcb.cern.ch/lib/lhcb/LBSCRIPTS/LBSCRIPTS_v7r10p4
Configuring LbScripts v7r10p4 from /cvmfs/lhcb.cern.ch/lib/lhcb/LBSCRIPTS/LBSCRIPTS_v7r10p4
Creating a /root/.rhosts file to use CMT
Joel.Closier@cern.ch
 --- a new cmtuser directory has been created in your HOME directory
********************************************************************************
*                         ---- LHCb Login v7r10p4 ----                         *
*      Building with gcc48 on slc6 x86_64 system (x86_64-slc6-gcc48-opt)       *
********************************************************************************
 --- User_release_area is set to /root/cmtuser
 --- LHCBPROJECTPATH is set to:
    /cvmfs/lhcb.cern.ch/lib/lhcb
    /cvmfs/lhcb.cern.ch/lib/lcg/releases
    /cvmfs/lhcb.cern.ch/lib/lcg/app/releases
    /cvmfs/lhcb.cern.ch/lib/lcg/external
--------------------------------------------------------------------------------
Using CMTPROJECTPATH = '/cvmfs/lhcb.cern.ch/lib/lhcb:/cvmfs/lhcb.cern.ch/lib/lcg/releases:/cvmfs/lhcb.cern.ch/lib/lcg/app/releases:/cvmfs/lhcb.cern.ch/lib/lcg/external'
Environment for LbScripts v7r10p4 ready.
(Compat v1r18 from /cvmfs/lhcb.cern.ch/lib/lhcb/COMPAT/COMPAT_v1r18,
 LbScripts v7r10p4 from /cvmfs/lhcb.cern.ch/lib/lhcb/LBSCRIPTS/LBSCRIPTS_v7r10p4,
 LCGCMT 68 from /cvmfs/lhcb.cern.ch/lib/lcg/releases/LCGCMT/LCGCMT_68,
 Compat v1r18 from /cvmfs/lhcb.cern.ch/lib/lhcb/COMPAT/COMPAT_v1r18)
::: sourcing LbLogin... [done]


[root@dev ~]# SetupProject GAUDI v25r1
Configuring Gaudi v25r1 from /cvmfs/lhcb.cern.ch/lib/lhcb/GAUDI/GAUDI_v25r1
Using CMTPROJECTPATH = '/root/cmtuser:/cvmfs/lhcb.cern.ch/lib/lhcb:/cvmfs/lhcb.cern.ch/lib/lcg/releases:/cvmfs/lhcb.cern.ch/lib/lcg/app/releases:/cvmfs/lhcb.cern.ch/lib/lcg/external'
Environment for Gaudi v25r1 ready.
(Compat v1r18 from /cvmfs/lhcb.cern.ch/lib/lhcb/COMPAT/COMPAT_v1r18,
 Gaudi v25r1 from /cvmfs/lhcb.cern.ch/lib/lhcb/GAUDI/GAUDI_v25r1)


[root@dev ~]# time gaudirun.py $GAUDIEXAMPLESROOT/options/TupleEx.py
[...]
NTupleSvc            INFO NTuples saved successfully
ApplicationMgr       INFO Application Manager Finalized successfully
ApplicationMgr       INFO Application Manager Terminated successfully

real	1m25.289s
user	0m42.597s
sys	0m27.490s
```

Do note the required `--privileged` option (because of FUSE)

