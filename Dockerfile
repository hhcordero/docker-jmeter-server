FROM ubuntu:14.04

MAINTAINER Hector Cordero <hhcordero@gmail.com>

ENV JMETER_VERSION 2.13
ENV JMETER_HOME /usr/local/apache-jmeter-${JMETER_VERSION}
ENV JMETER_BIN $JMETER_HOME/bin
ENV IP 127.0.0.1
ENV RMI_PORT 1099

RUN apt-get -qq update && \
    apt-get -yqq install openjdk-7-jre-headless unzip && \
    apt-get -q clean && \
    rm -rf /var/lib/apt/lists/*

COPY dependencies /tmp/dependencies

RUN tar -xzf /tmp/dependencies/apache-jmeter-${JMETER_VERSION}.tgz -C /usr/local && \
    unzip -oq "/tmp/dependencies/JMeterPlugins-*.zip" -d $JMETER_HOME && \
    apt-get -yqq purge unzip && \
    apt-get -yqq autoremove && \
    rm -rf /tmp/dependencies

ENV PATH $PATH:$JMETER_BIN

WORKDIR $JMETER_HOME

EXPOSE $RMI_PORT

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
