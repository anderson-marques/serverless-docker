FROM node:8-alpine as serverless
LABEL maintainer="anderson.mo.carvalho@gmail.com"
# Installs Serverless
RUN mkdir /root/.config
RUN chown -R $USER:$(id -gn $USER) /root/.config
RUN npm i serverless -g
CMD [ "serverless" ]
