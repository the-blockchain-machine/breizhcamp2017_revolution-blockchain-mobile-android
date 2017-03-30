# BOOTNODE

## Init de la Blockchain privée

    geth --datadir datadir init genesis.json

## Lancement de Geth

    geth --datadir datadir --networkid 100 console

## Creation d'un compte 

``` 
> personal.newAccount("passwd")
> personal.unlockAccount(eth.coinbase,"passwd",0)
```

## Récupération d'ether

```
> miner.start();admin.sleepBlocks(5);miner.stop();
```

## Chargement du script de minage automatique
    loadScript('mine.js')

## Envoi d'un message depuis la console

    > eth.sendTransaction({from:eth.coinbase,to:eth.coinbase,data:web3.toHex('hello world')}) ```
