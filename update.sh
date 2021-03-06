#!/bin/bash

rm Packages*;dpkg-scanpackages -m debs/ /dev/null > Packages && bzip2 -c9 Packages > Packages.bz2 && gzip -c9 Packages > Packages.gz && currentDate=`date +"%D %T"` && git add . && git commit -a -S -m "Updated Packages on ${currentDate}" && git push && exit;
