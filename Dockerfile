FROM andrioni/mesos:0.21.0

# Many thanks to Mike Babineau <mike@thefactory.com>
MAINTAINER Alessandro Andrioni <alessandro.andrioni@dafiti.com.br>

# Download Marathon
ADD http://downloads.mesosphere.io/marathon/v0.7.6/marathon-0.7.6.tgz /tmp/marathon.tgz
RUN mkdir -p /opt/marathon && tar xzf /tmp/marathon.tgz -C /opt/marathon --strip=1 && rm -f /tmp/marathon.tgz

USER root
EXPOSE 8080

ENTRYPOINT ["/opt/marathon/bin/start"]
