apt-get -y install unzip
wget https://github.com/floodlight/floodlight/archive/v1.1.zip
unzip v1.1.zip
rm v1.1.zip
cd floodlight-1.1
ant
