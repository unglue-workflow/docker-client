FROM php:7.3-cli

WORKDIR /app

RUN curl -o /usr/bin/unglue.phar -H 'Cache-Control: no-cache' -L https://github.com/unglue-workflow/client/raw/master/unglue.phar
RUN chmod +x /usr/bin/unglue.phar

ENV TIMEOUT 1000000
ENV SERVER unglueserver:3000

CMD watch --retry=1 --timeout=$TIMEOUT --server=$SERVER

ENTRYPOINT ["php", "/usr/bin/unglue.phar"]
