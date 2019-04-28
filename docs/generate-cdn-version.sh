#!/bin/bash

# Converts the external references in the slide deck to use externally-hosted versions

cd $(dirname $0)

REVEALJS_VERSION=3.8.0
HIGHLIGHTJS_VERSION=9.15.6
INDEX_FILE=../slides/index.html
CDN_FILE=index.html

echo "<!-- Auto-generated from $INDEX_FILE on $(date). Do not edit this copy -->" > $CDN_FILE

cat $INDEX_FILE | \
    sed "s#/revealjs/#https://cdn.jsdelivr.net/npm/reveal.js@$REVEALJS_VERSION/#g" | \
    sed "s#/highlightjs/#https://cdn.jsdelivr.net/npm/highlight.js@$HIGHLIGHTJS_VERSION/#g" \
    >> $CDN_FILE
