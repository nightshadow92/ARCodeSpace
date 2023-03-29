apt update
apt upgrade -y
wget https://mega.nz/linux/repo/xUbuntu_20.04/amd64/megacmd-xUbuntu_20.04_amd64.deb
apt install ./megacmd*.deb -y
rm ./megacmd*.deb
apt install npm -y
npm i xdccjs


apt install openjdk-8-jre-headless -y
wget http://installer.jdownloader.org/JDownloader.jar
