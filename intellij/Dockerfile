FROM hdb3/java8
MAINTAINER Nic Hart <nic@hdb3.net>
#CMD idea.sh
CMD ["/bin/bash","-l"]
ENV DISPLAY :0
WORKDIR /root
#ADD https://download.jetbrains.com/idea/ideaIU-14.1.3.tar.gz /root/
ADD ideaIU-14.1.3.tar.gz /usr/local/
RUN cd && \
    apt-get install xorg xterm -y --no-install-recommends && \
    # THE BELOW LINES ARE APPLICABLE WHEN THE IMAGE WAS ALRRADY STORED LOCALLY AS A TAR BALL AND WAS AUTOMATICALLY UNTARRED
    echo 'PATH="/usr/local/idea-IU-141.1010.3/bin:$PATH"' >> ~/.profile
    # THE BELOW LINES ARE APPLICABLE WHEN THE IMAGE WAS DOWNLOADED VIA HTTP AND THEREFORE NOT AUTOMATICALLY UNTARRED
    # tar zxf /root/ideaIU-14.1.3.tar.gz -C /usr/local && \
    # rm /root/ideaIU-14.1.3.tar.gz && \
    # echo 'PATH="/usr/local/ideaIU-14.1.3/bin:$PATH"' >> ~/.profile
