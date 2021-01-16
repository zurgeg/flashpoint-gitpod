FROM gitpod/workspace-full-vnc

RUN wget -nc https://dl.winehq.org/wine-builds/winehq.key

RUN sudo apt-key add winehq.key

RUN sudo dpkg --add-architecture i386

RUN sudo apt-get update

RUN sudo apt install -y wine-stable wine32

RUN sudo apt install php libapache2-mod-php

RUN https://bluepload.unstable.life/flashpoint81infinitylinux.7z

RUN 7z x -so flashpoint81infinitylinux.7z -o /workspace/flashpoint-gitpod/flashpoint


