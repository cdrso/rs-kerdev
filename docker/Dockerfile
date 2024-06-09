from archlinux:latest
RUN pacman -Sy archlinux-keyring --noconfirm
RUN pacman -Scc --noconfirm
RUN pacman-key --init
RUN pacman-key --populate archlinux
RUN pacman -Syuu --noconfirm \
	bc \
    base-devel \
	bison \
	curl \
	clang \
	cpio \
	diffutils \
	flex \
	git \
	gcc \
    gdb \
	llvm \
	libelf \
	lld \
	ncurses \
	make \
    tmux \
	qemu-emulators-full \
	qemu-system-x86 \
    vim

ENV PATH="/root/.cargo/bin:${PATH}"
ENV MAKEFLAGS="-j16"
ENV LLVM="1"

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

WORKDIR /src/
