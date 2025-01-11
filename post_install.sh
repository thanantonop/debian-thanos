sudo nala install packaging-dev python3 python3-pip dwm dmenu dunst build-essential automake autoconf git vim neovim mc ranger htop btop glances nmap neofetch tree scrot emacs galculator alacritty filezilla transmission-gtk xarchiver xournal lsd bat fzf fd-find jq tldr cmus trash-cli zoxide nala arandr ufw firefox-esr geany meld blueman vlc mpv audacious gimp darktable keepassxc chromium libreoffice libreoffice-gtk3 unzip unrar alsa-utils xbacklight qimgv imagemagick imagemagick-common abiword gnumeric synaptic gdebi wireshark i3lock mate-polkit mate-polkit-common mate-polkit-bin network-manager-gnome -y
sudo nala install qemu-system libvirt-daemon-system virt-manager -y
sudo nala install fonts-ubuntu fonts-ubuntu-console fonts-font-awesome fonts-terminus fonts-powerline fonts-crosextra-caladea fonts-crosextra-carlito ttf-mscorefonts-installer -y
sudo ufw enable
cd dwm-thanos && sudo make clean install
cd slstatus && sudo make clean install
cd ~/github/debian-thanos
sudo cp 30-keyboard.conf /etc/X11/xorg.conf.d/
sudo cp 30-touchpad.conf /etc/X11/xorg.conf.d/
rm -rf ~/.config/gtk-2.0
rm -rf ~/.config/gtk-3.0
rm -rf ~/.config/rofi
rm -rf ~/.config/dunst
rm -rf ~/.config/kitty
rm -rf ~/.config/alacritty
rm -rf ~/.config/i3lock
mv ~/.config/picom.conf ~/.config/picom_orig.conf 
cp -r gtk-2.0 ~/.config/
cp -r gtk-3.0 ~/.config/
cp -r rofi ~/.config/
cp -r dunst ~/.config/
cp -r kitty ~/.config/
cp -r alacritty ~/.config/
cp -r i3lock ~/.config/
cp picom.conf ~/.config/
cd ~
xdg-user-dirs-update
unlink ~/.bashrc
unlink ~/.config/starship.toml
ln -s /home/thanos/github/mybash/.bashrc .bashrc
cd ~/.config
ln -s /home/thanos/github/mybash/starship.toml starship.toml
cd ~
rm -rf .fonts 
git clone https://github.com/thanantonop/fonts.git
rm -rf ~/fonts/.git
mv ~/fonts ~/.fonts
git clone https://github.com/alvatip/Nordzy-icon.git
cd Nordzy-icon/
sudo ./install.sh
rm -rf Nordzy-icon/
