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
