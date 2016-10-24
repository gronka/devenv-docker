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
RUN curl -fsS https://dlang.org/install.sh | bash -s dmd
#RUN apk add wt-dev

RUN curl -fsS http://code.dlang.org/files/dub-1.0.0-linux-x86_64.tar.gz | tar xfvz - -C /usr/bin/

#RUN addgroup devgroup
#RUN adduser -D -G devgroup taylor
RUN mkdir /dock
#RUN chown -R taylor:devgroup /replica
EXPOSE 9090/tcp

#RUN apk add  gawk sed grep bc coreutils
RUN rm -rf /var/cache/apk/*
#RUN ldconfig

CMD /dock/dock.sh
