#!/bin/sh

echo "::: cvmfs-config..."
cvmfs_config setup

echo "::: mounting FUSE..."
mount -a
echo "::: mounting FUSE... [done]"
