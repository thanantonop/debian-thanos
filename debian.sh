sudo nala install packaging-dev python3 python3-pip build-essential automake autoconf git vim neovim mc ranger htop btop nmap neofetch tree emacs galculator alacritty transmission-gtk xarchiver xournal lsd bat arandr firefox-esr geany meld blueman vlc mpv audacious cmus trash-cli zoxide nala gimp darktable keepassxc libreoffice libreoffice-gtk3 unzip unrar alsa-utils xbacklight qimgv dunst -y
sudo nala install fonts-ubuntu fonts-ubuntu-console fonts-font-awesome fonts-terminus fonts-powerline fonts-crosextra-caladea fonts-crosextra-carlito -y
rm -rf .fonts 
git clone https://github.com/thanantonop/fonts.git
rm -rf ~/fonts/.git
mv ~/fonts ~/.fonts
git clone https://github.com/alvatip/Nordzy-icon.git
cd Nordzy-icon/
sudo ./install.sh
