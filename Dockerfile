FROM ubuntu:18.04 

RUN apt update -y &&\
    apt upgrade -y && \
    apt install curl -y && \
    apt install unzip -y && \
    curl -s -o awscliv2.zip https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip && \
    rm -rf ./aws && \
    apt purge unzip -y && \
    apt purge curl -y

WORKDIR /app

ENTRYPOINT ["aws"]
