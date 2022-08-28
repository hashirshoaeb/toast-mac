echo "Welcome Hashir!"
echo "It's time to configure your new mac."
echo "Sit back sir, grab a coffee and relax, I got this!!"

echo "Setting up your Mac..."

# Setting mac defaults
# To read the properties you can automate, just read the plist using app's idenfitier
# i.e.
# defaults read com.apple.finder
# reads the properties for finder app, and then you can write the once you wish to change
# https://github.com/mathiasbynens/dotfiles/blob/main/.macos

echo "Setting up mac defaults of your choice"
echo "- Finder: show hidden files by default"
defaults write com.apple.finder AppleShowAllFiles -bool true
echo "- Dock: move dock to the left side of screen"
defaults write com.apple.dock orientation left
echo "- Screencapture: Save screenshots to the desktop"
defaults write com.apple.screencapture location -string "$HOME/Desktop"
echo "- Screencapture: Save screenshots in PNG format"
defaults write com.apple.screencapture type -string "png"
echo "- Terminal: setup terminal flavour"
# opening hsterm automatically imports it in terminal preferences.
open ~/toast-mac/hsterm.terminal          
defaults write com.apple.terminal "Startup Window Settings" -string "hsterm" 
defaults write com.apple.terminal "Default Window Settings" -string "hsterm" 
# Disable the sound effects on boot
# sudo nvram SystemAudioVolume=" "  
echo "mac defaults updated."


echo "Checking for Oh My Zsh and install if we don't have it"
if test ! $(which omz); then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "OMZ is installed"
fi

echo "Check for Homebrew and install if we don't have it"
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    brew update
fi

# `ln` creates symbolic links. 
# https://man7.org/linux/man-pages/man1/ln.1.html
# Symlinks tend to like full paths
# -s make symbolic links instead of hard links
# -f remove existing destination files
# -v print name of each linked file

echo "Installing your personal config dotfiles"

ln -sfv ~/toast-mac/installables/.gitconfig ~
ln -sfv ~/toast-mac/installables/.gitignore_global ~
ln -sfv ~/toast-mac/installables/.zshrc ~

# todo
# install node, flutter vscode, xcode, xcode commandline tools, android studio 
# arc browser 

echo "Finished"
