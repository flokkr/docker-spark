FROM elek/bigdata-base:2
ADD url ./
RUN wget `cat url` -O spark.tar.gz && tar zxf spark.tar.gz && rm spark.tar.gz && mv /opt/spark* /opt/spark
