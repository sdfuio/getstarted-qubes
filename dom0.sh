
# untrusted qube
# git clone https://github.com/sdfuio/getstarted-qubes


###########################################
# copy qubes_dom0.sh to dom0
###########################################
qvm-run --pass-io untrusted 'cat /home/user/getstarted-qubes/qubes_dom0.sh' >  ~/qubes_dom0.sh


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



#############################################
# create windows-mgmt
#============================================

# https://github.com/elliotkillick/qvm-create-windows-qube

# untrusted 
# wget https://raw.githubusercontent.com/elliotkillick/qvm-create-windows-qube/master/install.sh

qvm-run -p --filter-escape-chars --no-color-output untrusted "cat '/home/user/Downloads/install.sh'" > install.sh
chmod +x install.sh && ./install.sh



#############################################
# create windows qube
#============================================

# launch disposable VM and download win10x64.iso
# place it into /home/user/Documents/qvm-create-windows-qube/windows-media/isos in windows-mgmt

qvm-create-windows-qube -n sys-firewall -oyp firefox,notepadplusplus,office365proplus -i win10x64.iso -a win10x64-pro.xml work-win10
qvm-create-windows-qube -n sys-firewall -oyp steam -i win10x64.iso -a win10x64-pro.xml game-console



