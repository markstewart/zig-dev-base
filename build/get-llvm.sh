set -xe
cd;

CLANG_EXPORT_DIR_NAME=clang+llvm-12.0.1-x86_64-linux-gnu-ubuntu-;
CLANG_BUNDLE_NAME=${CLANG_EXPORT_DIR_NAME}16.04;

curl -o $CLANG_BUNDLE_NAME.tar.xz -L https://github.com/llvm/llvm-project/releases/download/llvmorg-12.0.1/$CLANG_BUNDLE_NAME.tar.xz;
tar -xvf ./$CLANG_BUNDLE_NAME.tar.xz;
rm ./$CLANG_BUNDLE_NAME.tar.xz;
mv $CLANG_EXPORT_DIR_NAME .local;