echo "Welcome Hashir!"
echo "It's time to sync your mac."
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
echo "- Screencapture: Save screenshots to the Downloads"
defaults write com.apple.screencapture location -string "$HOME/Downloads"
echo "- Screencapture: Save screenshots in PNG format"
defaults write com.apple.screencapture type -string "png"
echo "- Terminal: setup terminal flavour"
# opening hsterm automatically imports it in terminal preferences.
open ~/toast-mac/hsterm.terminal          
defaults write com.apple.terminal "Startup Window Settings" -string "hsterm" 
defaults write com.apple.terminal "Default Window Settings" -string "hsterm" 
# Disable the sound effects on boot
# sudo nvram SystemAudioVolume=" " 
# set default browser 
echo "mac defaults updated."

# `ln` creates symbolic links. 
# https://man7.org/linux/man-pages/man1/ln.1.html
# Symlinks tend to like full paths
# -s make symbolic links instead of hard links
# -f remove existing destination files
# -v print name of each linked file

echo "Installing your personal config dotfiles"

ln -sfv ~/toast-mac/dotfiles/.gitconfig ~
ln -sfv ~/toast-mac/dotfiles/.gitignore_global ~
ln -sfv ~/toast-mac/dotfiles/.zshrc ~
ln -sfv ~/toast-mac/RectangleConfig.json ~/Library/Application Support/Rectangle/RectangleConfig.json