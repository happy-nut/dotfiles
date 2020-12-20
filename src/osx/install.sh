#!/bin/bash

set -ex

# Install Homebrew.
which -s brew
if [[ $? != 0 ]] ; then
  # Install Homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Install or upgrade zsh.
brew install zsh

# Change shell to zsh.
chsh -s /bin/zsh

# Backup original .zshrc file.
cp ~/.zshrc ~/.zshrc.backup 2>/dev/null

# TODO: Copy base .zshrc.
# TODO: Copy .vim.

# Install pure zsh.
if [ ! -d "$HOME/.zsh/pure" ] ; then
  mkdir -p "$HOME/.zsh"
  git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
  echo '# Pure zsh.' >> ~/.zshrc
  echo 'fpath+=$HOME/.zsh/pure' >> ~/.zshrc
  echo 'autoload -U promptinit; promptinit' >> ~/.zshrc
  echo 'prompt pure' >> ~/.zshrc
  echo $'\n' >> ~/.zshrc
fi

# Install zsh-autosuggestions.
if ! brew ls --versions zsh-autosuggestions >/dev/null ; then
  brew install zsh-autosuggestions
  echo '# zsh-autosuggestions.' >> ~/.zshrc
  echo '. /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
  echo $'\n' >> ~/.zshrc
fi

# TODO: Install autojump.
