ARG HADOOP_VERSION=latest
FROM flokkr/hadoop:${HADOOP_VERSION}
ARG URL
ENV CONF_DIR /opt/spark/conf
ENV HADOOP_CONF_DIR /opt/spark/conf
ENV HADOOP_DIR /opt/hadoop
WORKDIR /opt
RUN wget $URL -O spark.tar.gz && tar zxf spark.tar.gz && rm spark.tar.gz && mv spark* spark
WORKDIR /opt/spark
USER root
ADD sparkhadoop.sh /opt/launcher/plugins/030_sparkhadoop/sparkhadoop.sh
USER hadoop
ENV PATH $PATH:/opt/spark/bin
