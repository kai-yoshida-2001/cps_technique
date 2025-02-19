#!/bin/bash

# GUIアプリケーションのインストール
brew install --cask\
	 visual-studio-code\
	 zoom\
	 vlc\
	 mi\
	 gimp\
	 windows-app

# CLIパッケージのインストール
brew install\
	 screen\
	 wget\
	 pwgen\
	 curl\
	 tree\
	 tmux\
	 yt-dlp\
	 ffmpeg\
	 imagemagick\
	 pyenv\
	 ag\
	 ansible

# Terminalに色を付ける
mv ./src/dot.zshrc ~/.zshrc

# pyenvの設定
export PYENV_ROOT="$HOME/.pyenv" >> ~/.zshrc
export PATH="$PYENV_ROOT/bin:$PATH" >> ~/.zshrc
eval "$(pyenv init --path)" >> ~/.zshrc
eval "$(pyenv init -)" >> ~/.zshrc
