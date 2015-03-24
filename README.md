# Redis image

## Requirements

You must have [Docker](https://www.docker.com/) >= 1.5.

## What's inside

* [redis](http://redis.io/download)

### Configuration

### Ports

You can bind ports :

* 6379

### Volumes

You can mount volumes :

* /etc/redis/redis.conf
* /var/lib/redis

## Usage

```bash
# pull (auto) and run
docker run \
  -d \
  --name redis \
  -p 6379:6379 \
  monsieurchico/redis
```