
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
    git 
Run add-apt-repository ppa:deadsnakes/ppa
Run add-apt-repository ppa:jonathonf/python-3.6
Run apt-get update
Run apt-get install python3.6
Run apt install python3-pip
Run python3.6 -m pip install -U setuptools
Run python3.6 -m pip install -U pyrogram
Run python3.6 -m pip install -U pyrogram[fast]
Run python3.6 -m pip install redis
Run apt-get install tor
Run apt-get install torsocks
RUN pip3 install --upgrade pip setuptools 
RUN pip3 install --upgrade pip

CMD ["bash","install.sh"]
