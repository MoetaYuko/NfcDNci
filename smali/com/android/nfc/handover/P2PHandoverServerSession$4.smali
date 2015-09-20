.class Lcom/android/nfc/handover/P2PHandoverServerSession$4;
.super Ljava/lang/Object;
.source "P2PHandoverServerSession.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


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
    .line 319
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .registers 5
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    .line 322
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v0, :cond_25

    .line 324
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "device run as a Go"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1600(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 335
    :goto_24
    return-void

    .line 326
    :cond_25
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v0, :cond_46

    .line 328
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "device run as a station"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1700(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    goto :goto_24

    .line 332
    :cond_46
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "device do not connect any device"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$4;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1500(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    goto :goto_24
.end method
