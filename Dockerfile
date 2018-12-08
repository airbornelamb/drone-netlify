FROM node:10-alpine

RUN npm install netlify-cli -g

ADD script.sh /bin/
RUN chmod +x /bin/script.sh

ENTRYPOINT /bin/script.sh
