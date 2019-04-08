#!/usr/bin/env bash

PACKAGE_NAME=$1

if [ "${PACKAGE_NAME}" = "" ]
then
  echo "usage: $(basename -- $0) <package-name>"
  exit 1
fi

git clone "https://aur.archlinux.org/${PACKAGE_NAME}.git"

