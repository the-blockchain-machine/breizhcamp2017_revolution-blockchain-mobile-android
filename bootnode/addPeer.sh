echo '###############'
echo "## Add peer ##"
echo '###############'
geth \
    --exec 'admin.addPeer('$(geth --exec 'admin.nodeInfo.enode' attach rpc:http://localhost:8546)')' \
    attach rpc:http://localhost:8545