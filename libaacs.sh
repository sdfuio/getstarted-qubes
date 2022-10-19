
sudo apt update

sudo apt-get install -y build-essential
sudo apt-get install -y autoconf
sudo apt-get install -y gcc-mingw-w64-x86-64 g++-mingw-w64-x86-64 mingw-w64-tools
sudo apt install -y libtool
sudo apt-get install -y libgcrypt-dev
sudo apt-get install -y bison
sudo apt-get install -y byacc
sudo apt-get install -y flex

git clone https://code.videolan.org/videolan/libaacs.git
cd libaacs
./bootstrap
./configure
make


