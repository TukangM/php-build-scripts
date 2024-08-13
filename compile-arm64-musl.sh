#!/bin/bash
sudo apt update
sudo apt install make autoconf automake libtool-bin m4 wget gzip bzip2 bison g++ git cmake pkg-config re2c ca-certificates -y
git clone https://github.com/TukangM/musl-cross-make
cd musl-cross-make
sudo make install -j10
cd ..
