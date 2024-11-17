#!/bin/bash
# Generate SSH key and copy to remote server
read -p 'Server user and IP (root@XXX.XXX.XXX.XXX): ' SSH_SERVER
read -sp 'Password: ' PASSWORD
ssh-keygen -t rsa -b 2048 -f /.ssh/id_rsa_2 -q -N ""
ssh-copy-id SSH_SEVER
echo "SSH key setup completed."
