FROM hdb3/maven
MAINTAINER Nic Hart <nic@hdb3.net>
#CMD ["/bin/bash","-l"]
CMD ["/bin/bash","/root/stopcock.sh"]
WORKDIR /root
ADD stopcock.sh /root/
RUN apt-get -y install git
RUN git clone https://github.com/tignetworking/stopcock.git
RUN . /etc/profile && cd stopcock && mvn install
