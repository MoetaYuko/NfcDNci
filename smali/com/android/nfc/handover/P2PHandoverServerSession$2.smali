.class Lcom/android/nfc/handover/P2PHandoverServerSession$2;
.super Ljava/lang/Object;
.source "P2PHandoverServerSession.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandoverServerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/P2PHandoverServerSession;)V
    .registers 2

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 8
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    const/4 v5, 0x0

    .line 283
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v2

    .line 284
    .local v2, "mWifiP2pDeviceList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 285
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v4}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1300(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v4

    iget-object v4, v4, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v4}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1300(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v4

    iget-object v4, v4, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 287
    :cond_35
    const-string v3, "P2PHandoverServerSession"

    const-string v4, "already connect to remote client"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    .line 298
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_41
    return-void

    .line 294
    :cond_42
    const-string v3, "P2PHandoverServerSession"

    const-string v4, "need to connect to target client"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v4}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 296
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v3, v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$902(Lcom/android/nfc/handover/P2PHandoverServerSession;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 297
    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$2;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1500(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    goto :goto_41
.end method
