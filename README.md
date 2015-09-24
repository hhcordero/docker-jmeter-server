# JMeter in Server Mode

Docker image for JMeter in server mode running either Alpine Linux or Ubuntu. Make sure to open port 1099. You also need the public ip (see environment variable 'IP' below).

## Supported Tags

[`latest`](https://github.com/hhcordero/docker-jmeter-server/tree/master/alpine),
[`alpine`](https://github.com/hhcordero/docker-jmeter-server/tree/master/alpine),
[`ubuntu`](https://github.com/hhcordero/docker-jmeter-server)

## Usage

On cli, execute the following:

```sh
$   docker run \
        --detach \
        --publish 1099:1099 \
        --env IP=[IP] \
        hhcordero/docker-jmeter-server
```
