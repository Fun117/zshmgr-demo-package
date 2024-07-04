#!/bin/bash

# Detect OS
OS=$(uname -s)

# Move to the directory of the script
cd "$(dirname "$0")"

# Installation directory
case $OS in
Linux* | Darwin*)
  INSTALL_DIR="/usr/local/bin"
  ;;
MINGW* | MSYS* | CYGWIN*)
  INSTALL_DIR="/usr/bin"
  ;;
*)
  echo "Unsupported OS: $OS"
  exit 1
  ;;
esac

# Copy executable file
echo "Installing demo.sh to $INSTALL_DIR..."
sudo cp bin/demo.sh $INSTALL_DIR/demo
sudo chmod +x $INSTALL_DIR/demo
echo "zshmgr-demo-package has been installed. You can now use the 'demo' command."
