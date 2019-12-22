FROM alpine:latest

MAINTAINER S. Utku DARILMAZ <utkudarilmaz@gmail.com>
LABEL desription="hping3 tool building on Alpine:latest"
LABEL version="1.0"

RUN wget http://www.hping.org/hping3-20051105.tar.gz && \
  tar -xvzf hping3-20051105.tar.gz && \
  cd hping3-20051105 && \
  sed -i '12i \\t|| defined(__x86_64__) \\' bytesex.h && \
  apk add gcc gcc-objc make libpcap-dev tcl-dev && \
  ln -s /usr/include/pcap-bpf.h /usr/include/net/bpf.h && \
  ./configure && make && make install && \
  rm -rf ../hping3*

ENTRYPOINT ["hping3"]
