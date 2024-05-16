#!/bin/bash

# スクリプトのディレクトリに移動
cd "$(dirname "$0")"

# インストールディレクトリ
INSTALL_DIR="/usr/local/bin"

# 実行可能ファイルをコピー
echo "Installing demo.sh to $INSTALL_DIR..."
sudo cp bin/demo.sh $INSTALL_DIR/demo
sudo chmod +x $INSTALL_DIR/demo
echo "zshmgr-demo-package has been installed. You can now use the 'demo' command."
