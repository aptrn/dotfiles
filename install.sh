echo "update packages"
sudo apt update
sudo apt upgrade -y
echo "install new packages"
sudo apt install obconf lxappearance pcmanfm tint2 nitrogen conky firefox zsh feh vlc telegram-desktop xfce4-battery-plugin xfce4-power-manager xfce4-clipman rofi dunst dbus-x11 libnotify-bin xsel rxvt-unicode flameshot xbacklight xserver-xorg-input-synaptics -y
echo "change timezone"
sudo timedatectl set-timezone Europe/Rome
echo "enabling wirless"
sudo ifconfig wlp3s0 up
echo "disable wait-online service"
sudo systemctl disable systemd-networkd-wait-online.service
sudo systemctl mask systemd-networkd-wait-online.service
echo "installing spotify"
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install spotify-client -y
echo "installing vscode"
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code -y
echo "installing ohmyzsh, answer yes, then reboot"
echo "you could need changing default shell to zsh after reboot, without sudo execute chsh -s $(which zsh)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
