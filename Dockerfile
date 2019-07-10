FROM php:7.3-cli

WORKDIR /app

COPY /. /app

RUN apt-get update && apt-get install -y wget

RUN wget https://github.com/unglue-workflow/client/raw/master/unglue.phar
RUN chmod +x unglue.phar

CMD ["watch", "--retry", "1"]
ENTRYPOINT [ "/app/unglue.phar"]