FROM python:2
MAINTAINER huibiaoli <huibiaoli@gmail.com>
RUN apt-get update && apt-get install -y \
    build-essential \
    autoconf \
    libtool \
    pkg-config