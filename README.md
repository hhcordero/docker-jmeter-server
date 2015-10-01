# JMeter in Server Mode

[![](https://badge.imagelayers.io/hhcordero/docker-jmeter-server:latest.svg)](https://imagelayers.io/?images=hhcordero/docker-jmeter-server:latest 'Get your own badge on imagelayers.io')

### Supported Tags

- [`latest`](https://github.com/hhcordero/docker-jmeter-server/tree/master/alpine)
- [`alpine`](https://github.com/hhcordero/docker-jmeter-server/tree/master/alpine)
- [`ubuntu`](https://github.com/hhcordero/docker-jmeter-server)

Docker image for JMeter in server mode running Minimal Alpine Linux or Ubuntu. Make sure to open port 1099. You also need the public ip (see environment variable 'IP' below).

### Usage

On cli, execute the following:

```sh
$   docker run \
        --detach \
        --publish 1099:1099 \
        --env IP=[IP] \
        hhcordero/docker-jmeter-server
```

### Helper script

[Dockerized JMeter - A Distributed Load Testing Workflow](https://gist.github.com/hhcordero/abd1dcaf6654cfe51d0b)

This is a shell script that make use of [Docker Machine](https://github.com/docker/machine) to provision VM. Currently supported clouds are:
- Amazon
- DigitalOcean

