source ~/.profile
git clone https://gerrit.onosproject.org/onos -b onos-1.1
cd onos
source  ~/onos/tools/dev/bash_profile
sed -i ~/Applications/apache-karaf-3.0.2/etc/org.apache.karaf.features.cfg -e '/featuresRepositories/s;$;,mvn:org.onosproject/onos-features/1.1.1-SNAPSHOT/xml/features;'
patch --verbose -p1 < ~/diff3
mvn clean install
