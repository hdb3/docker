FROM ubuntu:14.04
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD odldemo-puppet.tgz /vagrant/
RUN \
useradd -s /bin/bash -m vagrant && \
echo "vagrant:vagrant" | chpasswd && \
echo "vagrant ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/vagrant && \
# mkdir /vagrant && \
# tar zxfv /root/odldemo-puppet.tgz -C /vagrant && \
apt-get install -y wget && \
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb && \
dpkg -i puppetlabs-release-trusty.deb && \
apt-get update && \
apt-get install -y puppet && \
puppet module install puppetlabs/stdlib && \
puppet module install puppetlabs/vcsrepo && \
puppet apply --hiera_config /vagrant/puppet/hiera.yaml /vagrant/puppet/manifests/base.pp && \
puppet apply --hiera_config /vagrant/puppet/hiera.yaml /vagrant/puppet/manifests/devstack-control.pp
