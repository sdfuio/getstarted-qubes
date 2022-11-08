#######################################
# replace sys-whonix
#======================================

# create sys-whonix1
qvm-create --template whonix-gw-16 --label black sys-whonix1
qvm-prefs sys-whonix1 netvm sys-firewall
qvm-prefs sys-whonix1 provides_network  True


# remove sys-whonix
qvm-prefs anon-whonix netvm sys-whonix1
qvm-prefs whonix-ws-16-dvm  netvm sys-whonix1
qvm-shutdown sys-whonix
qvm-remove sys-whonix

# replace old sys-whonix with new one
qvm-clone sys-whonix1 sys-whonix
qvm-prefs anon-whonix netvm sys-whonix
qvm-prefs whonix-ws-16-dvm  netvm sys-whonix

qvm-remove sys-whonix1
