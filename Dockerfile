FROM python:2.7.12
Maintainer hulb@live.cn
WORKDIR /root/PyOne

RUN apt update && apt install -y unzip
RUN wget https://github.com/hulb/PyOne/archive/master.zip && unzip master.zip && rm master.zip && mv -f PyOne-master/* /root/PyOne/ && cd /root/PyOne && pip install -r requirements.txt

