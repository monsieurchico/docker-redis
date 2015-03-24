#
# Redis Dockerfile
# git@github.com:monsieurchico/docker-redis.git
#
FROM dockerfile/ubuntu
MAINTAINER Romain Derocle "rderocle@gmail.com"

# prevent debian errors
ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_US.UTF-8

# updates
RUN \
    apt-get update && \
    apt-get install -y --force-yes redis-server && \
    rm -rf /var/lib/apt/lists/*

# expose ports
EXPOSE 6379

# volumes
VOLUME ["/etc/redis/redis.conf", "/var/lib/redis"]

# add launch script
COPY ./resources/startup.sh /startup.sh

# define entrypoint
ENTRYPOINT ["/bin/bash", "/startup.sh"]

# define workdir
WORKDIR /