#!/bin/bash

# emacsの設定
unzip ~/Downloads/hhost.zip
cp ~/Downloads/hhost/resouce/init/dot.ssh/secret/mse_.emacs.d ~/.ssh/secret/

git clone github:yamasound/.emacs.d
cd .emacs.d; git checkout macos_11
ln -s .emacs.d/misc/.screenrc ~/

# sshの設定
unzip ~/Downloads/key\ pair-*.zip; mv key\ pair ~/.ssh
cd; chmod 700 .ssh
cd .ssh; chmod 600 config; chmod 700 secret; chmod 600 secret/*
cp ~/.ssh/pub/*@ylab.pub ~/.ssh/authorized_keys
