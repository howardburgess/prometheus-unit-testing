FROM nginx:1.16-alpine

RUN apk --no-cache add git

RUN git clone --branch=3.8.0 --depth=1 https://github.com/hakimel/reveal.js /lib/revealjs
RUN git clone --branch=9.15.6 --depth=1 https://github.com/highlightjs/highlight.js /lib/highlightjs
COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /content
COPY . .
