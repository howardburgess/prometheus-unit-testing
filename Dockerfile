FROM nginx:1.16-alpine

COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /content
COPY static/ static/
COPY index.html .
