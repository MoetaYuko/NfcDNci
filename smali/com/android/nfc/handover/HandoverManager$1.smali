.class Lcom/android/nfc/handover/HandoverManager$1;
.super Ljava/lang/Object;
.source "HandoverManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/HandoverManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverManager;)V
    .registers 2

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 312
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v5, v4, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 313
    :try_start_7
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v6, v4, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;

    .line 314
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/nfc/handover/HandoverManager;->mBinding:Z

    .line 315
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/nfc/handover/HandoverManager;->mBound:Z

    .line 317
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 318
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-boolean v4, v4, Lcom/android/nfc/handover/HandoverManager;->mBluetoothEnabledByNfc:Z

    if-eqz v4, :cond_67

    move v4, v2

    :goto_27
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 319
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-boolean v4, v4, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetConnected:Z

    if-eqz v4, :cond_69

    :goto_2f
    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 320
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v2, v2, Lcom/android/nfc/handover/HandoverManager;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_64

    .line 322
    :try_start_37
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v2, v2, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_6b
    .catchall {:try_start_37 .. :try_end_3e} :catchall_64

    .line 327
    :goto_3e
    :try_start_3e
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v2, v2, Lcom/android/nfc/handover/HandoverManager;->mPendingServiceMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_74

    .line 328
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v2, v2, Lcom/android/nfc/handover/HandoverManager;->mPendingServiceMessages:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "msg":Landroid/os/Message;
    check-cast v1, Landroid/os/Message;
    :try_end_53
    .catchall {:try_start_3e .. :try_end_53} :catchall_64

    .line 330
    .restart local v1    # "msg":Landroid/os/Message;
    :try_start_53
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v2, v2, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5a} :catch_5b
    .catchall {:try_start_53 .. :try_end_5a} :catchall_64

    goto :goto_3e

    .line 331
    :catch_5b
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5c
    const-string v2, "NfcHandover"

    const-string v3, "Failed to send queued message to service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 335
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_64
    move-exception v2

    monitor-exit v5
    :try_end_66
    .catchall {:try_start_5c .. :try_end_66} :catchall_64

    throw v2

    .restart local v1    # "msg":Landroid/os/Message;
    :cond_67
    move v4, v3

    .line 318
    goto :goto_27

    :cond_69
    move v2, v3

    .line 319
    goto :goto_2f

    .line 323
    :catch_6b
    move-exception v0

    .line 324
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_6c
    const-string v2, "NfcHandover"

    const-string v3, "Failed to register client"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 335
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_74
    monitor-exit v5
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_64

    .line 336
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v2, v1, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 341
    :try_start_5
    const-string v1, "NfcHandover"

    const-string v3, "Service disconnected"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v1, v1, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_44

    if-eqz v1, :cond_25

    .line 344
    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_14
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 345
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v1, v1, Lcom/android/nfc/handover/HandoverManager;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 346
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v1, v1, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_47
    .catchall {:try_start_14 .. :try_end_25} :catchall_44

    .line 351
    .end local v0    # "msg":Landroid/os/Message;
    :cond_25
    :goto_25
    :try_start_25
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;

    .line 352
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/nfc/handover/HandoverManager;->mBound:Z

    .line 353
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetPending:Z

    .line 354
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v1, v1, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 355
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager$1;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v1, v1, Lcom/android/nfc/handover/HandoverManager;->mPendingServiceMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 356
    monitor-exit v2

    .line 357
    return-void

    .line 356
    :catchall_44
    move-exception v1

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_25 .. :try_end_46} :catchall_44

    throw v1

    .line 347
    :catch_47
    move-exception v1

    goto :goto_25
.end method
