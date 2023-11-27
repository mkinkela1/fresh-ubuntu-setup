#!/bin/sh

# Install HomeBrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install Git
brew install git

# Install Yarn
brew install yarn

# Install NVM
git clone https://github.com/nvm-sh/nvm.git $HOME/.nvm
export NVM_DIR="$HOME/.nvm"
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
echo '[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"' >> ~/.zshrc
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
echo '[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"' >> ~/.zshrc

# Install Node
nvm install --lts

# Install iTerm2
brew install --cask iterm2

# Install docker 
brew install --cask docker

# Install VSC
brew install --cask visual-studio-code

# Install Oh My ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Setup zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search.git ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search

# Install Github CLI
brew install gh	

# Install the best package ever => TheFuck
brew install thefuck
echo 'eval $(thefuck --alias)' >> ~/.zshrc

# Install Chrome
brew install --cask google-chrome

# Install WhatsApp
brew install --cask whatsapp

# Install Viber
brew install --cask viber

# Install Tidal
brew install --cask tidal

# Install AlDente
brew install --cask aldente


