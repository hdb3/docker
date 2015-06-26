source ~/.profile
git clone https://gerrit.onosproject.org/onos -b onos-1.1
cd onos
source  ~/onos/tools/dev/bash_profile
sed -i ~/Applications/apache-karaf-3.0.3/etc/org.apache.karaf.features.cfg -e '/featuresRepositories/s;$;,mvn:org.onosproject/onos-features/1.2.0-SNAPSHOT/xml/features;'
patch --verbose -p1 < ~/diff2
mvn clean install
export ONOS_USER=root ; export ONOS_GROUP=root ; \
export OC1="10.30.65.204" ; export OCI="10.30.65.204" ; export ONOS_APPS="drivers,openflow,fwd,proxyarp,mobility" ; export ONOS_NIC="10.30.65.*" ; \
onos-package
echo 'try "export OC1="10.30.65.204" then'
echo '"onos-install -f \$OC1 ; onos \$OC1"'
