FROM php:7.3-cli

WORKDIR /app

RUN curl -o /usr/bin/unglue.phar -H 'Cache-Control: no-cache' -L https://github.com/unglue-workflow/client/raw/master/unglue.phar
RUN chmod +x /usr/bin/unglue.phar

CMD ["watch", "--retry=1", "--server=unglueserver:3000"]

ENTRYPOINT ["php", "/usr/bin/unglue.phar"]