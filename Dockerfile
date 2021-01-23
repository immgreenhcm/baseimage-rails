FROM ruby:2.5

ENV TZ=Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update \
    && apt-get install -y gcc g++ make curl dirmngr apt-transport-https lsb-release ca-certificates \ 
 && curl -sL https://deb.nodesource.com/setup_12.x | bash -  \
 && apt-get install -y nodejs
