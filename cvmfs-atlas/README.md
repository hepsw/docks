hepsw/cvmfs-atlas
=================

A docker container with CVMFS installed, running and configured with ATLAS s/w.

## Usage

Once the container has been built or pulled from the docker-index:

```sh
$ docker run -h dev --privileged -i -t hepsw/cvmfs-atlas
::: mounting FUSE...
CernVM-FS: running with credentials 499:497
CernVM-FS: loading Fuse module... done
CernVM-FS: mounted cvmfs on /cvmfs/cernvm-prod.cern.ch
CernVM-FS: running with credentials 499:497
CernVM-FS: loading Fuse module... done
CernVM-FS: mounted cvmfs on /cvmfs/sft.cern.ch
CernVM-FS: running with credentials 499:497
CernVM-FS: loading Fuse module... done
CernVM-FS: mounted cvmfs on /cvmfs/atlas.cern.ch
CernVM-FS: running with credentials 499:497
CernVM-FS: loading Fuse module... done
CernVM-FS: mounted cvmfs on /cvmfs/atlas-condb.cern.ch
::: mounting FUSE... [done]
::: sourcing ALRB...
...Type localSetupAGIS to setup AGIS
...Type localSetupAtlantis to setup Atlantis
...Type localSetupDQ2Client to use DQ2 Client
...Type localSetupEmi to use emi
...Type localSetupFAX to use FAX
...Type localSetupGanga to use Ganga
...Type localSetupGcc to use alternate gcc
...Type localSetupPacman to use Pacman
...Type localSetupPandaClient to use Panda Client
...Type localSetupPyAMI to setup pyAMI
...Type localSetupPoD to setup Proof-on-Demand
...Type localSetupROOT to setup (standalone) ROOT
...Type localSetupDQ2Wrappers to setup DQ2Wrappers
...Type localSetupSFT to setup SFT packages
...Type localSetupXRootD to setup XRootD
...Type showVersions to show versions of installed software
...Type asetup to setup a release (changeASetup to change asetup version)
...Type rcSetup to setup an ASG release (changeRCSetup to change rcSetup ver.)
...Type diagnostics for diagnostic tools
...Type helpMe for more help
...Type printMenu to show this menu
Created /root/.asetup.  Please look and (optional) edit it.
::: sourcing ALRB... [done]

[root@dev ~]# asetup AtlasOffline,19.0.2,64

[root@dev ~]# athena.py AthExStoreGateExample/dflow_jobo.py
Mon May 26 12:04:52 EDT 2014
Preloading tcmalloc_minimal.so
Py:Athena            INFO including file "AthenaCommon/Preparation.py"
[...]
ChronoStatSvc.f...   INFO  Service finalized successfully 
ApplicationMgr       INFO Application Manager Finalized successfully
ApplicationMgr       INFO Application Manager Terminated successfully
Py:Athena            INFO leaving with code 0: "successful run"
```

Do note the required `--privileged` option (because of FUSE)

