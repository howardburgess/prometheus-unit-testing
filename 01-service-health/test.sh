#!/bin/bash

cd $(dirname $0)

promtool test rules *.test.yml
