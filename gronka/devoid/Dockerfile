FROM voidlinux/voidlinux
RUN xbps-install -Su
RUN xbps-install -Sy wget git vim
RUN xbps-install -Sy curl
RUN xbps-install -Sy gcc gcc-c++
RUN xbps-install -Sy boost cmake
# DLang install requirements
RUN xbps-install -Sy xz gnupg
RUN xbps-install -Sy libevent

#RUN apk add doxygen 
#RUN apk add graphicsmagick 
#RUN apk add libpq
#RUN apk add fcgi
# DLang requirements
RUN curl -fsS http://code.dlang.org/files/dub-1.0.0-linux-x86_64.tar.gz | tar xfvz - -C /usr/local/bin/
RUN wget http://downloads.dlang.org/releases/2.x/2.071.2/dmd.2.071.2.linux.tar.xz
RUN tar xvf dmd.2.071.2.linux.tar.xz
RUN ln -s /dmd2/linux/bin64/* /usr/local/bin/
RUN ln -s /dmd2/linux/lib64/* /usr/local/lib/
#RUN apk add wt-dev


#RUN addgroup devgroup
#RUN adduser -D -G devgroup taylor
RUN mkdir /dock
#RUN chown -R taylor:devgroup /replica
EXPOSE 9090/tcp

#RUN apk add  gawk sed grep bc coreutils
#RUN rm -rf /var/cache/apk/*
#RUN ldconfig

CMD /dock/dock.sh
