<!-- PROJECT LOGO -->
<br />
<p align="center">
  <h1 align="center">Toast Mac 🥪</h1>
  <p align="center">
    My dotfile manager (personal sh script) to automate and ease my hustle of setting up or switching to new mac. No more panic attacks on mac crash. ✌️
    <br />
    <br />
    <a href="https://hashirshoaeb.com">About Me</a>
  </p>
</p>


[![Twitter Follow](https://img.shields.io/twitter/follow/hashirshoaeb?color=ffcc66&logo=twitter&logoColor=ffffff&style=for-the-badge)](https://twitter.com/hashirshoaeb)
[![GitHub license](https://img.shields.io/github/license/hashirshoaeb/toast-mac?style=for-the-badge)](https://github.com/hashirshoaeb/toast-mac/blob/master/LICENSE)


## Install
Open terminal and run the following commands:

```bash
cd ~
git clone https://github.com/hashirshoaeb/toast-mac.git --depth=1
cd toast-mac
chmod +x install.sh
./install.sh
cd ..
```

To sync settings in old mac
```bash
chmod +x sync.sh
./sync.sh
```
> ⚠️ **Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk! I have shared mine for the sake of inspiration only.

## Goal
What to automate basically? To be able to quickly setup my development environment on fresh macOS.
- [x] My macOS’s default settings. (settings that are not part of iCloud)
- [x] Setup terminal with oh my zsh and my favourite color
- [x] Setup my dotfiles (i.e. .gitconfig)
- [ ] Install my work tools (i.e. Xcode, vscode) 

## Setup
I have written a [setp by step guide](https://hashirshoaeb.hashnode.dev/dotfiles-what-is-a-dotfile-why-do-we-need-dotfile-and-how-to-create-it-in-mac) on how to backup and sync dotfiles. [[link]](https://hashirshoaeb.hashnode.dev/dotfiles-what-is-a-dotfile-why-do-we-need-dotfile-and-how-to-create-it-in-mac)

## Thanks to...
I first got the idea of dotfiles from [Ruben](https://github.com/rubenvereecken/dotfiles). After some google search I stumbled upon [dotfiles](https://dotfiles.github.io/), there I found various dotfile implementations. And I just copied the scripts I needed for my personal use. For instance: I learned to setup mac defaults from [Mathias Bynens](https://github.com/mathiasbynens)'s [.macOS](https://github.com/mathiasbynens/dotfiles/blob/master/.macos). The idea of symbolic links from [Lars Kappert](https://github.com/webpro)'s [blog](https://www.webpro.nl/articles/getting-started-with-dotfiles) . Scripting OH-MY-ZSH from [Dries Vints](https://github.com/driesvints)'s [dotfile](https://github.com/driesvints/dotfiles/blob/main/fresh.sh). Lastly thanks to Dries Vints's [blog](https://driesvints.com/blog/getting-started-with-dotfiles/) and Anish Athalye's [blog](https://www.anishathalye.com/2014/08/03/managing-your-dotfiles/) for convincing me that this effort will be worth saving time in future. 