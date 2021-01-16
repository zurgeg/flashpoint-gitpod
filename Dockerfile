FROM gitpod/workspace-full-vnc

RUN wget -nc https://dl.winehq.org/wine-builds/winehq.key

RUN sudo apt-key add winehq.key

RUN sudo apt-get update

RUN sudo dpkg --add-architecture i386

RUN sudo apt install -y wine-stable libwine:i386

RUN wget https://bluemaxima.org/flashpoint/Flashpoint%209.0%20Infinity.exe


