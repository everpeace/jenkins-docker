FROM jenkins:1.625.3
MAINTAINER Shingo Omure <everpeace@gmail.com>

USER root

RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

RUN apt-get update && apt-get install jq

USER jenkins
