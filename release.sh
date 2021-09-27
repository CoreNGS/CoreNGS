#!/bin/sh
set -e

echo "Running CoreNGS Release Compiler"

runmakefiles(){
    make buildworld buildkernel
    cd ./release
    make obj
    make real-release NODOCS=1 NOPORTS=1 NOSRC=1 
}

if [ -z "${1}" ]; then
    echo "DEBUG: Using current dir"
    cd corengs-src
    runmakefiles
else
    echo "DEBUG: Using dir ${1}"
    cd ${1}
    runmakefiles
fi