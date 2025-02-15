#!/bin/bash

# emacsの設定
unzip ~/Downloads/hhost.zip
cp ~/Downloads/hhost/resouce/init/dot.ssh/secret/mse_.emacs.d ~/.ssh/secret/

git clone github:yamasound/.emacs.d
cd .emacs.d; git checkout macos_11
ln -s .emacs.d/misc/.screenrc ~/

