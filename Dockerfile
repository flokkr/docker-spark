ARG HADOOP_VERSION=latest
FROM flokkr/hadoop:${HADOOP_VERSION}
ARG URL=http://apache.mirrors.tds.net/spark/spark-2.2.1/spark-2.2.1-bin-without-hadoop.tgz
ENV CONF_DIR /opt/spark/conf
ENV HADOOP_CONF_DIR /opt/spark/conf
ENV HADOOP_DIR /opt/hadoop
WORKDIR /opt
RUN wget $URL -O spark.tar.gz && tar zxf spark.tar.gz && rm spark.tar.gz && mv spark* spark
WORKDIR /opt/spark
ENV PATH $PATH:/opt/spark/bin
