FROM flokkr/spark:build
RUN mkdir /tmp/spark-events
CMD ["/opt/spark/bin/spark-class org.apache.spark.deploy.master.Master --webui-port 9999"]
