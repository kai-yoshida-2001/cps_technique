#!/bin/bash

name='UserName@MachinName'
mail='XXX.XXX@cps.akita-pu.ac.jp'

gui_apps=(
	'google-chrome'
	'zoom'
	'vlc'
	'mi'
	'gimp'
	'windows-app'
)

cli_apps=(
	'git'
	'emacs'
	'screen'
	'wget'
	'pwgen'
	'curl'
	'tree'
	'tmux'
	'yt-dlp'
	'ffmpeg'
	'imagemagick'
	'pyenv'
	'ag'
	'ansible'
	'ssh'
)

f_install_homebrew() {
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> ~/.zprofile
	eval $(/opt/homebrew/bin/brew shellenv)
}

f_color_in_terminal() {
	mv ./src/dot.zshrc ~/.zshrc
	source ~/.zshrc
}

f_install_gui_apps() {
	for gui_app in "${gui_apps[@]}"; do
		echo brew install --cask "$gui_app"
	done
}

f_install_cli_apps() {
	for cli_app in "${cli_apps[@]}"; do
		echo brew install "$cli_app"
	done
}

f_setting_pyenv() {
	echo '# pyenvの設定' >> ~/.zshrc
	echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
	echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
	echo 'eval "$(pyenv init --path)"' >> ~/.zshrc
	echo 'eval "$(pyenv init -)"' >> ~/.zshrc

	source ~/.zshrc

	pyenv install 3.11.11
	pyenv global 3.11.11
}

f_setting_git() {
	git config --global user.name "${name}"
	git config --global user.email "${mail}"

	git config --global core.editor 'emacs -nw'
	git config --global init.defaultBranch main
}

f_setting_screen() {
	echo "alias screen='/usr/local/Cellar/screen/5.0.1/bin/screen'" >> ~/.zshrc
}

f_setting_ssh() {
	cd; unzip ~/Downloads/key_pair-*.zip;
	mv key_pair .ssh;
	cd; chmod 700 .ssh;
	cd .ssh/; chmod 600 config; chmod 700 secret; chmod 600 secret/*
	cp ~/.ssh/pub/*@ylab.pub ~/.ssh/authorized_keys
}

####
f_color_in_terminal
f_install_gui_apps
f_install_cli_apps

####
#f_install_homebrew
f_setting_pyenv
f_setting_git
f_setting_screen
#f_setting_ssh
