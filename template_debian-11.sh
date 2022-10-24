########################################################
# installation
#======================================================

# in dispxxxx:
# git clone https://github.com/sdfuio/getstarted-debian
# cd getstarted-debian
# qvm-copy-to-vm debian-11 apt_inst.sh

# in debian-11:
# cd ~/QubesIncoming/disp*/
# chmod u+x apt_inst.sh
#./apt_inst.sh


########################################################
# replace hosts file
#======================================================

# in dispxxxx: 
# curl https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O hosts && qvm-copy-to-vm hosts debian-11

# in debian-11
# sudo cp ~/QubesIncoming/disp*/hosts /etc/




