hepsw/lhcb-base
===============

`hepsw/lhcb-base` is a container where the strict minimum to install LHCb
software has been installed.

## Usage

```sh
$ docker run -h dev -i -t hepsw/lhcb-base
WARNING : using environment variable CMTCONFIG for cmtconfig
WARNING : Copying /etc/skel/.bash_profile to /root/.bash_profile
ERROR   : Cannot find project 'LCGCMT'
Cannot find project 'LCGCMT'
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
    /opt/lhcb-sw/lcg/external
--------------------------------------------------------------------------------

[root@dev ~]# pkr version
0.1-20140526

[root@dev ~]# pkr list GAUDI
pkr INFO    RPM DB in "/opt/lhcb-sw/var/lib/rpm"
repo INFO    checking availability of backend [RepositorySQLiteBackend]
repo INFO    repository [lcg] - chosen backend [*yum.RepositorySQLiteBackend]
repo INFO    checking availability of backend [RepositorySQLiteBackend]
repo INFO    repository [lhcbold] - chosen backend [*yum.RepositorySQLiteBackend]
repo INFO    checking availability of backend [RepositorySQLiteBackend]
repo INFO    repository [lhcb] - chosen backend [*yum.RepositorySQLiteBackend]
pkr INFO    rpm: Found "/bin/rpm"
GAUDI_v25r1_x86_64_slc6_gcc48_opt-1.0.0-1
GAUDI_v25r1-1.0.0-1
pkr INFO    Total matching: 2

[root@dev ~]# pkr install GAUDI_v25r1_x86_64_slc6_gcc48_opt-1.0.0-1
pkr INFO    RPM DB in "/opt/lhcb-sw/var/lib/rpm"
repo INFO    checking availability of backend [RepositorySQLiteBackend]
repo INFO    repository [lcg] - chosen backend [*yum.RepositorySQLiteBackend]
repo INFO    checking availability of backend [RepositorySQLiteBackend]
repo INFO    repository [lhcbold] - chosen backend [*yum.RepositorySQLiteBackend]
repo INFO    checking availability of backend [RepositorySQLiteBackend]
repo INFO    repository [lhcb] - chosen backend [*yum.RepositorySQLiteBackend]
pkr INFO    rpm: Found "/bin/rpm"
pkr INFO    installing RPM GAUDI_v25r1_x86_64_slc6_gcc48_opt 1.0.0 1
pkr INFO    installing GAUDI_v25r1_x86_64_slc6_gcc48_opt and dependencies
pkr INFO    found 94 RPMs to install:
pkr INFO    	[001/094] AIDA-3fe9f_3.2.1_x86_64_slc6_gcc48_opt-1.0.0-4
[...]
LHCBEXTERNALS_v68r0_x86_64_s##################################################
GAUDI_v25r1                 ##################################################
GAUDI_v25r1_x86_64_slc6_gcc4##################################################

[root@dev ~]# . /opt/lhcb-sw/LbLogin.sh 
[root@dev ~]# SetupProject GAUDI
Configuring Gaudi v25r1 from /opt/lhcb-sw/lhcb/GAUDI/GAUDI_v25r1
Using CMTPROJECTPATH = '/root/cmtuser:/opt/lhcb-sw/lhcb:/opt/lhcb-sw/lcg/releases'
Environment for Gaudi v25r1 ready.
(Compat v1r17 from /opt/lhcb-sw/lhcb/COMPAT/COMPAT_v1r17,
 Gaudi v25r1 from /opt/lhcb-sw/lhcb/GAUDI/GAUDI_v25r1)

[root@dev ~]# gaudirun.py $GAUDIEXAMPLESROOT/options/TupleEx.py
# setting LC_ALL to "C"
# --> Including file '/opt/lhcb-sw/lhcb/GAUDI/GAUDI_v25r1/GaudiExamples/options/TupleEx.py'
# <-- End of file '/opt/lhcb-sw/lhcb/GAUDI/GAUDI_v25r1/GaudiExamples/options/TupleEx.py'
ApplicationMgr    SUCCESS 
[...]
NTupleSvc            INFO NTuples saved successfully
ApplicationMgr       INFO Application Manager Finalized successfully
ApplicationMgr       INFO Application Manager Terminated successfully

real	1m9.496s
user	0m42.133s
sys	0m27.257s
```
