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
	screen \
	wget \
	pwgen \
	curl \
	tree \
	tmux \
	yt-dlp \
	ffmpeg \
	imagemagick \
	pyenv \
	docker \
	ag \
	ansible \
	hudochenkov/sshpass/sshpass/sshpass

# Terminalに色を付ける
mv ./src/dot.zshrc ~/.zshrc

# emacsの設定
unzip ~/Downloads/hhost.zip
cp ~/Downloads/hhost/resouce/init/dot.ssh/secret/mse_.emacs.d ~/.ssh/secret/

git clone github:yamasound/.emacs.d
cd .emacs.d; git checkout macos_11
ln -s .emacs.d/misc/.screenrc ~/
