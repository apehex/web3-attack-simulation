#!/bin/bash

while read LINE; do
    TXS=$(echo $LINE | /usr/bin/cut -d ' ' -f 1 | /usr/bin/tr ',' '\n')
    NAME=$(echo $LINE | /usr/bin/cut -d ' ' -f 2)
    for TX in $TXS; do
        PATH="samples/$NAME/transactions"
        /usr/bin/mkdir -p "$PATH"
        ./scripts/tx.sh "$TX" "$PATH"
    done;
done;
