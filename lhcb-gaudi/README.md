hepsw/lhcb-gaudi
================

A docker container with Gaudi installed.

## Usage

Once the container has been built or pulled from the docker-index

```sh
$ docker run -h dev -i -t hepsw/lhcb-gaudi
WARNING : using environment variable CMTCONFIG for cmtconfig
ALWAYS  : Configuring LbScripts v8r1p1 from /opt/lhcb-sw/lhcb/LBSCRIPTS/LBSCRIPTS_v8r1p1
Configuring LbScripts v8r1p1 from /opt/lhcb-sw/lhcb/LBSCRIPTS/LBSCRIPTS_v8r1p1
Creating a /home/lhcb/.rhosts file to use CMT
Joel.Closier@cern.ch
 --- a new cmtuser directory has been created in your HOME directory
********************************************************************************
*                         ---- LHCb Login v8r1p1 ----                          *
*      Building with gcc48 on slc6 x86_64 system (x86_64-slc6-gcc48-opt)       *
********************************************************************************
 --- User_release_area is set to /home/lhcb/cmtuser
 --- LHCBPROJECTPATH is set to:
    /opt/lhcb-sw/lhcb
    /opt/lhcb-sw/lcg/releases
    /opt/lhcb-sw/lcg/external
--------------------------------------------------------------------------------
Using CMTPROJECTPATH = '/opt/lhcb-sw/lhcb:/opt/lhcb-sw/lcg/releases'
Environment for LbScripts v8r1p1 ready.
(Compat v1r17 from /opt/lhcb-sw/lhcb/COMPAT/COMPAT_v1r17,
 LbScripts v8r1p1 from /opt/lhcb-sw/lhcb/LBSCRIPTS/LBSCRIPTS_v8r1p1,
 LCGCMT 74root6 from /opt/lhcb-sw/lcg/releases/LCGCMT/LCGCMT_74root6,
 Compat v1r17 from /opt/lhcb-sw/lhcb/COMPAT/COMPAT_v1r17)

[lhcb@dev ~]$ SetupProject GAUDI v26r1
Configuring Gaudi v26r1 from /opt/lhcb-sw/lhcb/GAUDI/GAUDI_v26r1
Using CMTPROJECTPATH = '/home/lhcb/cmtuser:/opt/lhcb-sw/lhcb:/opt/lhcb-sw/lcg/releases'
Environment for Gaudi v26r1 ready.
(Compat v1r17 from /opt/lhcb-sw/lhcb/COMPAT/COMPAT_v1r17,
 Gaudi v26r1 from /opt/lhcb-sw/lhcb/GAUDI/GAUDI_v26r1)

[lhcb@dev ~]# time gaudirun.py $GAUDIEXAMPLESROOT/options/TupleEx.py
[...]
NTupleSvc            INFO NTuples saved successfully
ApplicationMgr       INFO Application Manager Finalized successfully
ApplicationMgr       INFO Application Manager Terminated successfully

real	1m11.335s
user	0m42.060s
sys	0m29.170s
