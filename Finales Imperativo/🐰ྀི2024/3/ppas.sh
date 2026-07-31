#!/bin/sh
DoExitAsm ()
{ echo "An error occurred while assembling $1"; exit 1; }
DoExitLink ()
{ echo "An error occurred while linking $1"; exit 1; }
echo Assembling p1
/usr/bin/as --64 -o 3.o   3.s
if [ $? != 0 ]; then DoExitAsm p1; fi
rm 3.s
echo Linking 3
OFS=$IFS
IFS="
"
/usr/bin/ld -b elf64-x86-64 -m elf_x86_64  --build-id    -s  -L. -o 3 -T link167063.res -e _start
if [ $? != 0 ]; then DoExitLink 3; fi
IFS=$OFS
