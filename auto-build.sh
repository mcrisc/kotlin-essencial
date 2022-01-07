#!/bin/sh

FILE="kotlin-essencial.adoc"

while inotifywait -e modify --excludei="\.swp$" chapters; do
        asciidoctor -a stylesheet=styles.css "$FILE"
        date --iso-8601=seconds
done
