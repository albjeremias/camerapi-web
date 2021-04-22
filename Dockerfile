FROM debian:buster-slim

RUN apt-get install coreutils quilt parted qemu-user-static debootstrap zerofree zip \ 
dosfstools bsdtar libcap2-bin grep rsync xz-utils file git curl bc git

RUN git clone https://github.com/RPi-Distro/pi-gen.git

RUN ./build-docker.sh
