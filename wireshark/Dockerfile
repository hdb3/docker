FROM ubuntu
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
RUN apt-get update && apt-get -y dist-upgrade && \
    apt-get -y install wget bison flex libqt4-dev libgtk-3-dev libpcap-dev zlib1g-dev libssl-dev tcpdump screen && \
    apt-get -y clean && apt-get -y autoclean && apt-get -y autoremove && \
# ADD https://1.eu.dl.wireshark.org/src/wireshark-1.12.5.tar.bz2 ./
    wget --no-check-certificate https://1.eu.dl.wireshark.org/src/wireshark-1.12.5.tar.bz2 && tar xjf wireshark-1.12.5.tar.bz2 && rm wireshark-1.12.5.tar.bz2 && \
    echo "Building wireshark from source" && cd wireshark-1.12.5 && ./configure --with-ssl --enable-setuid-install && make install && echo "Done" && rm -rf wireshark-1.12.5 && ldconfig
