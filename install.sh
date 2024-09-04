echo "Welcome Hashir!"
echo "It's time to setup your new mac."


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

# brews 
brew install gh
# vs code 
brew install --cask visual-studio-code
# android studio
brew install --cask android-studio
# google chrome
brew install --cask google-chrome
# install rectangle app
brew install --cask rectangle

# https://mac.install.guide/ruby/13
brew install ruby

brew install --cask cocoapods


# todo
# install node, flutter vscode, xcode, xcode commandline tools, android studio 
# arc browser 

# Flutter
# https://docs.flutter.dev/get-started/install/macos
# https://stackoverflow.com/questions/65259300/detect-apple-silicon-from-command-line

if [[ $(arch) == 'arm64' ]]; then
    sudo softwareupdate --install-rosetta --agree-to-license
    echo M1
fi

git clone https://github.com/flutter/flutter.git -b stable
which flutter
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
sudo xcodebuild -runFirstLaunch
sudo xcodebuild -license




echo "Finished"
