.class Lcom/android/nfc/handover/HandoverManager$MessageHandler;
.super Landroid/os/Handler;
.source "HandoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/HandoverManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverManager;)V
    .registers 2

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 280
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v3, v3, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 281
    :try_start_7
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_92

    .line 304
    :goto_c
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/nfc/handover/HandoverManager;->unbindServiceIfNeededLocked(Z)V

    .line 305
    monitor-exit v3

    .line 306
    return-void

    .line 283
    :pswitch_14
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 284
    .local v0, "transferId":I
    const-string v1, "NfcHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Completed transfer id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v1, v1, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 286
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v1, v1, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 305
    .end local v0    # "transferId":I
    :catchall_4c
    move-exception v1

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_4c

    throw v1

    .line 288
    .restart local v0    # "transferId":I
    :cond_4f
    :try_start_4f
    const-string v1, "NfcHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find completed transfer id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 292
    .end local v0    # "transferId":I
    :pswitch_6c
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_7f

    :goto_72
    iput-boolean v1, v4, Lcom/android/nfc/handover/HandoverManager;->mBluetoothEnabledByNfc:Z

    .line 293
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetConnected:Z

    .line 294
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetPending:Z

    goto :goto_c

    :cond_7f
    move v1, v2

    .line 292
    goto :goto_72

    .line 297
    :pswitch_81
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverManager;->mBluetoothEnabledByNfc:Z

    .line 298
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetConnected:Z

    .line 299
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetPending:Z
    :try_end_90
    .catchall {:try_start_4f .. :try_end_90} :catchall_4c

    goto/16 :goto_c

    .line 281
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_14
        :pswitch_6c
        :pswitch_81
    .end packed-switch
.end method
