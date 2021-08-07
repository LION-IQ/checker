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
sudo add-apt-repository ppa:deadsnakes/ppa
sudo add-apt-repository ppa:jonathonf/python-3.6
sudo apt-get update
sudo apt-get install python3.6
sudo apt install python3-pip
sudo python3.6 -m pip install -U setuptools
sudo python3.6 -m pip install -U pyrogram
sudo python3.6 -m pip install -U pyrogram[fast]
sudo python3.6 -m pip install redis
sudo apt-get install tor
sudo apt-get install torsocks
RUN pip3 install --upgrade pip setuptools 
RUN pip3 install --upgrade pip
RUN pip install -r requirements.txt

CMD ["bash","./install.sh"]
