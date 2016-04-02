sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get -y update
sudo apt-get -y install  oracle-java8-installer
sudo apt-get -y install  oracle-java8-set-default

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF
DISTRO=$(lsb_release -is | tr '[:upper:]' '[:lower:]')
CODENAME=$(lsb_release -cs)
echo "deb http://repos.mesosphere.io/${DISTRO} ${CODENAME} main" | sudo tee /etc/apt/sources.list.d/mesosphere.list
sudo apt-get -y update
sudo apt-get install mesosphere