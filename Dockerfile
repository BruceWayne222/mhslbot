FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip pyrogram tgcrypto && pip3 install -U -r requirements.txt
RUN mkdir /mhslbot
WORKDIR /mhslbot
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
