#!/bin/bash
clear

# Location and Definitions
# - - - - - - - - - - - - - - - -

cd "$(dirname "$0")"
current_dir=$(pwd)

echo ""
echo "### Configuring Raspberry Pi Toolchain ###"

toolchain_bin_dir="$(readlink -f "../raspberrypi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin/")"    
echo "Toolchain Dir: ${toolchain_bin_dir}"

if [ -d "${toolchain_bin_dir}"  ] && [[ ":$PATH:" != *":${toolchain_bin_dir}:"*  ]]
then

  echo "Raspberry Pi was not on the Path. Adding it"
  export PATH="${PATH:+"$PATH:"}${toolchain_bin_dir}"
  echo "Path variable: ${PATH}"

else

  echo "Raspberry Pi was already on the Path."

fi


