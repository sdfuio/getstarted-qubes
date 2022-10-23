
# https://www.reddit.com/r/Qubes/comments/o3pykx/guide_how_to_setup_protonvpn_in_qubes/

sudo qubes-dom0-update qubes-template-fedora-36-minimal
qvm-run -u root fedora-36-minimal-sys-vpn xterm

# in fedora-36-minimal-sys-vpn:
# mv /home/user/temp/etc/yum.repos.d/protonvpn-stable-f33.repo /etc/yum.repos.d/



qvm-create --template fedora-34-minimal-sys-vpn --label green sys-vpn
qvm-prefs sys-vpn autostart true
qvm-prefs sys-vpn netvm sys-firewall
qvm-prefs sys-vpn provides_network true
qvm-service sys-vpn network-manager true


