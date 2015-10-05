#!/bin/sh

echo "::: cvmfs-config..."
cvmfs_config setup || exit 1

echo "::: mounting FUSE..."
mount -a
echo "::: mounting FUSE... [done]"
