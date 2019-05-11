FROM alpine:3.9 as build
WORKDIR /build
RUN set -ex &&\
    apk add --no-cache --virtual .build-deps linux-headers git gcc g++ make cmake gperf libc-dev openssl-dev zlib-dev &&\
    git clone https://github.com/tdlib/td.git &&\
    mkdir -p td/build &&\
    cd td/build &&\
    export CXXFLAGS="" &&\
    cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr/local .. &&\
    cmake --build . --target install &&\
    apk del .build-deps &&\
    cd / &&\
    rm -rf /build/td
