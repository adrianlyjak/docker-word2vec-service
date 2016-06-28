#!/bin/bash
FILE=glove.42B.300d.zip
WIDTH=300
HEIGHT=1917494
curl -O http://nlp.stanford.edu/data/$FILE
echo "$WIDTH $HEIGHT" > dimensions.txt
cat dimensions.txt $FILE > vocab.txt

