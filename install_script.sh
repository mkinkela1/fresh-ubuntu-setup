#!/bin/sh

sudo apt-get install build-essential procps curl file git

# Install HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Set Path of HomeBrew
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# Install node
brew install node

# Install Yarn
brew install yarn

# Install Zsh and Oh My ZSH
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Docker
brew install docker

# Install Visual Studio Code
sudo apt install snapd
sudo snap install code --classic
sudo snap install code-insiders --classic

# Install nvm
git clone https://github.com/nvm-sh/nvm.git .nvm
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nsv.sh"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.zshrc

# Install Viber
wget https://download.cdn.viber.com/cdn/desktop/Linux/viber.deb
sudo apt install ./viber.deb
rm ./viber.deb

# Install Tidal
wget https://github.com/Mastermindzh/tidal-hifi/releases/download/4.1.0/tidal-hifi_4.1.0_amd64.deb
sudo apt install ./tidal-hifi_4.1.0_amd64.deb
rm ./tidal-hifi_4.1.0_amd64.deb 

# Setup zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search.git ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search

# Setup github cli
brew install gh	

# Install the best package ever => TheFuck
brew install thefuck
echo 'eval $(thefuck --alias)' >> ~./zshrc
