#!/bin/bash

echo '################'
echo '## clean dirs ##'
echo '################'
rm -rf node1 node2

echo '################'
echo "## Init nodes ##"
echo '################'
geth \
    --datadir node1 \
    init genesis.json

geth \
    --datadir node2 \
    init genesis.json

echo '#################################'
echo "## Create account on each node ##"
echo '#################################'
geth \
    --datadir node1 \
    --password <(echo -n passwd) \
    account new

geth \
    --datadir node2 \
    --password <(echo -n passwd) \
    account new

echo '###############'
echo "## Get money ##"
echo '###############'
geth \
    --datadir node1 \
    --ipcdisable \
    js ./getMoney.js



