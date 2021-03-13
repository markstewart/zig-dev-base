cd;

curl -o clang+llvm-11.0.0-x86_64-linux-gnu-ubuntu-20.04.tar.xz -L https://github.com/llvm/llvm-project/releases/download/llvmorg-11.0.0/clang+llvm-11.0.0-x86_64-linux-gnu-ubuntu-20.04.tar.xz
tar -xvf ./clang+llvm-11.0.0-x86_64-linux-gnu-ubuntu-20.04.tar.xz 
rm ./clang+llvm-11.0.0-x86_64-linux-gnu-ubuntu-20.04.tar.xz 
mv clang+llvm-11.0.0-x86_64-linux-gnu-ubuntu-20.04 .local;