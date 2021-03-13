#!/bin/sh
set -e

# cat << EOF >> /etc/apt/sources.list
# deb http://apt.llvm.org/focal/ llvm-toolchain-focal-12 main
# EOF
# wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key|sudo apt-key add -

# apt-get update
# apt-get -y install --no-install-recommends libllvm-12-ocaml-dev libllvm12 llvm-12 llvm-12-dev llvm-12-doc llvm-12-examples llvm-12-runtime 

# apt-get update;
# export DEBIAN_FRONTEND=noninteractive;

cd;
git clone https://github.com/ziglang/zig.git;
cd zig;

mkdir build;
cd build;
cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/.local -DCMAKE_PREFIX_PATH=$HOME/.local -DCMAKE_BUILD_TYPE=Release
make install;