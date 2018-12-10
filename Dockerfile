FROM ubuntu

RUN apt-get update && apt-get install -y gcc

RUN apt-get install -y build-essential

COPY . /rtc-term

WORKDIR /rtc-term/src

RUN ./build.sh build

