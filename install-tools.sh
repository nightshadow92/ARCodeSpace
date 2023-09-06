DEBIAN_FRONTEND=noninteractive apt update && apt upgrade -yq && apt install wget apt-transport-https tmux software-properties-common powershell -y
#DEBIAN_FRONTEND=noninteractive apt install npm -y
# npm i xdccjs
#openjdk-8-jre-headless no longer needed

DEBIAN_FRONTEND=noninteractive add-apt-repository multiverse
dpkg --add-architecture i386
apt update
# echo steam steam/question select "I AGREE" | debconf-set-selections echo steam steam/license note '' | debconf
echo steam steam/question select "I AGREE" | sudo debconf-set-selections
echo steam steam/license note '' | sudo debconf-set-selections
# DEBIAN_FRONTEND=noninteractive apt install lib32gcc-s1 steamcmd -y

# wget https://mega.nz/linux/repo/xUbuntu_20.04/amd64/megacmd-xUbuntu_20.04_amd64.deb
# apt install ./megacmd*.deb -y
# rm ./megacmd*.deb

# wget http://installer.jdownloader.org/JDownloader.jar
#java -jar JDownloader.jar -norestart

# sudo wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp
# sudo chmod a+rx /usr/local/bin/yt-dlp  # Make executable

#wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
#sudo dpkg -i packages-microsoft-prod.deb
#rm packages-microsoft-prod.deb
#git clone https://github.com/nightshadow92/MegaUpload.git
#dotnet publish  MegaUpload/MegaUpload.sln --sc true /p:PublishSingleFile=true -o mega

echo "" > done.txt
