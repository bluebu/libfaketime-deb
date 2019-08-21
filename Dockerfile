FROM debian:stable
LABEL author="Constantin.Gruber@sixsentix.com"

RUN apt-get update && apt-get install -y git build-essential \
      && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/wolfcw/libfaketime /libfaketime
WORKDIR /libfaketime
RUN make && make install