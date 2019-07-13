#!/bin/bash

#set -x

# This script is an utility to automate the building of the nomad package.

sudo apt-get -y install dpkg-dev debhelper dh-systemd devscripts libwww-perl

rm -f ../nomad*.orig.tar.gz
uscan -v --download-current-version
FILE=`ls -1 ../nomad*.orig.tar.*`
tar xvf ../nomad*.orig.tar.* --strip 0

dpkg-buildpackage -us -uc -b
debian/rules clean
