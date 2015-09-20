.class Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "P2PHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WiFiDirectBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/P2PHandover;


# direct methods
.method private constructor <init>(Lcom/android/nfc/handover/P2PHandover;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/nfc/handover/P2PHandover;
    .param p2, "x1"    # Lcom/android/nfc/handover/P2PHandover$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;-><init>(Lcom/android/nfc/handover/P2PHandover;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 109
    const-string v2, "wifi_state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_51

    .line 110
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandover;

    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandover;->access$100(Lcom/android/nfc/handover/P2PHandover;)Lcom/android/nfc/handover/HandoverManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/handover/HandoverManager;->getSelectHandover()Lcom/android/nfc/handover/Handover;

    move-result-object v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandover;

    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandover;->access$100(Lcom/android/nfc/handover/P2PHandover;)Lcom/android/nfc/handover/HandoverManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/handover/HandoverManager;->getSelectHandover()Lcom/android/nfc/handover/Handover;

    move-result-object v2

    instance-of v2, v2, Lcom/android/nfc/handover/P2PHandover;

    if-eqz v2, :cond_51

    .line 111
    const-string v2, "P2PHandover"

    const-string v3, "wifip2p onReceive action = WifiP2pManager.WIFI_STATE_CHANGED_ACTION "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandover;

    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandover;->access$100(Lcom/android/nfc/handover/P2PHandover;)Lcom/android/nfc/handover/HandoverManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/nfc/handover/HandoverManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    invoke-virtual {v2}, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->stopMonitoring()V

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.nfc.p2phandover.action.CLOSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "cancelIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;->this$0:Lcom/android/nfc/handover/P2PHandover;

    invoke-static {v2}, Lcom/android/nfc/handover/P2PHandover;->access$200(Lcom/android/nfc/handover/P2PHandover;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    .end local v1    # "cancelIntent":Landroid/content/Intent;
    :cond_51
    return-void
.end method
