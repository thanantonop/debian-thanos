# Install packages
sudo nala install packaging-dev python3 python3-pip dwm dmenu stterm dunst build-essential automake autoconf ninja-build gettext cmake curl git vim neovim mc ranger htop btop glances nmap neofetch tree scrot emacs lxappearance galculator alacritty filezilla transmission-gtk xarchiver xournal lsd bat fzf fd-find jq tldr cmus trash-cli zoxide nala arandr ufw firefox-esr geany meld blueman vlc mpv audacious gimp darktable keepassxc chromium libreoffice libreoffice-gtk3 unzip unrar alsa-utils xbacklight qimgv imagemagick imagemagick-common abiword gnumeric synaptic gdebi wireshark i3lock mate-polkit mate-polkit-common mate-polkit-bin network-manager-gnome -y
sudo nala install qemu-system libvirt-daemon-system virt-manager -y
sudo nala install fonts-ubuntu fonts-ubuntu-console fonts-font-awesome fonts-terminus fonts-powerline fonts-crosextra-caladea fonts-crosextra-carlito ttf-mscorefonts-installer -y
sudo ufw enable

# Compile dwm
cd ~/github/debian-thanos/
cd dwm-thanos && sudo make clean install
cd slstatus && sudo make clean install
cd ~

# Compile st
cd ~/github/debian-thanos/
cd st-thanos && sudo make clean install
cd ~

# Clone required repos
cd ~/github/
git clone https://github.com/ChrisTitusTech/Debian-titus.git
git clone https://github.com/ChrisTitusTech/dwm-titus.git
git clone https://github.com/ChrisTitusTech/mybash.git
git clone https://github.com/ChrisTitusTech/neovim.git
mkdir ~/github/neovim_stable
cd ~/github/neovim_stable
git clone https://github.com/neovim/neovim.git
#cd ~/github/
#git clone https://github.com/EliverLara/Nordic.git
#git clone https://github.com/alvatip/Nordzy-icon.git
#git clone https://github.com/guillaumeboehm/Nordzy-cursors.git
cd ~

# Install neovim 
cd ~/github/neovim_stable/neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo 
sudo make install 
cd ~/github/neovim
sudo ./setup.sh
./setup.sh
cd ~

# Install configuration files
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
cp ~/.bashrc.bak ~/.bashrc.bak.orig
ln -s /home/thanos/github/mybash/.bashrc .bashrc
cd ~/.config
ln -s /home/thanos/github/mybash/starship.toml starship.toml
cd ~

# Configure root env
sudo mkdir /root/.config
sudo cp ~/github/debian-thanos/fzf.bash /root/.fzf.bash
cd ~

# Install linuxtoolbox
cd ~
rm -rf ~/linuxtoolbox
sudo rm -rf /root/linuxtoolbox
cp -r ~/github/debian-thanos/linuxtoolbox ~/
rm -rf ~/linuxtoolbox/mybash
rm -rf ~/linuxtoolbox/neovim
cp -r ~/github/mybash ~/linuxtoolbox/
cp -r ~/github/neovim ~/linuxtoolbox/
sudo cp -r ~/linuxtoolbox /root
cd ~

# Install fonts
cd ~
rm -rf .fonts 
git clone https://github.com/thanantonop/fonts.git
rm -rf ~/fonts/.git
mv ~/fonts ~/.fonts

# Install backgrouncds
cd ~
cd ~/Pictures
git clone https://github.com/thanantonop/nord-backgrounds.git
rm -rf ~/Pictures/backgrounds
mv nord-backgrounds backgrounds
rm -rf ~/Pictures/backgrounds/.git
cd ~

# Install Nordzy icons
cd ~/Downloads
git clone https://github.com/alvatip/Nordzy-icon.git
cd Nordzy-icon/
sudo ./install.sh
cd ~/Downloads
rm -rf Nordzy-icon/
cd ~
