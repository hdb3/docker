FROM hdb3/java8
MAINTAINER Nic Hart <nic@hdb3.net>

RUN apt-get install -y openssh-server && \
    mkdir /var/run/sshd && \
    sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd && \
    useradd -s /bin/bash -m sdn && echo "sdn:sdn" | chpasswd && \
    mkdir /home/sdn/.ssh && chown -R sdn:sdn /home/sdn/.ssh
#ADD sdn.ssh.tgz /home/sdn/
ADD sdn/id_rsa /home/sdn/.ssh/id_rsa
ADD sdn/id_rsa.pub /home/sdn/.ssh/id_rsa.pub
COPY onosdeploy.id_rsa.pub /home/sdn/.ssh/authorized_keys
RUN chown -R sdn:sdn /home/sdn/
#RUN \
    #chmod 700 /home/sdn/.ssh &&\
    #chmod 600 /home/sdn/.ssh/id_rsa
RUN echo "sdn	ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
