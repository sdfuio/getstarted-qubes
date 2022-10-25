qvm-volume extend debian-11-dvm:private 10G



#######################
# offline 
#======================

# initial setting 
qvm-run debian-10-dvm vlc 

qvm-run debian-10-dvm gnome-terminal
# debian-10-dvm 
# im-config # select ibus as the defalut IME
# ibus-setup # add japanese
# qvm-shutdown debian-10-dvm

# save login passwords
qvm-run debian-11-dvm firefox about:logins

