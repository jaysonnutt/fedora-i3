#!$(which bash)

# Install packages
dnf install -y fastfetch rofi kitty xrdp

# Enable SSH
systemctl enable --now sshd

# Setup Hack Nerd Font
# Replace version with the latest release version
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Hack.zip
mkdir -p ~/.local/share/fonts
unzip -d ~/.local/share/fonts Hack.zip
fc-cache -fv
rm Hack.zip

