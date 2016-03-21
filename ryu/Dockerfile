FROM hdb3/wireshark
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
COPY README /root
EXPOSE 6633
RUN apt-get update && apt-get -y dist-upgrade && apt-get -y install screen git tcpdump python-pip python-dev libxml2-dev libxslt-dev zlib1g-dev && apt-get -y clean && apt-get -y autoclean && apt-get -y autoremove && \
    git clone git://github.com/osrg/ryu.git && \
    pip install -r ryu/tools/pip-requires  && \
    pip install pbr greenlet six --upgrade && \
    cd ryu/ && \
    python ./setup.py install
