FROM tomcat:8.5-jre8-alpine


LABEL maintainer="khalid@jennifersoft.com"

# Env Setup
ENV TOMCAT_HOME /usr/local/tomcat
ENV AGENT_HOME /usr/local/jennifer
ENV IHOTEL_VERSION 2.0.5
ARG AGENT_PACKAGE

# Copy Required Files
COPY ./context.xml ${TOMCAT_HOME}/conf/
COPY ./app.conf ${TOMCAT_HOME}/bin/

WORKDIR /tmp

# iHotel Application
RUN wget https://github.com/JENNIFER-University/IHotel/releases/download/v${IHOTEL_VERSION}/ihotel-${IHOTEL_VERSION}.zip && \
    wget https://github.com/JENNIFER-University/IHotel/releases/download/v${IHOTEL_VERSION}/stress-${IHOTEL_VERSION}.zip && \
    unzip ihotel-${IHOTEL_VERSION} && \
    mkdir /usr/local/stress && \
    unzip stress-${IHOTEL_VERSION} -d /usr/local/stress && \
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