ARG BASE=latest
FROM flokkr/base:${BASE}
ARG ARTIFACTDIR
ARG URL
ENV SPARK_HOME /opt/spark
ENV CONF_DIR /opt/spark/conf
ENV HADOOP_CONF_DIR /opt/spark/conf
ENV HADOOP_DIR /opt/hadoop
WORKDIR /opt/spark
ADD sparkhadoop.sh /opt/launcher/plugins/030_sparkhadoop/sparkhadoop.sh
ADD entrypoint.sh /opt/launcher/plugins/750_spark/spark.sh
RUN useradd --uid 1000 spark --gid 1000 -G flokkr --home /opt/hadoop && chown spark /opt
USER spark
ADD --chown=spark:flokkr ${ARTIFACTDIR} /opt/spark
RUN sudo chown spark:flokkr /opt/spark
ENV PATH $PATH:/opt/spark/bin
