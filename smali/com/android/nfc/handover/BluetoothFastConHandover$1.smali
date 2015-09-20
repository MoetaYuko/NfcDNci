.class Lcom/android/nfc/handover/BluetoothFastConHandover$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothFastConHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/BluetoothFastConHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/BluetoothFastConHandover;)V
    .registers 2

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 234
    const-string v2, "BluetoohFastConHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive message is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 238
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 239
    .local v1, "state":I
    const-string v2, "BluetoohFastConHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/16 v2, 0xb

    if-ne v1, v2, :cond_4d

    .line 268
    .end local v1    # "state":I
    :cond_4c
    :goto_4c
    return-void

    .line 242
    .restart local v1    # "state":I
    :cond_4d
    const/16 v2, 0xc

    if-ne v1, v2, :cond_4c

    .line 244
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothFastConHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/handover/BluetoothFastConHandover;->isConnected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 246
    const-string v2, "BluetoohFastConHandover"

    const-string v3, "already connected mStateBroadcastReceiver.onReceive"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConResult(I)V

    goto :goto_4c

    .line 250
    :cond_6f
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;

    iget-object v2, v2, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 251
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;

    iget-object v2, v2, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    goto :goto_4c
.end method
