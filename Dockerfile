FROM ubuntu:14.04

MAINTAINER Hector Cordero <hhcordero@gmail.com>

ENV JMETER_VERSION 2.13
ENV JMETER_HOME /usr/local/apache-jmeter-${JMETER_VERSION}
ENV JMETER_BIN $JMETER_HOME/bin
ENV IP 127.0.0.1
ENV RMI_PORT 1099

RUN set -x && \
    apt-get update && \
    apt-get -y install openjdk-7-jre-headless unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY dependencies /tmp/dependencies

RUN cd /tmp/dependencies && \
    tar -xzf apache-jmeter-${JMETER_VERSION}.tgz -C /usr/local && \
    unzip -o JMeterPlugins-Standard-1.3.0.zip -d $JMETER_HOME && \
    unzip -o JMeterPlugins-Extras-1.3.0.zip -d $JMETER_HOME && \
    unzip -o JMeterPlugins-ExtrasLibs-1.3.0.zip -d $JMETER_HOME && \
    rm -rf /tmp/dependencies

ENV PATH $PATH:$JMETER_BIN

WORKDIR $JMETER_HOME

EXPOSE $RMI_PORT

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
