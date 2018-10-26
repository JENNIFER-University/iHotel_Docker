FROM tomcat:8.5-jre8-alpine

LABEL maintainer="Khalid Saeed khalid@jennifersoft.com"

# Update
RUN apk update && \
    apk add --no-cache vim curl

# Env Setup
ENV TOMCAT_HOME /usr/local/tomcat
ENV AGENT_HOME /usr/local/jennifer
ARG AGENT_PACKAGE

# Copy Required Files
COPY ./context.xml ${TOMCAT_HOME}/conf/
COPY ./app.conf ${TOMCAT_HOME}/bin/
COPY ./get_package.sh /tmp/get_package.sh

WORKDIR /tmp

# iHotel Application
RUN sh get_package.sh && \
    unzip ihotel.zip && \
    mkdir /usr/local/stress && \
    unzip stress.zip -d /usr/local/stress && \
    chmod +x /usr/local/stress/*.sh && \
    mv mysql-connector-java-*.jar ${TOMCAT_HOME}/lib/ && \
    mv ihotel.war ${TOMCAT_HOME}/webapps/ && \
    rm *.zip

# Agent 
RUN mkdir -p ${AGENT_HOME} && \
    cd ${AGENT_HOME} && \
    wget -O jennifer_agent.zip ${AGENT_PACKAGE}
    
WORKDIR ${AGENT_HOME}

CMD [ "tail", "-f", "/dev/null" ]