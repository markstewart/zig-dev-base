# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.159.0/containers/cpp/.devcontainer/base.Dockerfile

# Image variants linked from this page:
# https://github.com/microsoft/vscode-dev-containers/tree/master/containers/cpp

ARG VARIANT="focal"
FROM mcr.microsoft.com/vscode/devcontainers/cpp:0-${VARIANT}

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends libxml2-dev zlib1g-dev

COPY build/get-llvm.sh .
RUN ./get-llvm.sh

COPY build/build-zig.sh .
RUN ./build-zig.sh

COPY build/build-zls.sh .
RUN ./build-zls.sh

