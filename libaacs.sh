
sudo apt update
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


