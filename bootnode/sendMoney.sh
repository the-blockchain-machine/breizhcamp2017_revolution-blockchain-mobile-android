#!/bin/bash


echo '########################'
echo '## Send Money to '$1' ##'
echo '########################'

geth \
    --exec 'eth.sendTransaction({from:eth.coinbase,to:"'$1'",value:web3.toWei(10,"ether")})' \
    attach rpc:http://localhost:8545