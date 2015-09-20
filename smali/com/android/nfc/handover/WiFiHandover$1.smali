.class Lcom/android/nfc/handover/WiFiHandover$1;
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
    .line 1240
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover$1;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 1244
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, "action":Ljava/lang/String;
    const-string v1, "WiFiHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSoftApReceiver intent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 1248
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_42

    .line 1251
    const-string v1, "WiFiHandover"

    const-string v2, "Soft AP has stared !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$1;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1275
    :cond_41
    :goto_41
    return-void

    .line 1254
    :cond_42
    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_41

    .line 1257
    const-string v1, "WiFiHandover"

    const-string v2, "Soft AP is disabling !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$1;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x74

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41

    .line 1261
    :cond_5f
    const-string v1, "android.net.wifi.WIFI_AP_STA_JOIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 1264
    const-string v1, "WiFiHandover"

    const-string v2, "a STA join Soft AP !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$1;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41

    .line 1267
    :cond_7a
    const-string v1, "android.net.wifi.WIFI_AP_STA_LEAVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1270
    const-string v1, "WiFiHandover"

    const-string v2, "a STA leave Soft AP !"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$1;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$100(Lcom/android/nfc/handover/WiFiHandover;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1272
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$1;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x70

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_41
.end method
