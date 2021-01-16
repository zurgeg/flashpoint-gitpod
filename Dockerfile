FROM gitpod/workspace-full-vnc

RUN wget -nc https://dl.winehq.org/wine-builds/winehq.key

RUN sudo apt-key add winehq.key

RUN sudo dpkg --add-architecture i386

RUN sudo apt-get update

RUN sudo apt install -y wine-stable wine32

RUN sudo apt install -y php libapache2-mod-php

RUN sudo apt-get install -y p7zip p7zip-full libnss3

RUN wget https://bluepload.unstable.life/flashpoint-infinity-8-2-2-amd64-deb.7z

RUN 7z x flashpoint-infinity-8-2-2-amd64-deb.7z "-o/tmp/fp"

RUN sudo apt install /tmp/fp/flashpoint-infinity_8.2-2_amd64.deb


