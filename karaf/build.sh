apt-get install -y wget git python
cd ; mkdir Downloads Applications
cd Downloads
wget http://download.nextag.com/apache/karaf/3.0.3/apache-karaf-3.0.3.tar.gz
wget http://archive.apache.org/dist/maven/maven-3/3.3.1/binaries/apache-maven-3.3.1-bin.tar.gz
tar -zxvf apache-karaf-3.0.3.tar.gz -C ../Applications/
tar -zxvf apache-maven-3.3.1-bin.tar.gz -C ../Applications/ 
cd ; \
apt-get install software-properties-common -y
add-apt-repository ppa:webupd8team/java -y
apt-get update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
apt-get install oracle-java8-installer oracle-java8-set-default -y
