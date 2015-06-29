FROM hdb3/wiresharkbase
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
RUN wget --no-check-certificate https://1.eu.dl.wireshark.org/src/wireshark-1.12.6.tar.bz2 && tar xjf wireshark-1.12.6.tar.bz2 && rm wireshark-1.12.6.tar.bz2 && \
    echo "Building wireshark from source" && cd wireshark-1.12.6 && ./configure --with-ssl --enable-setuid-install && make install && echo "Done" && cd .. && rm -rf wireshark-1.12.6 && ldconfig
