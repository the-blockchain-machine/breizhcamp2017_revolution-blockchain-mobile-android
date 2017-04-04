#!/bin/bash

geth \
    --datadir node1 \
    --networkid 100 \
    --port 30303 \
    --rpc \
    --rpcport 8545 \
    --rpcapi 'admin,debug,eth,miner,net,personal,shh,txpool,web3' \
    --unlock 0 \
    --password <(echo passwd) \
    --autodag \
    --preload ./mine.js \
    --ipcdisable \
    console 