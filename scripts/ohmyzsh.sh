#!/bin/bash

# Install Zsh
sudo apt-get update
sudo apt-get install -y zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# # Configure plugins
# sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g' ~/.zshrc

# # Install zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# # Install zsh-syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# # Set theme to "minimal"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="minimal"/g' ~/.zshrc

# # Activate plugins
sed -i 's/# source $ZSH\/oh-my-zsh.sh/source $ZSH\/custom\/plugins\/zsh-autosuggestions\/zsh-autosuggestions.zsh\nsource $ZSH\/custom\/plugins\/zsh-syntax-highlighting\/zsh-syntax-highlighting.zsh\nsource $ZSH\/oh-my-zsh.sh/g' ~/.zshrc

# # Restart Zsh
# exec zsh