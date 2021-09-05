#!/bin/sh
set -xe

export PATH=$PATH:/root/.local/bin

cd;
git clone --recurse-submodules https://github.com/zigtools/zls
cd zls
zig build -Drelease-safe
printf 'y\nVSCode\ny\ny\ny\ny\n' | ./zig-out/bin/zls config

