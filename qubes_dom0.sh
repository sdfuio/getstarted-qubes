
# untrusted qube
# git clone https://github.com/sdfuio/getstarted-qubes


###########################################
# copy qubes_dom0.sh to dom0
###########################################
qvm-run --pass-io untrusted 'cat /home/user/first-shellscript/qubes_dom0.sh' >  ~/qubes_dom0.sh


###########################################
# create debian-11-dvm (disposable template)
###########################################

# in dom0, open termial and execute the following commands.
tmp_for_dbndvm='debian-11'
dbndvm='debian-11-dvm'
qvm-create --template ${tmp_for_dbndvm} --label red ${dbndvm}
qvm-prefs ${dbndvm} template_for_dispvms True
qvm-features ${dbndvm} appmenus-dispvm 1

# dispvm and disposable template are a little different.
# dispvm: sys-usb (VM name is persistent)
# disposable template: fedora-34-dvm (this template creates VMs whose names are random like disp123)
# see https://forum.qubes-os.org/t/how-can-i-create-a-new-disposable-in-4-1-debian-based/10418/5


# copy screenshots to another VM
qvm-copy-to-vm personal Pictures/Screenshot*.png









