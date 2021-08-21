# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.159.0/containers/cpp/.devcontainer/base.Dockerfile

# Image variants linked from this page:
# https://github.com/microsoft/vscode-dev-containers/tree/master/containers/cpp

FROM mcr.microsoft.com/vscode/devcontainers/cpp:0-focal AS base

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends libxml2-dev zlib1g-dev

FROM base as builder
COPY build/get-llvm.sh .
RUN ./get-llvm.sh

COPY build/build-zig.sh .
RUN ./build-zig.sh

COPY build/build-zls.sh .
RUN ./build-zls.sh

FROM base
COPY --from=builder /root/.local/bin/zig /root/zls/zig-out/bin/zls /usr/local/bin/
COPY --from=builder /root/.local/lib/zig /usr/local/lib/
COPY --from=builder /etc/zls.json /etc/zls.json

