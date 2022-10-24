
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
sudo apt install spyder
sudo apt install  python3-scipy python3-numpy python3-pandas

# C++ IDE
sudo apt install codeblocks





#######################
# internet
#=========================

# chromium
sudo apt install chromium-browser

# torbrowser
sudo apt install torbrowser-launcher



# dictionary
sudo apt install dict goldendict 

# text-to-speech
sudo apt-get install espeak



#######################
# media
#=========================

# media player
sudo apt install vlc

# graphics
sudo apt install gimp inkscape

# burnDVD
sudo apt install brasero


# youtube-dl
sudo apt update && sudo apt install ffmpeg
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
sudo wget https://yt-dl.org/downloads/latest/youtube-dl.sig -O youtube-dl.sig
gpg --verify youtube-dl.sig /usr/local/bin/youtube-dl
rm youtube-dl.sig


#######################
# system
#=========================

# virtualbox
sudo apt install virtualbox

# cpu-x
sudo apt install cpu-x

# bash command
sudo apt install pdfgrep
sudo apt install whois



#########################################################
#  ebook reader
#========================================================

sudo apt install calibre


# 
sudo apt install -y libtool
sudo apt-get install -y libgcrypt-dev
sudo apt-get install -y bison
sudo apt-get install -y byacc
sudo apt-get install -y flex

# hosts
# in dispxxxx: curl https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O hosts && qvm-copy-to-vm hosts debian-11
sudo cp ~/QubesIncoming/disp*/hosts /etc/




