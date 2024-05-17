#!/bin/bash

# Move to the directory of the script
cd "$(dirname "$0")"

# Installation directory
INSTALL_DIR="/usr/local/bin"

# Copy executable file
echo "Uninstalling demo.sh to $INSTALL_DIR..."
sudo rm bin/demo.sh $INSTALL_DIR/demo
sudo chmod +x $INSTALL_DIR/demo
echo "zshmgr-demo-package has been uninstalled."
