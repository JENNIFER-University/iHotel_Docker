FROM openjdk:8u171-alpine

LABEL maintainer="Khalid Saeed khalid@jennifersoft.com"

ARG SERVER_PACKAGE
ENV JENNIFER_HOME /usr/local/jennifer

# Update
RUN apk update && \
    apk add --no-cache vim curl

RUN mkdir ${JENNIFER_HOME}

WORKDIR ${JENNIFER_HOME}

RUN wget -O jennifer_server.zip ${SERVER_PACKAGE} && \
    unzip jennifer_server.zip


CMD [ "tail", "-f", "/dev/null" ]