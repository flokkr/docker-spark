
HADOOP_VERSION?=latest
VERSION ?= latest
URL ?= "http://apache.mirrors.tds.net/spark/spark-2.2.1/spark-2.2.1-bin-without-hadoop.tgz"

build:
	docker build --build-arg URL=$(URL) --build-arg HADOOP_VERSION=$(HADOOP_VERSION) -t flokkr/spark:$(VERSION) .

deploy:
	docker push flokkr/spark:$(VERSION)

.PHONY: deploy build

