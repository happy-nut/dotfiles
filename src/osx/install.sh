#!/bin/bash

set -ex

ROOT_DIR=$(git rev-parse --show-toplevel)
CURRENT_DIR="${ROOT_DIR}/src/osx"

ZSH_BACKUP=~/.zshrc.backup
VIM_BACKUP=~/.vim.backup

# Delete backup files if exists.
rm -rf "$ZSH_BACKUP"
rm -rf "$VIM_BACKUP"

# Install Homebrew.
which -s brew
if [[ $? != 0 ]] ; then
  # Install Homebrew
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Backup original .zshrc file.
cp ~/.zshrc $ZSH_BACKUP 2>/dev/null

# Install zsh.
if ! brew ls --versions zsh >/dev/null ; then
  brew install zsh
fi

# TODO: Copy base .zshrc.

# Copy vim configs.
if ! brew ls --versions vim >/dev/null ; then
  brew install vim
fi
if [ -d ~/.vim ] ; then
  cp -r  ~/.vim $VIM_BACKUP  2>/dev/null
  rm -rf ~/.vim
fi
cp -r "${CURRENT_DIR}/assets/.vim" ~/.vim

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

# Clean up backup files. For now, remaining backup files seems more safe.
# TODO: Make this optional.
# rm -rf "$ZSH_BACKUP"
# rm -rf "$VIM_BACKUP"

# Change shell to zsh.
chsh -s /bin/zsh

# Restore via backup files when this script fails.
