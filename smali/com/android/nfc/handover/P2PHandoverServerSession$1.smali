.class Lcom/android/nfc/handover/P2PHandoverServerSession$1;
.super Ljava/lang/Object;
.source "P2PHandoverServerSession.java"

# interfaces
.implements Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;


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
    .line 158
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectFailed()V
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$600(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    .line 175
    return-void
.end method

.method public serverConnetSuccess(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .registers 8
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    const/4 v5, 0x0

    .line 179
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_65

    .line 181
    const-string v1, "P2PHandoverServerSession"

    const-string v2, "go connected "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$100(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    .line 183
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$700(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    .line 186
    :try_start_1c
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 190
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$400(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 191
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$200(Lcom/android/nfc/handover/P2PHandoverServerSession;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 193
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1100(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_60

    .line 194
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$500(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1100(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v1, v5}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1102(Lcom/android/nfc/handover/P2PHandoverServerSession;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 197
    :cond_60
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$1200(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    .line 200
    :cond_65
    return-void
.end method

.method public serverCreateSuccess(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_43

    .line 163
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "ServerCreateSuccess "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$100(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V

    .line 165
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$200(Lcom/android/nfc/handover/P2PHandoverServerSession;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 166
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    new-instance v1, Lcom/android/nfc/handover/TransmitManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$400(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$500(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/nfc/handover/TransmitManager;-><init>(Lcom/android/nfc/handover/Handover;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$302(Lcom/android/nfc/handover/P2PHandoverServerSession;Lcom/android/nfc/handover/TransmitManager;)Lcom/android/nfc/handover/TransmitManager;

    .line 167
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;->this$0:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-static {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->access$300(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/TransmitManager;->buildHttpServer(Ljava/lang/String;)V

    .line 170
    :cond_43
    return-void
.end method
