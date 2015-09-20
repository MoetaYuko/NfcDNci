.class Lcom/android/nfc/handover/P2PHandoverClientSession$3$1;
.super Ljava/lang/Object;
.source "P2PHandoverClientSession.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/handover/P2PHandoverClientSession$3;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$3;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/P2PHandoverClientSession$3;)V
    .registers 2

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3$1;->this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 4
    .param p1, "reason"    # I

    .prologue
    .line 383
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "remove Group failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .prologue
    .line 390
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "remove Group success"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3$1;->this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$3;

    iget-object v0, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$402(Lcom/android/nfc/handover/P2PHandoverClientSession;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 392
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$3$1;->this$1:Lcom/android/nfc/handover/P2PHandoverClientSession$3;

    iget-object v0, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1600(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 393
    return-void
.end method
