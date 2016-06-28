FROM ubuntu
MAINTAINER Adrian Lyjak
EXPOSE 8000

RUN apt-get update
RUN apt-get install unzip -y
RUN apt-get install git -y
RUN apt-get install python -y
RUN apt-get install python-pip -y
RUN git clone https://github.com/3Top/word2vec-api /nlp
RUN pip install -r /nlp/requirements.txt
RUN mkdir -p /nlp/data
ADD vocab.txt /nlp/data

CMD python nlp/word2vec-api.py --model nlp/data/vocab.txt --host "0.0.0.0" --port 5000
