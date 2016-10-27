FROM voidlinux/voidlinux
RUN xbps-install -Su
RUN xbps-install -Sy wget git vim
RUN xbps-install -Sy curl
RUN xbps-install -Sy gcc gcc-c++
RUN xbps-install -Sy boost cmake
# DLang install requirements
RUN xbps-install -Sy xz gnupg
RUN xbps-install -Sy libevent libevent-devel
RUN xbps-install -Sy libressl libressl-devel

#RUN apk add doxygen 
#RUN apk add graphicsmagick 
#RUN apk add libpq
#RUN apk add fcgi
# DLang requirements
RUN curl -fsS http://code.dlang.org/files/dub-1.0.0-linux-x86_64.tar.gz | tar xfvz - -C /usr/local/bin/
RUN wget http://downloads.dlang.org/releases/2.x/2.071.2/dmd.2.071.2.linux.tar.xz
RUN tar xvf dmd.2.071.2.linux.tar.xz


#RUN ln -s /dmd2/linux/bin64/* /usr/local/bin/
#RUN ln -s /dmd2/linux/lib64/* /usr/local/lib/
#RUN apk add wt-dev
#RUN echo "PATH=$PATH:/dmd2/linux/bin64" >> /etc/environment
#RUN echo "LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/dmd2/linux/bin64" >> /etc/environment
ENV PATH "$PATH:/dmd2/linux/bin64"
ENV LD_LIBRARY_PATH "$LD_LIBRARY_PATH:/dmd2/linux/bin64"


#RUN addgroup devgroup
#RUN adduser -D -G devgroup taylor
RUN mkdir /dock
#RUN chown -R taylor:devgroup /replica
EXPOSE 9090/tcp

#RUN apk add  gawk sed grep bc coreutils
#RUN rm -rf /var/cache/apk/*
#RUN ldconfig

RUN xbps-install -Sy make
# required for gcc-multilib
RUN xbps-install -Sy void-repo-multilib
#RUN xbps-install -Sy libvtv-devel libcilkrts-devel libatomic-devel libsanitizer-devel
#RUN xbps-install -Sy libitm-devel libgomp-devel libssp-devel
#RUN xbps-install -Sy libgcc-32bit
RUN xbps-install -Sy gcc-multilib
RUN xbps-install -Sy xdg-utils
#vibe.d additional setup
RUN wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
RUN tar -xf libevent-2.0.21-stable.tar.gz
WORKDIR /libevent-2.0.21-stable
RUN ./configure
RUN make
RUN make install
RUN ldconfig

RUN xbps-install -Sy redis 

#CMD /dock/dock.sh
