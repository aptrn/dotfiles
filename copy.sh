echo "creating missing conf folders"
mkdir ~/.config
mkdir ~/.themes
mkdir ~/Pictures
echo "copying confs"
sudo cp -r ./slim.conf /etc/
cp ./.xinitrc ~/
cp ./.zshrc ~/
cp -r ./openbox/ ~/.config
cp -r ./tint2/ ~/.config
cp -r ./conky/ ~/.config
cp -r ./tema/Triste-Crimson/ ~/.themes
cp -r ./.icons ~/
cp -r ./.urxvt ~/
sudo cp -r ./lightdm /etc/
cp .Xresources ~/
cp monsters.jpg ~/Pictures/
xrdb ~/.Xresources 
pactl set-default-sink "alsa_output.pci-0000_00_1b.0.analog-stereo"
echo "change shell to zsh"
chsh -s /usr/bin/zsh
echo "you should now set your openbox theme (Triste Crimson)"
sudo obconf
echo "you should now set your system theme (Adwaita-dark)"
lxappearance
echo "you should now set your wallpaper"
nitrogen
