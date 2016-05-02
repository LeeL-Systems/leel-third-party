#!/bin/bash
clear
cd "$(dirname "$0")"

# Definitions
# - - - - - - - - - - - - - - - -

echo ""
echo "### Preparing Boost Directory ###"

# Initialize Boost Submodules
# - - - - - - - - - - - - - - - -

echo ""
echo "Initializing sub-modules"

cd "../boost/"
git submodule init
git submodule update


