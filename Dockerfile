FROM Linux 4.4.0-1094

RUN apt-get update && apt upgrade -y && apt-get install sudo -y

RUN apt-get install -y\
    coreutils \
    gifsicle \
    apt-utils \
    bash \
    wget \
    python \
    python-dev \
    python3 \
    python3-dev 

RUN pip3 install --upgrade pip setuptools 
RUN pip3 install --upgrade pip
RUN add-apt-repository ppa:deadsnakes/ppa
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update
RUN apt-get install python3.6
RUN apt install python3-pip
RUN python3.6 -m pip install -U setuptools
RUN python3.6 -m pip install -U pyrogram
RUN python3.6 -m pip install -U pyrogram[fast]
RUN python3.6 -m pip install redis
RUN apt-get install tor
RUN apt-get install torsocks
RUN pip3 install --upgrade pip setuptools 
RUN pip3 install --upgrade pip
RUN pip install -r requirements.txt

CMD ["bash","./install.sh"]
