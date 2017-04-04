#!/bin/bash


echo 'NODE 1 :' $(geth --exec 'admin.nodeInfo.id' attach rpc:http://localhost:8545)
echo 'NODE 2 :' $(geth --exec 'admin.nodeInfo.id' attach rpc:http://localhost:8546)