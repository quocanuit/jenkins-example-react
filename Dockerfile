FROM jenkins/agent:alpine-jdk21
USER root
RUN apk add --update nodejs npm
RUN npm install -g grunt grunt-cli
RUN apk add docker
EXPOSE 3000/tcp
ENV DOCKER_TLS_CERTDIR=/certs