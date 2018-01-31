

VERSION ?= latest
URL ?= "http://d3kbcqa49mib13.cloudfront.net/spark-2.2.0-bin-hadoop2.7.tgz"

build:
	echo $(URL) > url
	docker build -t flokkr/spark:$(VERSION) .

deploy:
	docker push flokkr/spark:$(VERSION)

.PHONY: deploy build

