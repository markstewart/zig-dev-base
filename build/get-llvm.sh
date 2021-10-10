set -xe
cd;

CLANG_VERSION=13.0.0
CLANG_BUNDLE_NAME=clang+llvm-${CLANG_VERSION}-x86_64-linux-gnu-ubuntu-16.04;

curl -o $CLANG_BUNDLE_NAME.tar.xz -L https://github.com/llvm/llvm-project/releases/download/llvmorg-${CLANG_VERSION}/$CLANG_BUNDLE_NAME.tar.xz;
tar -xvf ./$CLANG_BUNDLE_NAME.tar.xz;
rm ./$CLANG_BUNDLE_NAME.tar.xz;
mv $CLANG_BUNDLE_NAME .local;