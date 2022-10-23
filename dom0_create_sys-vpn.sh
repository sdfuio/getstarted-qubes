
# https://www.reddit.com/r/Qubes/comments/o3pykx/guide_how_to_setup_protonvpn_in_qubes/

sudo qubes-dom0-update qubes-template-fedora-36-minimal
qvm-clone fedora-36-minimal fedora-36-minimal-sys-vpn

# in fedora-36-minimal-sys-vpn:
# mkdir ~/temp && cd ~/temp
# curl --remote-name --remote-header-name --proxy http://127.0.0.1:8082 https://protonvpn.com/download/protonvpn-stable-release-1.0.0-1.noarch.rpm

qvm-run -u root fedora-36-minimal-sys-vpn xterm

# in fedora-36-minimal-sys-vpn:
# mv /home/user/temp/etc/yum.repos.d/protonvpn-stable-f33.repo /etc/yum.repos.d/
# exit

# in fedora-36-minimal-sys-vpn:
# cd /home/user/temp/
# rpm2cpio protonvpn-stable-release-1.0.0-1.noarch.rpm | cpio --extract --make-directories --preserve-modification-time --verbose --quiet


qvm-create --template fedora-36-minimal-sys-vpn --label green sys-vpn
qvm-prefs sys-vpn autostart true
qvm-prefs sys-vpn netvm sys-firewall
qvm-prefs sys-vpn provides_network true
qvm-service sys-vpn network-manager true




