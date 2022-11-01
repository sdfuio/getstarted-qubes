##########################
# Qubes setting
#=======================


# personal
qvm-prefs  personal netvm none
qvm-prefs  personal memory 2000
qvm-prefs  personal maxmem 6000
qvm-prefs  personal template fedora-34
qvm-prefs  personal default_dispvm fedora-34-dvm
qvm-volume extend personal:private 10G


# work
qvm-prefs work netvm none
qvm-volume extend personal:private 5G

# sys-usb
qvm-volume extend sys-usb:private 10G
qvm-prefs  personal netvm none # default

