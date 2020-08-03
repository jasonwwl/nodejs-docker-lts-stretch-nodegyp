FROM node:lts-stretch

RUN ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata
COPY .npmrc /root/.npmrc
RUN npm config ls -l
RUN npm i npm -g