#!/bin/bash

startPath=$(pwd)
Folder=$(dirname $(dirname $(realpath $0)))
rp=$(realpath $0)
name=$0

echo this is the cwd ${startPath}
echo this is 2 dir down ${Folder}
echo this is the bash name${name}
echo this is the whole real path ${rp}

qemu-system-x86_64 boot.bin
