# BOOTNODE

## Init de la Blockchain privée

    ./initBootnode.sh

## Lancement des 2 noeuds (2 fenêtres différentes) 

    ./startNode1.sh
    ./startNode2.sh

## Synchronisation des noeuds

    ./addPeer.sh

## Récupérer l'id des noeuds puis coller dans les dapp (Constants.java)

    ./getNodeId.sh

## Crédit du compte du speaker
    
    Copier l'identifiant depuis la console android
    ./sendMoney.sh 0x....

## Envoi d'un message (exemple)

    > eth.sendTransaction({from:eth.coinbase,to:eth.coinbase,data:web3.toHex('hello world')}) ```
