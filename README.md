# Docker Client

A docker image which runs the client binary on a local dockerized server.

## Configure in docker-compose.yml

```yml
unglueclient:
    image: unglue/client:latest
    volumes:
      - ./:/app
```

## Development

build `docker build --no-cache -t uclient .`
run `docker run uclient` (will watch until server server is online)
