.class Lcom/android/nfc/handover/P2PHandoverClientSession$3;
.super Ljava/lang/Object;
.source "P2PHandoverClientSession.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


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
    .line 350
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .registers 10
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    const/4 v7, 0x1

    .line 353
    const/4 v1, 0x0

    .line 355
    .local v1, "connectToServer":Z
    if-eqz p1, :cond_57

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    if-eqz v5, :cond_57

    .line 356
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    iget-object v0, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 357
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    iget-object v4, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 358
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v5

    iget-object v2, v5, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    .line 359
    .local v2, "data_addr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v5

    iget-object v3, v5, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    .line 360
    .local v3, "data_name":Ljava/lang/String;
    if-eqz v2, :cond_4d

    .line 361
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 362
    const/4 v1, 0x1

    .line 374
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "data_addr":Ljava/lang/String;
    .end local v3    # "data_name":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :cond_2f
    :goto_2f
    if-nez v1, :cond_5f

    .line 376
    const-string v5, "P2PHandoverClientSession"

    const-string v6, "disconnect current link"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v6}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v6

    new-instance v7, Lcom/android/nfc/handover/P2PHandoverClientSession$3$1;

    invoke-direct {v7, p0}, Lcom/android/nfc/handover/P2PHandoverClientSession$3$1;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession$3;)V

    invoke-virtual {v5, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 413
    :goto_4c
    return-void

    .line 365
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v2    # "data_addr":Ljava/lang/String;
    .restart local v3    # "data_name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_4d
    if-eqz v3, :cond_2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 366
    const/4 v1, 0x1

    goto :goto_2f

    .line 370
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "data_addr":Ljava/lang/String;
    .end local v3    # "data_name":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :cond_57
    const-string v5, "P2PHandoverClientSession"

    const-string v6, "mClientInfoListener::onGroupInfoAvailable group is null or group.getOwner() is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 399
    :cond_5f
    const-string v5, "P2PHandoverClientSession"

    const-string v6, "already connect to remote server"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    if-nez v5, :cond_80

    .line 402
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v5

    iput-boolean v7, v5, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    .line 403
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v5

    iput-boolean v7, v5, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 406
    :cond_80
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$200(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V

    .line 407
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$900(Lcom/android/nfc/handover/P2PHandoverClientSession;)Z

    move-result v5

    if-eqz v5, :cond_94

    .line 408
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v5}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1000(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    goto :goto_4c

    .line 410
    :cond_94
    iget-object v5, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1500(Lcom/android/nfc/handover/P2PHandoverClientSession;Ljava/lang/String;)V

    goto :goto_4c
.end method
