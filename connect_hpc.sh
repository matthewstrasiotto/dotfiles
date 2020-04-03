#!/bin/bash

# For Ubuntu 18.04
# Requires sshfs and openconnect
# Requires UNIPASS and UNIKEY env vars to be set in
# ~/.uni_auth

source ~/.uni_auth
UNIKEY=$UNIKEY
UNIPASS=$UNIPASS


sudo -s echo "${UNIPASS}" | sudo -s openconnect -b -u $UNIKEY --passwd-on-stdin https://vpn.sydney.edu.au

echo "Finished connecting!"

sleep 1

#ssh -v -fN "${UNIKEY}@hpc.sydney.edu.au"

sudo -s sshfs "${UNIKEY}@hpc.sydney.edu.au:/project/STEMI/" /project/STEMI -o allow_other -o IdentityFile=~/.ssh/id_rsa -o reconnect,ServerAliveInterval=15,ServerAliveCountMax=3

ssh -X "${UNIKEY}@hpc.sydney.edu.au"
echo "Finsihed ssh-ing"

echo "Open Connect Process:\n"

ps | grep -E openconnect

# Okay give the user back their command line
bash

