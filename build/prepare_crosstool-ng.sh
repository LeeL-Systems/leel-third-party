#!/bin/bash
clear

# Location and Definitions
# - - - - - - - - - - - - - - - -

cd "$(dirname "$0")"
current_dir=$(pwd)

echo ""
echo "### Configuring crosstool-ng utility ###"

echo ""
echo "--- Installing required components ---"

sudo apt-get install bison cvs flex gperf texinfo automake libtool help2man gawk libtool-bin libncurses5-dev

echo ""
echo "--- Installing crosstool-ng ---"

cd ../crosstool-ng/installer

bin_dir="${HOME}/bin"
echo "User bin Dir: ${bin_dir}"

installation_dir="${bin_dir}/leel-toolchain/tools/crosstool-ng_1.22.0"
echo "Installation Dir: ${installation_dir}"
mkdir -p "${installation_dir}"


./configure -prefix=${installation_dir}
make
make install

ln -s "${installation_dir}/bin/ct-ng" "${bin_dir}/ct-ng"

export PATH="${PATH}:${installation_dir}/bin"

echo ""
echo "--- Installation Summary ---"
echo "Installation Dir: ${installation_dir}"


