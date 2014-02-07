#!/bin/bash

PACKAGE_NAME=python-cb-pysaml2

# Using fpm seemed like a good idea but turned out to be a fail because
# while it's awesome at adjusting package names, it only allows adding
# dependencies based on its own automatic guesses which apparently are
# not always correct.  1) it doesn't allow passing in an alternate
# RPM dependency list and 2) it doesn't read bdist_rpm fields out of 
# setup.cfg
#
#if ! which fpm > /dev/null 2>&1; then
#  echo "'fpm' tool not found, attempting an automagic install..."
#  sudo gem install fpm || exit 1
#fi
#
#fpm -s python -t rpm -n $PACKAGE_NAME -p dist/ $@ setup.py

python setup.py bdist_rpm
