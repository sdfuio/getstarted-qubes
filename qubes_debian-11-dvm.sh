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

# launch dom0 terminal
# qvm-run --dispvm=debian-11-dvm  'curl https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O hosts && qvm-move-to-vm debian-11-dvm hosts'

cp ~/QubesIncoming/untrusted/hosts /etc/hosts




