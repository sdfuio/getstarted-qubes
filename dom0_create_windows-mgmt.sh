#############################################
# create windows-mgmt
#============================================

# https://github.com/elliotkillick/qvm-create-windows-qube

qvm-run --pass-io untrusted 'wget https://raw.githubusercontent.com/elliotkillick/qvm-create-windows-qube/master/install.sh'
qvm-run -p --filter-escape-chars --no-color-output untrusted "cat '/home/user/Downloads/install.sh'" > install.sh
chmod +x install.sh && ./install.sh

