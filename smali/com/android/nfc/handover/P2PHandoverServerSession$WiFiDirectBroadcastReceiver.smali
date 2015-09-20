.class public Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "P2PHandoverServerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandoverServerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WiFiDirectBroadcastReceiver"
.end annotation


# instance fields
.field private createGroupActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

.field private mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

.field private mListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

.field private mServerPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

.field final synthetic this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/P2PHandoverServerSession;Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;)V
    .registers 4
    .param p2, "listener"    # Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 512
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 516
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$1;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mServerPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .line 552
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$2;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->createGroupActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 584
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver$3;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .line 513
    iput-object p2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

    .line 514
    return-void
.end method

.method static synthetic access$1900(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->createGroupActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;)Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 605
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "action":Ljava/lang/String;
    const-string v5, "P2PHandoverServerSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "p2p connnect onReceive action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 610
    const-string v5, "wifi_state"

    invoke-virtual {p2, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_45

    .line 612
    const-string v5, "P2PHandoverServerSession"

    const-string v6, "WifiManager disable"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v5

    if-le v5, v8, :cond_45

    .line 614
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5, v9}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$600(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    .line 676
    :cond_45
    :goto_45
    return-void

    .line 618
    :cond_46
    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 619
    const-string v5, "wifi_p2p_state"

    invoke-virtual {p2, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 620
    .local v4, "state":I
    if-ne v4, v12, :cond_c4

    .line 622
    const-string v5, "P2PHandoverServerSession"

    const-string v6, "wifi p2p is enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v5

    if-ne v5, v8, :cond_45

    .line 624
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    if-eqz v5, :cond_75

    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    if-nez v5, :cond_a8

    .line 625
    :cond_75
    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$500(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/Context;

    move-result-object v5

    const-string v7, "wifip2p"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {v6, v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$802(Lcom/android/nfc/handover/P2PHandoverServerSession;Landroid/net/wifi/p2p/WifiP2pManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    .line 626
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v6}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v7}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$500(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v8}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$500(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$902(Lcom/android/nfc/handover/P2PHandoverServerSession;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 628
    :cond_a8
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5, v12}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$100(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    .line 629
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$2100(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    .line 630
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v6}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->createGroupActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_45

    .line 632
    :cond_c4
    if-ne v4, v8, :cond_45

    .line 634
    const-string v5, "P2PHandoverServerSession"

    const-string v6, "WifiP2pManager disable"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    .line 639
    .end local v4    # "state":I
    :cond_cf
    const-string v5, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f9

    .line 641
    const-string v5, "P2PHandoverServerSession"

    const-string v6, "WIFI_P2P_PEERS_CHANGED_ACTION"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v5

    if-ne v5, v10, :cond_45

    .line 643
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v6}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mServerPeerListListener:Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_45

    .line 645
    :cond_f9
    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_150

    .line 646
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v5

    if-lt v5, v9, :cond_45

    .line 647
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 648
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_139

    .line 650
    const-string v5, "P2PHandoverServerSession"

    const-string v6, "networkInfo.isConnected()"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v5

    if-ge v5, v10, :cond_45

    .line 652
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v6}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto/16 :goto_45

    .line 655
    :cond_139
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v5

    if-ne v5, v10, :cond_45

    .line 657
    const-string v5, "P2PHandoverServerSession"

    const-string v6, "WifiP2pManager disconnect"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$600(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    goto/16 :goto_45

    .line 662
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_150
    const-string v5, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_173

    .line 663
    const-string v5, "wifiP2pDevice"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 665
    .local v2, "mThisDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :try_start_160
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$400(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v5

    iget-object v6, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/nfc/handover/P2PHandover;->saveMacAddressToRecordFile(Ljava/lang/String;)V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_16b} :catch_16d

    goto/16 :goto_45

    .line 666
    :catch_16d
    move-exception v1

    .line 667
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_45

    .line 669
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "mThisDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_173
    const-string v5, "android.net.wifi.p2p.CONNECT_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 670
    const-string v5, "extraState"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 671
    .restart local v4    # "state":I
    if-ne v4, v9, :cond_45

    .line 673
    const-string v5, "P2PHandoverServerSession"

    const-string v6, "connect to client failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45
.end method
