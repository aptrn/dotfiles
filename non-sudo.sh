echo "set pulseaudio"
pulseaudio -D
echo "change shell to zsh"
chsh -s /usr/bin/zsh
echo "you should now set your openbox theme (Triste Crimson)"
obconf
echo "you should now set your system theme (Adwaita-dark)"
lxappearance
echo "you should now set your wallpaper"
nitrogen
