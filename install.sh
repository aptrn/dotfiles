echo "update packages"
sudo apt update
sudo apt upgrade -y
echo "install new packages"
sudo apt install xorg lightdm lightdm-gtk-greeter openbox obconf obmenu compton lxappearance pcmanfm tint2 nitrogen conky firefox geany xarchiver pulseaudio pulseaudio-utils alsa-utils volti network-manager-gnome rxvt-unicode xsel zsh ranger feh vlc -y
echo "creating missing conf folders"
mkdir ~/.config
mkdir ~/.themes
mkdir ~/Pictures
echo "copying confs"
sudo cp -r ./openbox/ ~/.config
sudo cp -r ./tint2/ ~/.config
sudo cp -r ./volti/ ~/.config
sudo cp -r ./conky/ ~/.config
sudo cp -r ./tema/Triste-Crimson/ ~/.themes
sudo cp -r ./.fonts ~/
sudo cp -r ./.icons ~/
sudo cp -r ./.urxvt ~/
sudo cp -r ./lightdm /etc/
sudo cp .Xdefaults ~/
sudo cp compton.conf ~/.config
sudo cp monsters.jpg ~/Pictures/
echo "installing telegram"
sudo snap install telegram-desktop
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
echo "enabling wirless"
sudo ifconfig wlp3s0 up
echo "disable wait-online service"
sudo systemctl disable systemd-networkd-wait-online.service
sudo systemctl mask systemd-networkd-wait-online.service
echo "installing ohmyzsh, answer yes, then reboot"
echo "you could need changing default shell to zsh after reboot, without sudo execute chsh -s $(which zsh)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
