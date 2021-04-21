FROM apache/nifi:1.9.2
USER root

COPY ./conf/flow.xml.gz /opt/nifi/nifi-current/conf
COPY ./conf/nifi.properties /opt/nifi/nifi-current/conf
COPY ./conf/bootstrap.conf /opt/nifi/nifi-current/conf

RUN chown 1000:1000 /opt/nifi/nifi-current/conf/flow.xml.gz && \
    chmod 744 /opt/nifi/nifi-current/conf/flow.xml.gz

#COPY ./jars/* /opt/nifi/nifi-current/jars/

