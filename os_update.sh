#!/bin/bash

# Homebrew のアップデート・アップグレード自動化
echo Start:brew update
brew update

echo Start:brew upgrade
brew upgrade

echo Start:brew cleanup
brew cleanup


# Mac OS アップデート・アップグレード自動化
check_update() {
	echo Search:New macOS Version

	updates=$(softwareupdate -l)

	if echo "$updates" | grep -q "*"; then
		echo "Find New Version:"
		echo "$updates"
		return 0
	else
		echo "Not Found New Version"
		return 1

	fi
}

install_update() {
	echo "Now installing..."
	echo "XXXX" | sudo -S softwareupdate -ia -R
}

if check_update; then
	install_update
else
	echo "macOS is latest"
fi
