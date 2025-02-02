#!/bin/bash

# GUIアプリケーションのインストール
brew install --cask \
	 google-chrome \
	 visual-studio-code \
	 zoom \
	 vlc \
	 mi \
	 gimp \
	 windows app \
	 zoom \

# CLIパッケージのインストール
brew install \
	 emacs \
	 wget \
	 pwgen \
	 curl \
	 tree \
	 tmux \
	 yt-dlp \
	 pyenv \
	 docker \
	 ag

# Terminalに色を付ける
mv ./src/dot.zshrc ~/.zshrc

# emacsの設定
unzip ./src/dot.emacs.d.zip
mkdir -p ~/.emacs.d; cp -r dot.emacs.d/* ~/.emacs.d/
brew install aspell --lang=en_US
echo "lang en_US" > ~/.aspell.conf

# screenの設定
cd; echo escape ^Tt > .screenrc
