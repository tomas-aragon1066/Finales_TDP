#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Linking 2
OFS=$IFS
IFS="
"
/usr/bin/ld.bfd -b elf64-x86-64 -m elf_x86_64     -s  -L. -o 2 -T link107716.res -e _start
if [ $? != 0 ]; then DoExitLink 2; fi
IFS=$OFS
