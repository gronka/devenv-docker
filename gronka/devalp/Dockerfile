FROM alpine
RUN apk update
RUN apk add bash wget curl git
RUN apk add vim
RUN apk add gcc g++ boost cmake

#RUN apk add doxygen 
#RUN apk add graphicsmagick 
#RUN apk add libpq
#RUN apk add fcgi
# DLang requirements
RUN apk add xz
RUN apk add tar
RUN apk add gnupg
RUN apk add openssl
RUN apk add libevent
RUN apk add libc6-compat
RUN wget http://downloads.dlang.org/releases/2.x/2.071.2/dmd.2.071.2.linux.tar.xz
RUN tar xvf dmd.2.071.2.linux.tar.xz
RUN ln -s /dmd2/linux/bin64/* /usr/local/bin/
RUN ln -s /dmd2/linux/lib64/* /usr/local/lib/
#RUN apk add wt-dev

RUN curl -fsS http://code.dlang.org/files/dub-1.0.0-linux-x86_64.tar.gz | tar xfvz - -C /usr/local/bin/

#RUN addgroup devgroup
#RUN adduser -D -G devgroup taylor
RUN mkdir /dock
#RUN chown -R taylor:devgroup /replica
EXPOSE 9090/tcp

#RUN apk add  gawk sed grep bc coreutils
#RUN rm -rf /var/cache/apk/*
#RUN ldconfig

CMD /dock/dock.sh
