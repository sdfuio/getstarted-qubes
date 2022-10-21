###########################################
# create debian-11-dvm (disposable template)
###########################################

# in dom0, open termial and execute the following commands.

tmp_for_dbndvm='debian-11'
dbndvm='debian-11-dvm'
qvm-create --template ${tmp_for_dbndvm} --label red ${dbndvm}
qvm-prefs ${dbndvm} template_for_dispvms True
qvm-features ${dbndvm} appmenus-dispvm 1

