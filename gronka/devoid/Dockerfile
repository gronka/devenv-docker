FROM voidlinux/voidlinux
RUN xbps-install -Su
RUN xbps-install -y curl ca-certificates
RUN xbps-install -y xz gnupg
RUN xbps-install -y wget git vim
RUN xbps-install -y gcc gcc-c++
RUN xbps-install -y boost cmake make
# DLang install requirements
RUN xbps-install -y libevent libevent-devel
RUN xbps-install -y libressl libressl-devel

# DLang requirements
RUN curl -fsS http://code.dlang.org/files/dub-1.0.0-linux-x86_64.tar.gz | tar xfvz - -C /usr/local/bin/
RUN wget http://downloads.dlang.org/releases/2.x/2.071.2/dmd.2.071.2.linux.tar.xz
RUN tar xvf dmd.2.071.2.linux.tar.xz
ENV PATH "$PATH:/dmd2/linux/bin64"
ENV LD_LIBRARY_PATH "$LD_LIBRARY_PATH:/dmd2/linux/lib64"

# wt I think
#RUN apk add doxygen 
#RUN apk add graphicsmagick 
#RUN apk add libpq
#RUN apk add fcgi

RUN wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-amd64"
RUN chmod +x /usr/local/bin/gosu

RUN xbps-install -y redis 

RUN mkdir /dock
EXPOSE 9090/tcp

