FROM gitpod/workspace-full-vnc

RUN wget -nc https://dl.winehq.org/wine-builds/winehq.key

RUN sudo apt-key add winehq.key

RUN sudo apt install -y wine-stable  

RUN wget https://bluemaxima.org/flashpoint/Flashpoint%209.0%20Infinity.exe


