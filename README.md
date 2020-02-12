# Docker Client

A docker image which runs the client binary on a local dockerized server.

## Configure in docker-compose.yml

```yml
unglueclient:
    image: unglue/client:latest
    volumes:
      - ./:/app
```

## Override command with custom data

```yml
unglueclient:
    image: unglue/client:latest
    command: ["watch", "--retry=1", "--timeout=9000000", "--server=localhost:3000"]
    volumes:
      - ./:/app
```

## Development

1.) build `docker build --no-cache -t uclient .`
2.) run `docker run uclient` (the script will wait to run until the given server is online).
