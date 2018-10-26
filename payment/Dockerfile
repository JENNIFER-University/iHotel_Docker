FROM openjdk:8u171-alpine

LABEL maintainer="Khalid Saeed khalid@jennifersoft.com"

# Env Setup
ARG AGENT_PACKAGE
ENV PAYMENT_HOME /usr/local

# Update
RUN apk update && \
    apk add --no-cache vim curl

COPY ./get_package.sh /tmp/get_package.sh

WORKDIR /tmp

RUN sh get_package.sh && \
    wget -O ${PAYMENT_HOME}/jennifer_agent.zip ${AGENT_PACKAGE} && \
    mkdir ${PAYMENT_HOME}/ipayment && \
    mkdir ${PAYMENT_HOME}/icheck && \
    unzip payment.zip -d ${PAYMENT_HOME}/ipayment && \
    unzip check.zip -d ${PAYMENT_HOME}/icheck && \
    rm payment*.zip && \
    rm check*.zip


WORKDIR ${PAYMENT_HOME}

COPY ./check.conf  ${PAYMENT_HOME}/icheck/check.conf
COPY ./check.sh  ${PAYMENT_HOME}/icheck/check.sh

RUN chmod +x ${PAYMENT_HOME}/icheck/*.sh && \
    chmod +x ${PAYMENT_HOME}/ipayment/*.sh


CMD [ "tail", "-f", "/dev/null" ]