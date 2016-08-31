for vm in $TARGETS $CLIENT ; do sshpass -p centos ssh-copy-id $vm ; done
ceph-deploy new $MASTER
ceph-deploy install $TARGETS
ceph-deploy mon create-initial
for h in $TARGETS
  do
    for d in $DISKS
      do
        ceph-deploy osd prepare $h:/dev/$d
        ceph-deploy osd activate $h:/dev/${d}1
      done
    ceph-deploy admin $h
  done
ceph-deploy install $CLIENT
ceph-deploy admin $CLIENT
ceph-deploy mds create $MASTER
ceph-deploy rgw create $MASTER
echo "ceph deply completed, time to test the installation?"
