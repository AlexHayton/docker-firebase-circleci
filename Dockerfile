FROM cimg/node:lts

RUN sudo apt-get update &&\
    sudo apt-get install software-properties-common openjdk-8-jre-headless &&\
    sudo rm -rf /var/lib/apt/lists/*
RUN sudo update-java-alternatives --set java-1.8.0-openjdk-amd64

RUN sudo npm install -g firebase-tools