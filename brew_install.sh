#!/bin/bash
#Installs brew, brew cask, brew packages and apps

brew_packages=(
	'nodejs' 
	'mongodb'
)

brew_casks=(
	'google-chrome'
	'firefox'
	'spectacle'
	'slack'
	'phpstorm'
	'webstorm'
	'sublime-text'
)

echo 'Install brew...'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo 'Install brew packages...'

for package in ${brew_packages[@]}
do
	echo 'Installing' $package
	brew install $package
done

echo 'Install brew cask...'
brew install caskroom/cask/brew-cask

echo 'Install apps...'

for app in ${brew_casks[@]}
do
	echo 'Installing' $app
	brew cask install $app
done
