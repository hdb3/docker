#!/bin/bash -ve
source ~/.profile
cd onos
source  ~/onos/tools/dev/bash_profile
export ONOS_USER=root ; export ONOS_GROUP=root ; \
export OC1="10.30.65.204" ; export OCI="10.30.65.204" ; export ONOS_APPS="drivers,openflow,fwd,proxyarp,mobility" ; export ONOS_NIC="10.30.65.*" ; \
which onos-package
onos-package
echo "all done"
exit 0
