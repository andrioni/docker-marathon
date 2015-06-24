FROM andrioni/mesos:0.22.1

# Many thanks to Mike Babineau <mike@thefactory.com>
MAINTAINER Alessandro Andrioni <alessandro.andrioni@dafiti.com.br>

# Download Marathon
ADD http://downloads.mesosphere.io/marathon/v0.8.1/marathon-0.8.1.tgz /tmp/marathon.tgz
RUN mkdir -p /opt/marathon && tar xzf /tmp/marathon.tgz -C /opt/marathon --strip=1 && rm -f /tmp/marathon.tgz

USER root
EXPOSE 8080

ENTRYPOINT ["/opt/marathon/bin/start"]
