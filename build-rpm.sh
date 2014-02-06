#!/bin/bash

PACKAGE_NAME=python-cb-pysaml2

if ! which fpm > /dev/null 2>&1; then
  echo "'fpm' tool not found, attempting an automagic install..."
  sudo gem install fpm || exit 1
fi

fpm -s python -t rpm -n $PACKAGE_NAME -p dist/ $@ setup.py
