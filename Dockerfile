FROM python:2
MAINTAINER huibiaoli <huibiaoli@gmail.com>
RUN mkdir /data
VOLUME ["/data"]
COPY sources.list /etc/apt/
RUN apt-get update && apt-get install -y \
    build-essential \
    autoconf \
    libtool \
    pkg-config \
    python-opengl \
    python-imaging \
    python-pyrex \
    python-pyside.qtopengl \
    idle-python2.7 \
    qt4-dev-tools \
    qt4-designer \
    libqtgui4 \
    libqtcore4 \
    libqt4-xml \
    libqt4-test \
    libqt4-script \
    libqt4-network \
    libqt4-dbus \
    python-qt4 \
    python-qt4-gl \
    libgle3 \
    python-dev \
    libmagickwand-dev && \
    pip install scgi \
    setproctitle \
    Wand
EXPOSE 4302
CMD ["python", "/data/image.py", "start", "--host=127.0.0.1", "--port=4302", "--max_children=2"]