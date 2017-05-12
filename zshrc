# Activate antigen
source ~/.antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen apply

# Activate nvm
export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/nvm.sh" ]; then
  . "$NVM_DIR/nvm.sh"
fi

# Functions
installNvm() {
  git clone https://github.com/creationix/nvm.git $HOME/.nvm
  cd $HOME/.nvm
  git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
}

# Alias
alias v="vim"
alias c="cat"

# Variables
export EDITOR="vim"

# More config for some machine
if [ -f $HOME/.zshconfig ]; then
  . $HOME/.zshconfig
fi
