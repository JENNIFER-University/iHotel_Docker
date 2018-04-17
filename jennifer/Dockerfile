FROM openjdk:7u151-jdk-jessie

LABEL maintainer="khalid@jennifersoft.com"

# ENV VARIABLES
ARG SERVER_PACKAGE
ENV JENNIFER_HOME "/opt/jennifer"

# CREATE JENNIFER HOME
RUN mkdir -p ${JENNIFER_HOME}

WORKDIR ${JENNIFER_HOME}

RUN wget -O jennifer_server.zip ${SERVER_PACKAGE} && \
    unzip jennifer_server.zip


CMD [ "tail", "-f", "/dev/null" ]