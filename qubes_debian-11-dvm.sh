###############
# edit "template disp debian-xx-dvm" offline
################

# japanese IME
im-config
ibus-setup

# firefox saved logins
firefox about:logins
# edit username and password


###################
# hosts
###################

# launch untrusted vm
# curl https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O hosts
# qvm-copy-to-vm debian-11-dvm hosts

cp ~/QubesIncoming/untrusted/hosts /etc/hosts




