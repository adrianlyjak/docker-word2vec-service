FROM ubuntu
MAINTAINER Adrian Lyjak

RUN apt-get update
RUN apt-get install unzip -y
RUN apt-get install git -y
RUN apt-get install python -y
RUN apt-get install python-pip -y
RUN git clone https://github.com/3Top/word2vec-api /nlp
RUN pip install -r /nlp/requirements.txt
RUN mkdir /nlp/data
# ENV zipfile=QuestionBank-Stanford-1.0.zip
ENV zipfile=glove.42B.300d.zip
ADD http://nlp.stanford.edu/data/$zipfile /nlp/data
RUN unzip /nlp/data/$zipfile -d /nlp/data
