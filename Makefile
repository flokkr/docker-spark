

VERSION ?= latest
URL ?= "http://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz"

build:
	echo $(URL) > spark/url
	docker build -t flokkr/spark:$(VERSION) spark
	docker tag flokkr/spark:$(VERSION) flokkr/spark:build
	docker build -t flokkr/spark-history:$(VERSION) spark-history
	docker build -t flokkr/spark-master:$(VERSION) spark-master
	docker build -t flokkr/spark-slave:$(VERSION) spark-slave

deploy:
	docker push flokkr/spark:$(VERSION)
	docker push flokkr/spark-history:$(VERSION)
	docker push flokkr/spark-master:$(VERSION)
	docker push flokkr/spark-slave:$(VERSION)

.PHONY: deploy build

