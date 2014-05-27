hepsw/lhcb-gaudi
================

A docker container with Gaudi installed.

## Usage

Once the container has been built or pulled from the docker-index

```sh
$ docker run -h dev -i -t hepsw/lhcb-gaudi bash
WARNING : using environment variable CMTCONFIG for cmtconfig
WARNING : Copying /etc/skel/.bash_profile to /root/.bash_profile
ALWAYS  : Configuring LbScripts v7r10p4 from /opt/lhcb-sw/lhcb/LBSCRIPTS/LBSCRIPTS_v7r10p4
Configuring LbScripts v7r10p4 from /opt/lhcb-sw/lhcb/LBSCRIPTS/LBSCRIPTS_v7r10p4
Creating a /root/.rhosts file to use CMT
Joel.Closier@cern.ch
 --- a new cmtuser directory has been created in your HOME directory
********************************************************************************
*                         ---- LHCb Login v7r10p4 ----                         *
*      Building with gcc48 on slc6 x86_64 system (x86_64-slc6-gcc48-opt)       *
********************************************************************************
 --- User_release_area is set to /root/cmtuser
 --- LHCBPROJECTPATH is set to:
    /opt/lhcb-sw/lhcb
    /opt/lhcb-sw/lcg/releases
    /opt/lhcb-sw/lcg/external
--------------------------------------------------------------------------------
Using CMTPROJECTPATH = '/opt/lhcb-sw/lhcb:/opt/lhcb-sw/lcg/releases'
Environment for LbScripts v7r10p4 ready.
(Compat v1r17 from /opt/lhcb-sw/lhcb/COMPAT/COMPAT_v1r17,
 LbScripts v7r10p4 from /opt/lhcb-sw/lhcb/LBSCRIPTS/LBSCRIPTS_v7r10p4,
 LCGCMT 68 from /opt/lhcb-sw/lcg/releases/LCGCMT/LCGCMT_68,
 Compat v1r17 from /opt/lhcb-sw/lhcb/COMPAT/COMPAT_v1r17)

[root@dev ~]# SetupProject GAUDI v25r1
Configuring Gaudi v25r1 from /opt/lhcb-sw/lhcb/GAUDI/GAUDI_v25r1
Using CMTPROJECTPATH = '/root/cmtuser:/opt/lhcb-sw/lhcb:/opt/lhcb-sw/lcg/releases'
Environment for Gaudi v25r1 ready.
(Compat v1r17 from /opt/lhcb-sw/lhcb/COMPAT/COMPAT_v1r17,
 Gaudi v25r1 from /opt/lhcb-sw/lhcb/GAUDI/GAUDI_v25r1)

[root@dev ~]# time gaudirun.py $GAUDIEXAMPLESROOT/options/TupleEx.py
[...]
NTupleSvc            INFO NTuples saved successfully
ApplicationMgr       INFO Application Manager Finalized successfully
ApplicationMgr       INFO Application Manager Terminated successfully

real	1m11.335s
user	0m42.060s
sys	0m29.170s
