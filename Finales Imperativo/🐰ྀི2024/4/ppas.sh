#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Assembling p1
/usr/bin/as --64 -o 4.o   4.s
if [ $? != 0 ]; then DoExitAsm p1; fi
rm 4.s
echo Linking 4
OFS=$IFS
IFS="
"
/usr/bin/ld -b elf64-x86-64 -m elf_x86_64  --build-id    -s  -L. -o 4 -T link176765.res -e _start
if [ $? != 0 ]; then DoExitLink 4; fi
IFS=$OFS
