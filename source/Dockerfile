# CHROMA OS: FACTORY (FRACTAL EDITION)
# Crystal Zero-Write Architecture

FROM rust:latest AS builder
RUN apt-get update && apt-get install -y musl-tools

WORKDIR /usr/src/chroma_os
COPY Cargo.toml .
# Dependency Caching Logic
RUN mkdir src && echo "fn main() {}" > src/main.rs && echo "fn main() {}" > src/lib.rs
RUN mkdir -p src/core && touch src/core/mod.rs

COPY src ./src

# CRYSTAL OPTIMIZATION: Native CPU, No debug info
RUN RUSTFLAGS="-C target-cpu=native -C opt-level=3" cargo build --release

# --- ISO ASSEMBLY ---
FROM alpine:latest
RUN apk add --no-cache xorriso mtools syslinux grub-efi grub-bios linux-lts

WORKDIR /iso_build
RUN mkdir -p isofiles/boot/grub isofiles/chroma

# Clean Base System
RUN cp /boot/vmlinuz-lts isofiles/boot/kernel.img
RUN cp /boot/initramfs-lts isofiles/boot/initrd.img

# Implant the Fractal Core
COPY --from=builder /usr/src/chroma_os/target/release/kernel /isofiles/chroma/chroma_kernel
COPY --from=builder /usr/src/chroma_os/target/release/hal /isofiles/chroma/chroma_hal
COPY chroma_launcher.sh /isofiles/chroma/init.sh
RUN chmod +x /isofiles/chroma/init.sh

# GRUB CONFIG: CRYSTAL MODE (RAM ONLY, NO SWAP)
RUN echo 'set timeout=0' > isofiles/boot/grub/grub.cfg
RUN echo 'set default=0' >> isofiles/boot/grub/grub.cfg
RUN echo 'menuentry "Chroma OS (Fractal Singularity)" {' >> isofiles/boot/grub/grub.cfg
RUN echo '  linux /boot/kernel.img quiet noswap hugepages=always hardware_protect=1 init=/chroma/init.sh' >> isofiles/boot/grub/grub.cfg
RUN echo '  initrd /boot/initrd.img' >> isofiles/boot/grub/grub.cfg
RUN echo '}' >> isofiles/boot/grub/grub.cfg

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
