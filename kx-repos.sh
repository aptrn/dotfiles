sudo apt-get install apt-transport-https gpgv linux-lowlatency -y
sudo dpkg --purge kxstudio-repos-gcc5
wget https://launchpad.net/~kxstudio-debian/+archive/kxstudio/+files/kxstudio-repos_10.0.3_all.deb
sudo dpkg -i kxstudio-repos_10.0.3_all.deb
rm kxstudio-repos_10.0.3_all-deb
sudo apt update
sudo apt install cadence -y
sudo adduser $USER audio
