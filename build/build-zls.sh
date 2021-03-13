#!/bin/sh
set -e

export PATH=$PATH:/root/.local/bin

cd;
git clone --recurse-submodules https://github.com/zigtools/zls
cd zls
zig build -Drelease-safe
printf 'y\ny\ny\ny\nVSCode\n' | zig build config

