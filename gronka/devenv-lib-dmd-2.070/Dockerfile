FROM gronka/devenv-lib
#RUN apt-get install -y xz-utils wget libstdc++5
#RUN cd /root
#RUN wget http://downloads.dlang.org/releases/2.x/2.070.2/dmd.2.070.2.linux.tar.xz
#RUN curl -fsS https://dlang.org/install.sh | bash -s dmd
RUN apt-get install wget
RUN	wget http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list
RUN	wget -qO - https://dlang.org/d-keyring.gpg | apt-key add -
RUN	apt-get update && apt-get install -y --allow-unauthenticated dmd-bin=2.070.2-0 libphobos2-dev=2.070.2-0 dub
RUN apt-get update && apt-get install libevent-dev libssl-dev

RUN ldconfig
