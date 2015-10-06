hepsw/alice-fair
================

A docker container with dependencies for `ALICE` `FairRoot` framework
development installed and the `FairRoot` framework compiled.

## Usage

```sh
sh> docker run -it -h dev hepsw/alice-fair

2015/10/06 10:51:40 ::: starting cubie-daemon [0.1.20150512]...
2015/10/06 10:51:40 running [bash]...
System during compilation: Ubuntu 14.04.3 LTS
                           x86_64
System now               : Ubuntu 14.04.3 LTS
                           x86_64
root@dev:/opt/alice# mkdir /data && cd /data
root@dev:/data# root -b /opt/alice/sw/share/fairbase/example/Tutorial1/run_tutorial1.C 
[...]
<DartMeasurement name="MaxMemory" type="numeric/double">61.8008</DartMeasurement>
<DartMeasurement name="CpuLoad" type="numeric/double">0.777096</DartMeasurement>


Output file is .//tutorial1_TGeant3_pions.mc_p2.000_t0_n10.root
Parameter file is .//tutorial1_TGeant3_pions.params_p2.000_t0_n10.root
Real time 0.617684 s, CPU time 0.48s

Macro finished successfully.
root [1] .q
root@dev:/data# ll
total 64
drwxr-xr-x 2 root root  4096 Oct  6 10:52 ./
drwxr-xr-x 1 root root  4096 Oct  6 10:51 ../
-rw-r--r-- 1 root root  9256 Oct  6 10:52 geofile_full.root
-rw-r--r-- 1 root root  2729 Oct  6 10:52 gphysi.dat
-rw-r--r-- 1 root root 20071 Oct  6 10:52 tutorial1_TGeant3_pions.mc_p2.000_t0_n10.root
-rw-r--r-- 1 root root 16909 Oct  6 10:52 tutorial1_TGeant3_pions.params_p2.000_t0_n10.root
```

## Usage with graphics

`root.exe` and some of the `FairROOT` examples need graphics, so the incantation
is a bit more involved than with the "basic" example...

### On Linux

```sh
sh> docker run -it -h dev \
 -e DISPLAY=$DISPLAY \
 -v /tmp/.X11-unix:/tmp/.X11-unix \
 hepsw/alice-fair


### On MacOSX

It's basically the same except for the graphics/X11 part, which is a bit more
involved:
 https://github.com/docker/docker/issues/8710#issuecomment-72669844
