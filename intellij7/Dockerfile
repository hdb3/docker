FROM hdb3/java7
MAINTAINER Nic Hart <nic@hdb3.net>
#CMD idea.sh
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD https://download.jetbrains.com/idea/ideaIU-14.1.3.tar.gz ./
# ADD ideaIU-14.1.3.tar.gz ./
RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install xorg xterm -y --no-install-recommends
# RUN apt-get install xorg xterm gdm menu gksu -y --no-install-recommends
#RUN apt-get -y clean
#RUN apt-get -y auto-clean
#RUN apt-get -y auto-remove
RUN apt-get -y clean && apt-get -y autoclean && apt-get -y autoremove
RUN echo 'PATH="/root/idea-IU-141.1010.3/bin:$PATH"' >> ~/.profile
#RUN tar zxf /tmp/ideaIU-14.1.3.tar.gz -C /usr/local && \
#    rm /tmp/ideaIU-14.1.3.tar.gz && \
#    echo 'PATH="/usr/local/ideaIU-14.1.3/bin:$PATH"' >> ~/.profile
