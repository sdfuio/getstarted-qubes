################################
# create DispVM disp-sys-usb
#===============================

# https://www.qubes-os.org/doc/disposable-customization/

# VMs
usbtmp='fedora-35-dvm'
newusb='disp-sys-usb'

qvm-create --template ${usbtmp} --class DispVM --label red ${newusb}
qvm-prefs ${newusb} virt_mode hvm
qvm-prefs ${newusb} netvm ""
qvm-features ${newusb} appmenus-dispvm ''

