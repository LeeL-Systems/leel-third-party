
#!/bin/bash
clear

# Location and Definitions
# - - - - - - - - - - - - - - - -

cd "$(dirname "$0")"
current_dir=$(pwd)

echo ""
echo "### Configuring CppLint ###"

echo ""
echo "--- Installing required components ---"
sudo apt-get -y install python-dev

echo ""
echo "--- Linkning CppLint File ---"
bin_dir="${HOME}/bin"
echo "User bin Dir: ${bin_dir}"

installation_dir="${bin_dir}"
echo "Installation Dir: ${installation_dir}"
mkdir -p "${installation_dir}"

cd "../styleguide/cpplint" 
cpplint_dir="$(pwd)"
echo "CppLint Dir: ${cpplint_dir}"

ln -s "${cpplint_dir}/cpplint.py" "${installation_dir}/cpplint.py" 

echo ""
echo "--- Installation Summary ---"
echo "Installation Dir: ${installation_dir}"


