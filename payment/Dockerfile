FROM openjdk:8u162-jdk-stretch

LABEL maintainer="khalid@jennifersoft.com"

# Env Setup
ARG AGENT_PACKAGE
ENV PAYMENT_HOME /opt/edu
ENV IHOTEL_VERSION 2.0.5

# Update
RUN apt-get update && \
    apt-get install  -y --no-install-recommends vim

RUN mkdir -p ${PAYMENT_HOME}

WORKDIR ${PAYMENT_HOME}

RUN wget https://github.com/JENNIFER-University/IHotel/releases/download/v${IHOTEL_VERSION}/payment-${IHOTEL_VERSION}.zip && \
    wget https://github.com/JENNIFER-University/IHotel/releases/download/v${IHOTEL_VERSION}/check-${IHOTEL_VERSION}.zip && \
    wget -O jennifer_agent.zip ${AGENT_PACKAGE} && \
    unzip payment-${IHOTEL_VERSION} -d ipayment && \
    unzip check-${IHOTEL_VERSION} -d icheck && \
    rm payment*.zip && \
    rm check*.zip

COPY ./check.conf  ${PAYMENT_HOME}/icheck/check.conf
COPY ./check.sh  ${PAYMENT_HOME}/icheck/check.sh

RUN chmod +x ${PAYMENT_HOME}/icheck/*.sh && \
    chmod +x ${PAYMENT_HOME}/ipayment/*.sh


CMD [ "tail", "-f", "/dev/null" ]