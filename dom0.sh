
# in dispxxxx:
# git clone https://github.com/sdfuio/getstarted-qubes
# qvm-copy work getstarted-qubes

# copy shellscripts to dom0
qvm-run --pass-io work 'cat /home/user/QubesIncoming/disp*/getstarted-qubes/*.sh' > all.sh

# copy screenshots to another VM
qvm-copy-to-vm personal Pictures/Screenshot*.png


