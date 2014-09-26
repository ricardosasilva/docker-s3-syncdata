# Base data image with AWS client
FROM ubuntu:14.04

RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq
RUN DEBIAN_FRONTEND=noninteractive apt-get upgrade -qq -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qq -y awscli

ADD run.sh /usr/local/bin/

VOLUME /data
CMD /usr/local/bin/run.sh