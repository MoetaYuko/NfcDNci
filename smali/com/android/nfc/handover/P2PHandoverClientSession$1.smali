.class Lcom/android/nfc/handover/P2PHandoverClientSession$1;
.super Ljava/lang/Object;
.source "P2PHandoverClientSession.java"

# interfaces
.implements Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandoverClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clientConnectSuccess(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    .line 202
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "ClientConnectSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$200(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V

    .line 204
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$600(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 207
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$700(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 208
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$700(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$702(Lcom/android/nfc/handover/P2PHandoverClientSession;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 212
    :cond_39
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$900(Lcom/android/nfc/handover/P2PHandoverClientSession;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 213
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1000(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 218
    :goto_46
    return-void

    .line 215
    :cond_47
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    new-instance v1, Lcom/android/nfc/handover/TransmitManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/nfc/handover/TransmitManager;-><init>(Lcom/android/nfc/handover/Handover;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1102(Lcom/android/nfc/handover/P2PHandoverClientSession;Lcom/android/nfc/handover/TransmitManager;)Lcom/android/nfc/handover/TransmitManager;

    .line 216
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1100(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1200(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/ConfigInfo;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/handover/TransmitManager;->getFileUris(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46
.end method

.method public connectFailed()V
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$000(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V

    .line 177
    return-void
.end method

.method public searchSuccess(Ljava/lang/String;)V
    .registers 7
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string v2, "P2PHandoverClientSession"

    const-string v3, "SearchSuccess "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$100(Lcom/android/nfc/handover/P2PHandoverClientSession;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_32

    .line 185
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 186
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 187
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 188
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$200(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V

    .line 191
    :try_start_22
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/huawei/android/net/wifi/p2p/NfcWifiP2pManagerEx;->beam_connect(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_32
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_22 .. :try_end_32} :catch_33

    .line 196
    .end local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_32
    :goto_32
    return-void

    .line 192
    .restart local v0    # "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    :catch_33
    move-exception v1

    .line 193
    .local v1, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_32
.end method
