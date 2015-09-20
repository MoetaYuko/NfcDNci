.class Lcom/android/nfc/handover/BTHandover$2;
.super Landroid/content/BroadcastReceiver;
.source "BTHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/BTHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/BTHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/BTHandover;)V
    .registers 2

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 432
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 436
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 437
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 438
    .local v2, "state":I
    const-string v3, "BTHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/16 v3, 0xb

    if-ne v2, v3, :cond_39

    .line 480
    .end local v2    # "state":I
    :cond_38
    :goto_38
    return-void

    .line 441
    .restart local v2    # "state":I
    :cond_39
    const/16 v3, 0xc

    if-ne v2, v3, :cond_38

    .line 442
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 443
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 445
    :cond_4e
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v4, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v4, v4, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/nfc/handover/BTHandover;->addNfcFastConWhiteList(Ljava/lang/String;)V

    .line 446
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    invoke-static {v3}, Lcom/android/nfc/handover/BTHandover;->access$000(Lcom/android/nfc/handover/BTHandover;)V

    goto :goto_38

    .line 451
    .end local v2    # "state":I
    :cond_61
    if-eqz v1, :cond_7b

    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_7b

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v4, v4, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a2

    .line 453
    :cond_7b
    const-string v3, "BTHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mDevice:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v5, v5, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 456
    :cond_a2
    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 457
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-boolean v3, v3, Lcom/android/nfc/handover/BTHandover;->isPairing:Z

    if-eqz v3, :cond_38

    .line 458
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    goto/16 :goto_38

    .line 460
    :cond_c3
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 461
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v3, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    packed-switch v3, :pswitch_data_102

    goto/16 :goto_38

    .line 473
    :pswitch_d8
    const-string v3, "BTHandover"

    const-string v4, "NONE, retry clear"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    invoke-static {v3}, Lcom/android/nfc/handover/BTHandover;->access$100(Lcom/android/nfc/handover/BTHandover;)V

    goto/16 :goto_38

    .line 463
    :pswitch_e6
    const-string v3, "BTHandover"

    const-string v4, "BONDING"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    invoke-static {v3}, Lcom/android/nfc/handover/BTHandover;->access$000(Lcom/android/nfc/handover/BTHandover;)V

    goto/16 :goto_38

    .line 468
    :pswitch_f4
    const-string v3, "BTHandover"

    const-string v4, "BONDED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover$2;->this$0:Lcom/android/nfc/handover/BTHandover;

    invoke-static {v3}, Lcom/android/nfc/handover/BTHandover;->access$100(Lcom/android/nfc/handover/BTHandover;)V

    goto/16 :goto_38

    .line 461
    :pswitch_data_102
    .packed-switch 0xa
        :pswitch_d8
        :pswitch_e6
        :pswitch_f4
    .end packed-switch
.end method
