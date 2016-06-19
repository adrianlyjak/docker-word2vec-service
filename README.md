```
set -e
sudo apt-get update
sudo apt-get install -y git
curl -sSL https://get.docker.com/ | sh
git clone https://github.com/adrianlyjak/docker-word2vec-service
cd docker-word2vec-service
sudo docker build -t word2vec .
```
