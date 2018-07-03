#!/bin/bash

set -u

rm -f ./keys/id_rsa ./keys/id_rsa.pub
rm -f ./keys/heketi ./keys/heketi.pub

ssh-keygen -b 2048 -t rsa -f ./keys/id_rsa -q -N ""
cp ./keys/id_rsa.pub ./roles/common/files/authorized_keys
cp ./keys/id_rsa ./roles/common/files/id_rsa

chmod 400 ./keys/id_rsa*

exit 0
