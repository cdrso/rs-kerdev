FROM ubuntu:latest

RUN apt update
RUN apt install -y software-properties-common wget gnupg2 lsb-release

RUN apt install -y bc \
    build-essential \
    bison \
    curl \
    clang-15 \
    flex \
    git \
    gcc \
    gdb \
    libelf-dev \
    libssl-dev \
    lld \
    ncurses-dev \
    make \
    tmux \
    qemu-system-x86 \
    vim

ENV PATH="/root/.cargo/bin:${PATH}"
ENV MAKEFLAGS="-j8"
ENV LLVM="1"
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

RUN ln -sf /usr/bin/clang-15 /usr/bin/clang
RUN ln -sf /usr/bin/llvm-ar-15 /usr/bin/llvm-ar
RUN ln -sf /usr/bin/llvm-nm-15 /usr/bin/llvm-nm
RUN ln -sf /usr/bin/llvm-objcopy-15 /usr/bin/llvm-objcopy
RUN ln -sf /usr/bin/llvm-strip-15 /usr/bin/llvm-strip
RUN ln -sf /usr/bin/llvm-objdump-15 /usr/bin/llvm-objdump

WORKDIR /src/
