# Presentation: Unit testing in Prometheus

In [Prometheus 2.5.0](https://github.com/prometheus/prometheus/releases/tag/v2.5.0), a unit testing framework was added to `promtool`.

This presentation explores some of its features by way of examples. Created with [reveal.js](https://revealjs.com/).

## Running

```bash
git clone https://github.com/howardburgess/prometheus-unit-testing && \
cd prometheus-unit-testing && \
docker build -t prom-test . && \
docker run -p 8080:80 prom-test
```

Visit [localhost:8080](http://localhost:8080/). Self-contained; requires no external resources.

Press `s` for speaker notes. [Reveal.js keyboard shortcuts](https://github.com/hakimel/reveal.js/wiki/Keyboard-Shortcuts).

## Running with local changes

```bash
cd prometheus-unit-testing
docker run -p 8080:80 -v $PWD:/content prom-test
```

## View online

[howardburgess.github.io/prometheus-unit-testing/](https://howardburgess.github.io/prometheus-unit-testing/).