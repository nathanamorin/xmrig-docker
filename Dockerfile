FROM alpine:latest

ARG XMRIG_VERSION=6.16.2

RUN wget https://github.com/xmrig/xmrig/releases/download/v$XMRIG_VERSION/xmrig-$XMRIG_VERSION-linux-static-x64.tar.gz -O xmrig.tar.gz

RUN mkdir /xmrig && tar -xf xmrig.tar.gz -C /xmrig --strip-components=1 && rm xmrig.tar.gz

WORKDIR /xmrig

COPY ./run.sh run.sh

CMD ["./run.sh"]

