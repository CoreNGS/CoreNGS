#!/bin/sh
set -e

echo "Running GetSrc"

export git="git clone git@github.com:CoreNGS"

getdirfromgit (){
    ${git}/core .
    ${git}/bin
    ${git}/cddl
    ${git}/contrib
    ${git}/crypto
    ${git}/etc
    ${git}/gnu # We want to eventually get rid of this
    ${git}/include
    ${git}/kerberos5
    ${git}/lib
    ${git}/libexec
    ${git}/release
    ${git}/rescue
    ${git}/sbin
    ${git}/secure
    ${git}/share
    ${git}/stand
    ${git}/sys
    ${git}/targets
    ${git}/tools
    ${git}/usr.bin
    ${git}/usr.sbin
}

if [ -z "${1}" ]; then
    echo "DEBUG: Using current dir"
    mkdir -pv corengs-src && cd corengs-src 
    getdirfromgit
    ls
else
    echo "DEBUG: Using dir ${1}"
    cd ${1}
    getdirfromgit
    ls
fi