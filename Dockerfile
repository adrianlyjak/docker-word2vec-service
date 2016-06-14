FROM ubuntu
MAINTAINER Adrian Lyjak

RUN apt-get update
RUN apt-get install unzip -y
RUN mkdir -p /nlp/data
ARG file=QuestionBank-Stanford-1.0.zip
# ARG file=glove.42B.300d.zip
ADD http://nlp.stanford.edu/data/$file /nlp/data
RUN unzip /nlp/data/$file -d /nlp/data
