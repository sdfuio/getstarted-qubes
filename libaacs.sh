
sudo apt update

sudo apt-get install build-essential
sudo apt-get install autoconf
sudo apt-get install -y gcc-mingw-w64-x86-64 g++-mingw-w64-x86-64 mingw-w64-tools
sudo apt install libtool -y
sudo apt-get install -y libgcrypt-dev
sudo apt-get install bison -y
sudo apt-get install byacc -y
sudo apt-get install flex -y

git clone https://code.videolan.org/videolan/libaacs.git
cd libaacs
./bootstrap
./configure
make


