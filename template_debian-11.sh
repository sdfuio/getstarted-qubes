
#######################
# development
#=========================

# c compiler 
sudo apt-get install -y build-essential

#
sudo apt-get install -y gcc-mingw-w64-x86-64 g++-mingw-w64-x86-64 mingw-w64-tools

# Automake
sudo apt-get install -y autoconf


# python
sudo apt install python3


# dictionary
sudo apt install dict goldendict 


# media player
sudo apt install vlc

# graphics
sudo apt install gimp inkscape


# 
sudo apt install -y libtool
sudo apt-get install -y libgcrypt-dev
sudo apt-get install -y bison
sudo apt-get install -y byacc
sudo apt-get install -y flex



# hosts
# in dispxxxx: curl https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O hosts && qvm-copy-to-vm hosts debian-11
sudo cp ~/QubesIncoming/disp*/hosts /etc/




