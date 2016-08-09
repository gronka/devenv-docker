FROM ubuntu
RUN apt-get update
RUN apt-get install -y apt-utils curl
RUN apt-get install -y gcc g++ libboost-all-dev cmake
RUN apt-get install -y doxygen libgraphicsmagick-q16-3 libssl-dev libpq-dev libssl-dev libfcgi-dev
RUN apt-get install -y witty witty-dev
RUN curl -fsS https://dlang.org/install.sh | bash -s dmd
RUN mkdir /dproj
RUN ldconfig
