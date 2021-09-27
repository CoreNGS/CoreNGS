#!/bin/sh
# So, you fucked up. Good job, run this to help clear
# all of the src files.

echo "Running CoreNGS Source Fixing"

killsrc(){
    rm -rf bin
    rm -rf cddl
    rm -rf contrib
    rm -rf crypto
    rm -rf etc 
    rm -rf gnu
    rm -rf include
    rm -rf kerberos5
    rm -rf lib 
    rm -rf libexec 
    rm -rf rescue
    rm -rf release
    rm -rf sbin
    rm -rf secure 
    rm -rf share
    rm -rf stand
    rm -rf sys 
    rm -rf targets 
    rm -rf tools 
    rm -rf usr.bin 
    rm -rf usr.sbin
    rm -rf *.inc 
    rm -rf *.inc1
    rm -rf *.libcompat 
    rm -rf *.md
    rm -rf *.mk
    rm -rf RELNOTES
    rm -rf UPDATING
    rm -rf COPYRIGHT
    rm -rf MAINTAINERS
    rm -rf Makefile
}

if [ -z "${1}" ]; then
    echo "DEBUG: Fixing current dir"
    killsrc
else
    echo "DEBUG: Fixing dir ${1}"
    cd ${1}
    killsrc
fi