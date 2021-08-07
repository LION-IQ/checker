FROM kalilinux/kali-rolling

RUN apt-get update && apt upgrade -y && apt-get install sudo -y

RUN apt-get install -y\
    coreutils \
    gifsicle \
    apt-utils \
    bash \
    curl \
    libmagic-dev \
    tesseract-ocr \
    tesseract-ocr-eng \
    imagemagick \
    figlet \
    gcc \
    g++ \
    git \
  

RUN pip3 install --upgrade pip setuptools 
RUN pip3 install --upgrade pip

CMD ["bash","./H1M4N5HU0P/start.sh"]
