FROM intellij
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
RUN apt-get update && apt-get dist-upgrade -y && \
    git clone https://gerrit.onosproject.org/onos -b 1.0.0 && cd onos && \
    && \
