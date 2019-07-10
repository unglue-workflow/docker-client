FROM php:7.3-cli

WORKDIR /app

RUN curl -o /usr/bin/unglue.phar -L https://github.com/unglue-workflow/client/raw/master/unglue.phar
RUN chmod +x /usr/bin/unglue.phar

CMD ["watch", "--retry", "1"]

ENTRYPOINT ["php", "/usr/bin/unglue.phar"]