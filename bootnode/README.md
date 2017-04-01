# BOOTNODE

## Init de la Blockchain privée

    geth --datadir datadir init genesis.json

## Creation d'un compte si nécessaire 

    geth --datadir datadir --password <(echo -n passwd) account new

## Lancement de Geth

    ./startBootnode.sh

## Récupération d'ether

```
> miner.start();admin.sleepBlocks(5);miner.stop();
```

## Chargement du script de minage automatique
    loadScript('mine.js')

## Envoi d'un message depuis la console

    > eth.sendTransaction({from:eth.coinbase,to:eth.coinbase,data:web3.toHex('hello world')}) ```
