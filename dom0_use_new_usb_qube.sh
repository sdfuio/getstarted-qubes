#######################################
# Use disp-sys-usb instead of sys-usb
#======================================

usbtmp='fedora-35-dvm'
newusb='disp-sys-usb'
oldusb='sys-usb'

# attach USB controller to new usb qube
usb_bdf=$(qvm-pci | awk '/USB *controller/ {print $1}') # mine is 'dom0:00_14.0' 
qvm-pci attach --persistent ${newusb} ${usb_bdf} -o no-strict-reset=true
qvm-prefs ${newusb} autostart true

# edit qubes.InputMouse
sudo sed -i 's/^sys-usb/disp-sys-usb/g'  /etc/qubes-rpc/policy/qubes.InputMouse

# 
qvm-prefs ${oldusb} autostart false

# detach old USB qube from USB controller
qvm-shutdown ${oldusb}
read -p "Wait until the shutdown has completed, and press enter."
qvm-pci detach ${oldusb} ${usb_bdf}

# start new USB qube
qvm-start ${newusb}










