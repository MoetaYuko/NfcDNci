.class Lcom/android/nfc/handover/WiFiHandover$3;
.super Landroid/content/BroadcastReceiver;
.source "WiFiHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/WiFiHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/WiFiHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/WiFiHandover;)V
    .registers 2

    .prologue
    .line 1555
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1560
    const-string v1, "WiFiHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWifiStaReceiver intent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 1564
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    invoke-static {v2, v1}, Lcom/android/nfc/handover/WiFiHandover;->access$402(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 1567
    const-string v1, "WiFiHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNetworkInfo.getState == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$400(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    const-string v1, "WiFiHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBeamState == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$200(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v2}, Lcom/android/nfc/handover/WiFiHandover;->access$400(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_116

    .line 1573
    const-string v1, "wifiInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 1574
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_ab

    .line 1576
    const-string v1, "WiFiHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSSID == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_ab
    if-eqz v0, :cond_f6

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f6

    .line 1581
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$600(Lcom/android/nfc/handover/WiFiHandover;)V

    .line 1582
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$702(Lcom/android/nfc/handover/WiFiHandover;I)I

    .line 1583
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$202(Lcom/android/nfc/handover/WiFiHandover;I)I

    .line 1584
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1626
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_f5
    :goto_f5
    return-void

    .line 1586
    .restart local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_f6
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$200(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v1

    if-ne v5, v1, :cond_f5

    .line 1587
    const-string v1, "WiFiHandover"

    const-string v2, "disconnect error ap"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/WiFiHandover;->disConnectCurrentAP()V

    .line 1590
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_f5

    .line 1593
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :cond_116
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v2}, Lcom/android/nfc/handover/WiFiHandover;->access$400(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v1, v2, :cond_f5

    .line 1595
    const-string v1, "WiFiHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStaTransmitFiles  == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$800(Lcom/android/nfc/handover/WiFiHandover;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$800(Lcom/android/nfc/handover/WiFiHandover;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 1597
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$802(Lcom/android/nfc/handover/WiFiHandover;Z)Z

    .line 1598
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$202(Lcom/android/nfc/handover/WiFiHandover;I)I

    .line 1599
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/WiFiHandover;->disableDevice()Z

    goto :goto_f5

    .line 1603
    :cond_15c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b2

    .line 1605
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_185

    .line 1607
    const-string v1, "WiFiHandover"

    const-string v2, "WIFI_STATE_CHANGED_ACTION,WifiManager.WIFI_STATE_ENABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x71

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_f5

    .line 1611
    :cond_185
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1a1

    .line 1613
    const-string v1, "WiFiHandover"

    const-string v2, "WIFI_STATE_CHANGED_ACTION,WIFI_STATE_DISABLING"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x73

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_f5

    .line 1616
    :cond_1a1
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_f5

    .line 1618
    const-string v1, "WiFiHandover"

    const-string v2, "WIFI_STATE_CHANGED_ACTION,WIFI_STATE_DISABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f5

    .line 1621
    :cond_1b2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 1623
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$3;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_f5
.end method
