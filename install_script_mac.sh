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
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completionm

echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.zshrc

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

# Install Neovim
brew install neovim

# Install MonitorControl
brew install --cask monitorcontrol

