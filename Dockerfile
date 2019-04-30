FROM ubuntu

COPY ./client.sh /

RUN chmod +x /client.sh
RUN apt-get update && apt-get install -yq --no-install-recommends \
    apt-utils \
    curl \
    php7.2-cli \
    && apt-get clean && rm -rf /var/lib/apt/lists/*


CMD ["/client.sh", "app/vendor/bin/unglue"]
ENTRYPOINT [ "app/vendor/bin/unglue watch" ]