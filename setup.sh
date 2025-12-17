#!/bin/bash

# Install packages
dnf install -y fastfetch rofi kitty xrdp neovim flameshot distrobox podman gimp feh konsole

# i3 Configuration
mkdir -p ~/.config/i3/
cp ./config ~/.config/i3/

# Enable SSH
systemctl enable --now sshd

# Setup Hack Nerd Font
# Replace version with the latest release version
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Hack.zip
mkdir -p ~/.local/share/fonts
unzip -d ~/.local/share/fonts Hack.zip
fc-cache -fv
rm Hack.zip

# Setup RDP
cp ./Xclients ~/
sudo firewall-cmd --add-service=rdp --permanent
sudo firewall-cmd --reload
systemctl restart xrdp

# Setup NeoVim
mkdir -p ~/.config/nvim/
cp ./init.lua ~/.config/nvim/

# Bash Configuration
cp ./.bashrc ~/
source ~/.bashrc

# Install Brave
curl -fsS https://dl.brave.com/install.sh | sh

# Vim Plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

