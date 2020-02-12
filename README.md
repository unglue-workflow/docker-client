# Docker Client

A docker image which runs the client binary on a local dockerized server.

## Configure in docker-compose.yml

```yml
unglueclient:
    image: unglue/client:latest
    volumes:
      - ./:/app
```

## ENV vars

SERVER=unglueserver:3000
TIMEOUT=1000000

```yml
unglueclient:
    image: unglue/client:latest
    environment:
     - SERVER=myunglueserver:3333
     - TIMEOUT=1000000
    volumes:
      - ./:/app
```

## Development

1.) build `docker build --no-cache -t uclient .`
2.) run `docker run uclient` (the script will wait to run until the given server is online).
