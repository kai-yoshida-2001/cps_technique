#!/bin/bash

# Homebrewの更新
brew update
brew upgrade

# pyenvのインストール
brew install pyenv
pyenv -V

# .zshrcへの追記
export PYENV_ROOT="$HOME/.pyenv" >> ~/.zshrc
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH" >> ~/.zshrc
eval "$(pyenv init -)" >> ~/.zshrc
