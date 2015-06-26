FROM hdb3/karaf
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD diff2 /root/
ADD build.sh /root/
RUN cd ; \
    # echo $PATH ; \
    apt-get -y install curl && \
    bash build.sh
    # git clone https://gerrit.onosproject.org/onos -b onos-1.1 && \
    # .  onos/tools/dev/bash_profile && \
    # cd onos && \
    # sed -i ~/Applications/apache-karaf-3.0.3/etc/org.apache.karaf.features.cfg -e '/featuresRepositories/s;$;,mvn:org.onosproject/onos-features/1.2.0-SNAPSHOT/xml/features;' && \
    # patch --verbose -p1 < ~/diff2 && \
    # mvn clean install && \
    # export ONOS_USER=root && export ONOS_GROUP=root && \
    # export OC1="10.30.65.204" && export OCI="10.30.65.204" && export ONOS_APPS="drivers,openflow,fwd,proxyarp,mobility" && export ONOS_NIC="10.30.65.*" && \
    # onos-package && \
    # echo 'try "export OC1="10.30.65.204" then' && \
    # echo '"onos-install -f \$OC1 ; onos \$OC1"'

