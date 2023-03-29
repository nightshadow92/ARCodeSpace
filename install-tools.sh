apt update
apt upgrade -y
wget https://mega.nz/linux/repo/xUbuntu_20.04/amd64/megacmd-xUbuntu_20.04_amd64.deb
apt install ./megacmd*.deb -y
rm ./megacmd*.deb
apt install npm -y
npm i xdccjs

dotnet publish  MegaUpload/MegaUpload.sln --sc true /p:PublishSingleFile=true -o mega
apt install openjdk-8-jre-headless -y
wget http://installer.jdownloader.org/JDownloader.jar
