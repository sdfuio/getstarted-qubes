#######################################
# replace sys-whonix
#======================================

# remove sys-whonix
qvm-prefs anon-whonix netvm sys-whonix1
qvm-prefs whonix-ws-16-dvm  netvm sys-whonix1
qvm-shutdown sys-whonix
qvm-remove sys-whonix

# replace old sys-whonix with new one
qvm-clone sys-whonix1 sys-whonix
qvm-prefs anon-whonix netvm sys-whonix
qvm-prefs whonix-ws-16-dvm  netvm sys-whonix

   
