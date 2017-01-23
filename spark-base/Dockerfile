FROM elek/hadoop:3.0.0-alpha2
ENV CONF_DIR /opt/spark/conf
ENV HADOOP_CONF_DIR /opt/spark/conf
ADD url ./
RUN wget `cat url` -O spark.tar.gz && tar zxf spark.tar.gz && rm spark.tar.gz && mv spark* spark
RUN cp /opt/hadoop/share/hadoop/client/hadoop-client-api-3.0.0-alpha2.jar /opt/spark/jars
RUN cp /opt/hadoop/share/hadoop/client/hadoop-client-runtime-3.0.0-alpha2.jar /opt/spark/jars
ADD https://repo1.maven.org/maven2/org/slf4j/slf4j-log4j12/1.7.10/slf4j-log4j12-1.7.10.jar /opt/spark/jars
ADD https://repo1.maven.org/maven2/org/apache/htrace/htrace-core4/4.1.0-incubating/htrace-core4-4.1.0-incubating.jar /opt/spark/jars
ADD https://repo1.maven.org/maven2/org/slf4j/slf4j-api/1.7.10/slf4j-api-1.7.10.jar /opt/spark/jars/
ADD https://repo1.maven.org/maven2/log4j/log4j/1.2.17/log4j-1.2.17.jar /opt/spark/jars
ADD defaults/* defaults/
