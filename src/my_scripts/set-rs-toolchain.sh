#!/bin/bash 

cd /src/linux

rustup override set $(/src/linux/scripts/min-tool-version.sh rustc)
rustup component add rust-src
cargo install --locked --version $(scripts/min-tool-version.sh bindgen) bindgen
