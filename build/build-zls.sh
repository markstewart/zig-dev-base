#!/bin/sh
set -xe

export PATH=$PATH:/root/.local/bin

cd;
# main ZLS is broken
# git clone --recurse-submodules https://github.com/zigtools/zls
git clone --recurse-submodules https://github.com/sagehane/zls
cd zls
git checkout submodule
git submodule update
zig build -Drelease-safe
printf 'y\nVSCode\ny\ny\ny\ny\n' | ./zig-out/bin/zls config

