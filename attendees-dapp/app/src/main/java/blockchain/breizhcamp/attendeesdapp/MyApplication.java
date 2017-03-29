package blockchain.breizhcamp.attendeesdapp;

import com.sqli.blockchain.android_geth.EthereumApplication;

import ethereumjava.EthereumJava;
import ethereumjava.net.provider.AndroidIpcProvider;

/**
 * Created by gunicolas on 27/03/17.
 */

public class MyApplication extends EthereumApplication {

    public EthereumJava ethereumjava;

    @Override
    public void onEthereumServiceReady() {
        ethereumjava = new EthereumJava.Builder()
                .provider(new AndroidIpcProvider(ethereumService.getIpcFilePath()))
                .build();

        for(String peer : Constants.BOOTNODES_ID){
            ethereumjava.admin.addPeer(peer);
        }

        super.onEthereumServiceReady();
    }

}
