#!/usr/bin/env bash
# Make workspace dir
mkdir -p ~/workspace

# iterm2
brew install --cask iterm2
cp iterm2/windows.plist ~/Library/Saved\ Application\ State/com.googlecode.iterm2.savedState/

# Install Brew
if command -v brew > /dev/null; then
  echo "brew already installed"
else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# zsh
brew install kube-ps1
brew install openshift-cli
cp zsh/zshrc ~/.zshrc

# tmux
brew install tmux
cp tmux/cpu.sh /usr/local/bin 
cp tmux/tmux.conf ~/.tmux.conf

# vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cp vim/vimrc ~/.vimrc

# docker
brew install docker

# ansible
brew install ansible

# kubectl
brew install openshift-cli
brew install kubectl

# go
brew install go
mkdir ~/workspace/go/
mkdir ~/workspace/go/bin
mkdir ~/workspace/go/pkg
mkdir ~/workspace/go/src

# python3
brew install python3

# go plugin for vim
# https://github.com/fatih/vim-go
mkdir -p ~/.vim/bundle/
git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
echo "Run ':GoInstallBinaries' in vim to complete installation"

# gpg
brew install gnupg
echo "Setup keys with github/gerrit to complete installation"
echo "Read: https://docs.github.com/en/github/authenticating-to-github/telling-git-about-your-signing-key"
