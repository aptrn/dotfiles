echo "update packages"
sudo apt update
sudo apt upgrade -y
echo "install new packages"
sudo apt install xorg lightdm lightdm-gtk-greeter openbox obconf obmenu compton lxappearance pcmanfm tint2 nitrogen conky firefox geany xarchiver pulseaudio pulseaudio-utils alsa-utils volumeicon-alsa pavucontrol network-manager-gnome network-manager zsh ranger feh vlc telegram-desktop xfce4-battery-plugin xfce4-power-manager xfce4-clipman rofi dunst dbus-x11 libnotify-bin clipit xsel rxvt-unicode flameshot xbacklight -y
echo "change timezone"
sudo timedatectl set-timezone Europe/Rome
echo "enabling wirless"
sudo ifconfig wlp3s0 up
echo "disable wait-online service"
sudo systemctl disable systemd-networkd-wait-online.service
sudo systemctl mask systemd-networkd-wait-online.service
echo "installing ob-menu generator"
sudo echo 'deb http://download.opensuse.org/repositories/home:/Head_on_a_Stick:/obmenu-generator/Debian_Unstable/ /' > /etc/apt/sources.list.d/home:Head_on_a_Stick:obmenu-generator.list
sudo wget -nv https://download.opensuse.org/repositories/home:Head_on_a_Stick:obmenu-generator/Debian_Unstable/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt update
sudo apt install obmenu-generator
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
