cd ; mkdir Downloads Applications
cd Downloads
wget http://download.nextag.com/apache/karaf/3.0.2/apache-karaf-3.0.2.tar.gz
wget http://archive.apache.org/dist/maven/maven-3/3.3.1/binaries/apache-maven-3.3.1-bin.tar.gz
tar -zxvf apache-karaf-3.0.2.tar.gz -C /root/Applications/
tar -zxvf apache-maven-3.3.1-bin.tar.gz -C /usr/local/
echo 'PATH="/usr/local/apache-maven-3.3.1/bin:$PATH"' >> ~/.profile
echo 'export KARAF_ROOT=/root/Applications/apache-karaf-3.0.2' >> ~/.profile
echo 'PATH="$KARAF_ROOT/bin:$PATH"' >> ~/.profile
