#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root";
   exit 1;
fi
wget https://people.rit.edu/zdw7287/files/orbslam2ios.zip;
unzip orbslam2ios.zip;
mv orbslam2ios/dependency orbslamios/;
mv orbslam2ios/opencv2.framework orbslamios/;
rm -r __MACOSX;
rm -r orbslam2ios/;
rm orbslam2ios.zip;
