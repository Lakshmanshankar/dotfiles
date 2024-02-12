#!/bin/bash
sudo apt install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo " 🍰️ Oh My zsh done"

sudo apt install lsd
sudo apt install bat

echo " 🍰️ Installed 🦇️ and lsd"

sudo apt install fzf
sudo apt install fd-find
sudo apt-get install ripgrep

echo " 🍰️ Installed fzf and fzf depends on ripgrep"

# for neovim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
