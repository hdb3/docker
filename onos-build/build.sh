export ONOS_USER=root ; export ONOS_GROUP=root ; cd ; mkdir Downloads Applications
cd Downloads
apt-get install -y wget git
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
git clone https://gerrit.onosproject.org/onos -b 1.2.0
cd onos
source  ~/onos/tools/dev/bash_profile
sed -i ~/Applications/apache-karaf-3.0.3/etc/org.apache.karaf.features.cfg -e '/featuresRepositories/s;$;,mvn:org.onosproject/onos-features/1.2.0-SNAPSHOT/xml/features;'
patch --verbose -p1 < ~/diff1
mci
export ONOS_USER=root ; export ONOS_GROUP=root ; \
export OC1="10.30.65.204" ; export OCI="10.30.65.204" ; export ONOS_APPS="drivers,openflow,fwd,proxyarp,mobility" ; export ONOS_NIC="10.30.65.*" ; \
onos-package
echo 'try "export OC1="10.30.65.204" then'
echo '"onos-install -f \$OC1 ; onos \$OC1"'
