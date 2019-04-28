# Using Prometheus >=v2.5.0 with unit test support
FROM prom/prometheus:v2.9.2

WORKDIR /data
COPY *.rules.yml .
COPY *.rules.test.yml .

RUN promtool test rules *.test.yml
