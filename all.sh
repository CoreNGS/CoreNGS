#!/bin/sh
set -e

if [ -z "${1}" ]; then
    sh get-src.sh
    sh release.sh
else
    sh get-src.sh ${1}
    sh release.sh ${1}
fi