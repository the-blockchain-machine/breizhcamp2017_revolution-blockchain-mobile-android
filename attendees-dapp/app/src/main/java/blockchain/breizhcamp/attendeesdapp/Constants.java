package blockchain.breizhcamp.attendeesdapp;

/**
 * Created by gunicolas on 28/03/17.
 */

public abstract class Constants {

    private static final String ID1 = "4f38b844103e2274b332aa3a5eccd15841e531452d248f871751b9369551dde27f2652a43b491d3e6a589d7ca27e8fe8a9679484bd02456d24326f2bc91a733f";
    private static final String ID2 = "0b30210acab454a637b340610c4cd491add27a5c7aba8fcb7153e411d27a03fed99fc77413c1d2345fc6f087353b54f576d5838283cfa3e433d3729221f2c244";

    public static final String[] BOOTNODES_ID = new String[]{
        "enode://"+ID1+"@192.168.0.10:30303",
        "enode://"+ID2+"@192.168.0.10:30304"
    };
}
