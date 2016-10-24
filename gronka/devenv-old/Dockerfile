FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y apt-utils curl wget git
RUN apt-get install -y gcc g++ libboost-all-dev cmake
RUN apt-get install -y doxygen libgraphicsmagick-q16-3 libssl-dev libpq-dev libfcgi-dev libevent-dev
RUN apt-get install -y witty witty-dev
RUN apt-get install -y vim

RUN wget http://master.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list  
RUN wget -qO - https://dlang.org/d-keyring.gpg | apt-key add - 
RUN apt-get update && apt-get install -y --allow-unauthenticated dmd-bin=2.070.2-0 libphobos2-dev=2.070.2-0 dub  

RUN groupadd devgroup
RUN useradd -ms devgroup taylor
RUN usermod -a -G devgroup taylor
RUN mkdir /replica
RUN chown -R taylor:devgroup /replica
EXPOSE 9090/tcp

RUN ldconfig
