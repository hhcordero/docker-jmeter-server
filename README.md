# JMeter Server Mode

Docker image for JMeter in server mode running on Ubuntu. Make sure to open port 1099. You also need the public ip (see environment variable 'IP' below).

## Usage

On cli, execute the following:

```sh
$   docker run \
        --detach \
        --publish 1099:1099 \
        --env IP=[IP] \
        hhcordero/docker-jmeter-server
```
