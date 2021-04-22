FROM debian:buster-slim

ENV DEBIAN_FRONTEND noninteractive

RUN apt update
RUN apt -y install coreutils quilt parted qemu-user-static debootstrap zerofree zip \ 
dosfstools bsdtar libcap2-bin grep rsync xz-utils file git curl bc git sudo docker

RUN git clone https://github.com/RPi-Distro/pi-gen.git

RUN cd pi-gen && echo "IMG_NAME='Raspbian - cameraPI web'" > config && touch ./stage3/SKIP ./stage4/SKIP ./stage5/SKIP && touch ./stage4/SKIP_IMAGES ./stage5/SKIP_IMAGES

RUN mkdir -p /pi-gen/work/2021-04-22-Raspbian - cameraPI web/
RUN cd pi-gen && ./build.sh
