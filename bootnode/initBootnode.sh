#!/bin/bash

echo '################'
echo '## clean dirs ##'
echo '################'
for i in `seq 1 2`;
do
    rm -rf node$i/geth/LOCK
    rm -rf node$i/geth/chaindata
    rm -rf node$i/geth/nodes/
    rm -rf node$i/history
done

echo '################'
echo "## Init nodes ##"
echo '################'
geth \
    --datadir node1 \
    init genesis.json

geth \
    --datadir node2 \
    init genesis.json

echo '###############'
echo "## Geth warmup ##"
echo '###############'
geth \
    --datadir node1 \
    --ipcdisable \
    js ./noop.js

geth \
    --datadir node2 \
    --ipcdisable \
    js ./noop.js


