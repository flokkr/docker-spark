FROM elek/bigdata-base
ADD url ./
RUN wget `cat url` -O spark.tar.gz && tar zxf spark.tar.gz && rm spark.tar.gz && mv /opt/spark* /opt/spark
