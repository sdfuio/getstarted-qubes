#######################################
# Use sys-usb1 instead of sys-usb
#======================================


# unplug all cables from USB ports to prevent attaching an infected device to dom0 directly.

newusb='sys-usb1'
oldusb='sys-usb'

# attach USB controller to new usb qube
usb_bdf=$(qvm-pci | awk '/USB *controller/ {print $1}') # mine is 'dom0:00_14.0' 
qvm-pci attach --persistent ${newusb} ${usb_bdf} -o no-strict-reset=true
qvm-prefs ${newusb} autostart true

# edit qubes.InputMouse
sudo sed -i 's/^sys-usb/^sys-usb1/g'  /etc/qubes-rpc/policy/qubes.InputMouse

# 
qvm-prefs ${oldusb} autostart false

# detach old USB qube from USB controller
qvm-shutdown ${oldusb}
read -p "if you already unplug all cables from USB ports, press enter: "
qvm-pci detach ${oldusb} ${usb_bdf}

# reboot or logout








