.class Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;
.super Ljava/lang/Object;
.source "HandoverManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandoverPowerManager"
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverManager;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/HandoverManager;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->handler:Landroid/os/Handler;

    .line 208
    return-void
.end method


# virtual methods
.method public declared-synchronized disableDevice()Z
    .registers 2

    .prologue
    .line 224
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-static {v0}, Lcom/android/nfc/handover/HandoverManager;->access$000(Lcom/android/nfc/handover/HandoverManager;)Lcom/android/nfc/handover/Handover;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/handover/Handover;->disableDevice()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized enableDevice()Z
    .registers 6

    .prologue
    .line 215
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-static {v1}, Lcom/android/nfc/handover/HandoverManager;->access$000(Lcom/android/nfc/handover/HandoverManager;)Lcom/android/nfc/handover/Handover;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/handover/Handover;->enableDevice()Z

    move-result v0

    .line 216
    .local v0, "result":Z
    if-eqz v0, :cond_15

    .line 217
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 220
    :cond_15
    monitor-exit p0

    return v0

    .line 215
    .end local v0    # "result":Z
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 244
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_5e

    .line 271
    :goto_6
    return v3

    .line 247
    :pswitch_7
    const/4 v2, 0x0

    .line 248
    .local v2, "transferAlive":Z
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v4, v3, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 249
    :try_start_d
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v3, v3, Lcom/android/nfc/handover/HandoverManager;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/handover/HandoverTransfer;

    .line 250
    .local v1, "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 251
    const/4 v2, 0x1

    goto :goto_19

    .line 254
    .end local v1    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_4b

    .line 256
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverManager;

    monitor-enter v4

    .line 257
    if-nez v2, :cond_55

    .line 258
    :try_start_33
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-static {v3}, Lcom/android/nfc/handover/HandoverManager;->access$100(Lcom/android/nfc/handover/HandoverManager;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 259
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v3, v3, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 263
    :goto_42
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    :goto_48
    monitor-exit v4
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_52

    .line 269
    const/4 v3, 0x1

    goto :goto_6

    .line 254
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_4b
    move-exception v3

    :try_start_4c
    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v3

    .line 261
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4e
    :try_start_4e
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->disableDevice()Z

    goto :goto_42

    .line 268
    :catchall_52
    move-exception v3

    monitor-exit v4
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_52

    throw v3

    .line 265
    :cond_55
    :try_start_55
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    const-wide/16 v6, 0x7530

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_52

    goto :goto_48

    .line 244
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public declared-synchronized isDeviceEnabled()Z
    .registers 2

    .prologue
    .line 228
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-static {v0}, Lcom/android/nfc/handover/HandoverManager;->access$000(Lcom/android/nfc/handover/HandoverManager;)Lcom/android/nfc/handover/Handover;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/handover/Handover;->isDeviceEnabled()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit p0

    return v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized resetHandoverTimer()V
    .registers 5

    .prologue
    .line 232
    monitor-enter p0

    :try_start_1
    const-string v0, "NfcHandover"

    const-string v1, "resetHandoverTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 234
    const-string v0, "NfcHandover"

    const-string v1, "handler message has contained MSG_HANDOVER_POWER_CHECK messge, we will remove it"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    :cond_1e
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 240
    monitor-exit p0

    return-void

    .line 232
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stopMonitoring()V
    .registers 3

    .prologue
    .line 211
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 212
    monitor-exit p0

    return-void

    .line 211
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
