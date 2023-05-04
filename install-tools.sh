apt update
apt upgrade -y
apt install npm wget apt-transport-https software-properties-common -y
npm i xdccjs
git clone https://github.com/nightshadow92/MegaUpload.git


dotnet publish  MegaUpload/MegaUpload.sln --sc true /p:PublishSingleFile=true -o mega


wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt update
sudo apt install -y powershell
pwsh Download.ps1



wget https://mega.nz/linux/repo/xUbuntu_20.04/amd64/megacmd-xUbuntu_20.04_amd64.deb
apt install ./megacmd*.deb -y
rm ./megacmd*.deb
apt install openjdk-8-jre-headless -y
wget http://installer.jdownloader.org/JDownloader.jar
