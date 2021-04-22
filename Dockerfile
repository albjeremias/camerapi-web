FROM debian:buster-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt update
RUN apt -y install coreutils quilt parted qemu-user-static debootstrap zerofree zip \ 
dosfstools bsdtar libcap2-bin grep rsync xz-utils file git curl bc git

RUN git clone https://github.com/RPi-Distro/pi-gen.git


RUN cd pi-gen && ./build-docker.sh
