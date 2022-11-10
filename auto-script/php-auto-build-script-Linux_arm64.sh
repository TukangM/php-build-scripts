#! /bin/sh
sudo apt update
sudo apt install make autoconf automake libtool m4 wget gzip bzip2 bison g++ git cmake pkg-config re2c libtool-bin zip unzip curl
git clone https://github.com/TukangM/musl-cross-make
cd musl-cross-make
make install
cd ..
git clone https://github.com/TukangM/php-build-scripts-auto
cd php-build-scripts-auto
./compile.sh -t android-aarch64 -x -f
ls
zip -r php-compiled-for-Linux_arm64.zip bin/
curl --upload-file php-compiled-for-Linux_arm64.zip https://transfer.sh/ -H "Max-Days: 30"