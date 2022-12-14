
# https://www.reddit.com/r/Qubes/comments/o3pykx/guide_how_to_setup_protonvpn_in_qubes/

sudo qubes-dom0-update qubes-template-fedora-34-minimal
qvm-clone fedora-34-minimal fedora-34-minimal-sys-vpn


# in fedora-34-minimal-sys-vpn:
# mkdir ~/temp && cd ~/temp
# curl --remote-name --remote-header-name --proxy http://127.0.0.1:8082 https://protonvpn.com/download/protonvpn-stable-release-1.0.0-1.noarch.rpm

qvm-run -u root fedora-34-minimal-sys-vpn xterm &

# in fedora-34-minimal-sys-vpn:
# mv /home/user/temp/etc/yum.repos.d/protonvpn-stable-f33.repo /etc/yum.repos.d/
# cd /home/user/temp/
# rpm2cpio protonvpn-stable-release-1.0.0-1.noarch.rpm | cpio --extract --make-directories --preserve-modification-time --verbose --quiet
# dnf upgrade
# dnf install protonvpn qubes-core-agent-networking qubes-core-agent-network-manager network-manager-applet notification-daemon  NetworkManager-openvpn-gnome gnome-keyring

#
qvm-create --template fedora-34-minimal-sys-vpn --label red fedora-34-minimal-sys-vpn-dvm
qvm-prefs fedora-34-minimal-sys-vpn-dvm template_for_dispvms True
qvm-features fedora-34-minimal-sys-vpn-dvm appmenus-dispvm 1

# create sys-vpn
qvm-create -C DispVM -l green -t fedora-34-minimal-sys-vpn-dvm sys-vpn
qvm-prefs sys-vpn autostart true
qvm-prefs sys-vpn netvm sys-firewall
qvm-prefs sys-vpn provides_network true
qvm-service sys-vpn network-manager true


# in sys-vpn:
# protonvpn-cli login {{ username }}
# protonvpn-cli connect --fastest --protocol udp
