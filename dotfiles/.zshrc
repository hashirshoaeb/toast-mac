# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Add Visual Studio Code (code)
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin"

# fvm
# FVM_HOME=$HOME/fvm
# export PATH="$HOME/.fvm_flutter/bin:$PATH"

#  use fvm global command to set the default version
# Add Flutter
# export PATH="$PATH:$HOME/flutter/bin"
export PATH="$PATH:$HOME/fvm/default/bin"

# Flutter global packages
# export PATH="$PATH:$HOME/flutter/.pub-cache/bin"
export PATH="$PATH:$HOME/fvm/default/.pub-cache/bin"

# Xcode Flutter
# export FLUTTER_ROOT="$HOME/flutter"
export FLUTTER_ROOT="$HOME/fvm/default"


# Gem 
# example : gem install cocoapods --user-install
# export PATH="$PATH:/Users/hashirshoaeb/.gem/ruby/2.6.0/bin" 

#  global dart packages
export PATH="$PATH":"$HOME/.pub-cache/bin"

if [[ $(arch) == 'arm64' ]]; then
# Set PATH, MANPATH, etc., for Homebrew. m1 chip
# reason https://earthly.dev/blog/homebrew-on-m1/
eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# https://mac.install.guide/ruby/13.html

# intel
if [ -d "/usr/local/opt/ruby/bin" ]; then
  export PATH=/usr/local/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi
# M1
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi


export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
export PATH=$PATH:/Users/hashirshoaeb/Library/Android/sdk/platform-tools
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"


# Alias
# # git
alias g='git'
alias ga='g add .'
alias gm='g commit -m '
alias gam='ga && gm'
alias gc='g checkout '
alias gcn='gc -b '
alias gss='g stash save '
alias gsp='g stash pop'
alias gp='g push'
alias gpl='g pull'
alias grs='g reset --soft HEAD~1'

# # iOS
alias pi='pod install'
alias pu='pod update'
# # Flutter
alias f='fvm flutter'
alias fpg='f pub get'
alias fpu='f pub upgrade'
alias fv='f --version'
alias fd='f doctor -v'
alias fc='f clean'
alias fbr='f packages pub run build_runner build --delete-conflicting-outputs'
alias apk='f build apk'
# flutter clean && rm ios/Podfile.lock pubspec.lock && rm -rf ios/Pods ios/Runner.xcworkspace
# Git Tagging Function
gt() {
    if [ -z "$1" ]; then
        echo "Usage: gt <version>"
        return 1
    fi

    VERSION=$1
    TAG="v$VERSION"

    # Create the tag
    git tag -a "$TAG" -m "Release $TAG"

    # Confirmation message
    echo "Git tag $TAG is successfully created. Do you want to push it? (y/n)"
    read -r RESPONSE

    if [ "$RESPONSE" = "y" ]; then
        # Push the tag
        git push origin "$TAG"
        echo "Tag $TAG has been pushed successfully."
    elif [ "$RESPONSE" = "n" ]; then
        # Delete the tag locally
        git tag -d "$TAG"
        echo "Tag $TAG has been rolled back."
    else
        echo "Invalid response. No action taken."
        return 1
    fi
}

# Add this in terminal in case pod not installed
LANG="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"

# https://stackoverflow.com/questions/59405671/ios-cocoapods-requires-your-terminal-to-be-using-utf-8-encoding-after-latest

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/hashirshoaeb/.dart-cli-completion/zsh-config.zsh ]] && . /Users/hashirshoaeb/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

