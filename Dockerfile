FROM node:13.3-alpine

ADD script.sh /bin/

RUN set -xe \
    && npm install netlify-cli -g \
    && chmod +x /bin/script.sh

ENTRYPOINT /bin/script.sh
