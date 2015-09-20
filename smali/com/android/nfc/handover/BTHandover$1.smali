.class Lcom/android/nfc/handover/BTHandover$1;
.super Ljava/lang/Object;
.source "BTHandover.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 94
    iput-object p1, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v3, v2, Lcom/android/nfc/handover/BTHandover;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 98
    :try_start_5
    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v4, v2, Lcom/android/nfc/handover/BTHandover;->mService:Landroid/os/Messenger;

    .line 99
    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/nfc/handover/BTHandover;->mBound:Z

    .line 101
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 102
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v2, v2, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-object v2, v2, Lcom/android/nfc/handover/HandoverManager;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_33

    .line 104
    :try_start_21
    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v2, v2, Lcom/android/nfc/handover/BTHandover;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_2a
    .catchall {:try_start_21 .. :try_end_28} :catchall_33

    .line 108
    :goto_28
    :try_start_28
    monitor-exit v3

    .line 109
    return-void

    .line 105
    :catch_2a
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BTHandover"

    const-string v4, "Failed to register client"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_33
    move-exception v2

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_33

    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v2, v1, Lcom/android/nfc/handover/BTHandover;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 114
    :try_start_5
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-boolean v1, v1, Lcom/android/nfc/handover/BTHandover;->mBound:Z
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_2c

    if-eqz v1, :cond_20

    .line 116
    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_d
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 117
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v1, v1, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-object v1, v1, Lcom/android/nfc/handover/HandoverManager;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 118
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    iget-object v1, v1, Lcom/android/nfc/handover/BTHandover;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_20} :catch_2f
    .catchall {:try_start_d .. :try_end_20} :catchall_2c

    .line 123
    .end local v0    # "msg":Landroid/os/Message;
    :cond_20
    :goto_20
    :try_start_20
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/nfc/handover/BTHandover;->mService:Landroid/os/Messenger;

    .line 124
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover$1;->this$0:Lcom/android/nfc/handover/BTHandover;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/nfc/handover/BTHandover;->mBound:Z

    .line 125
    monitor-exit v2

    .line 126
    return-void

    .line 125
    :catchall_2c
    move-exception v1

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_20 .. :try_end_2e} :catchall_2c

    throw v1

    .line 119
    :catch_2f
    move-exception v1

    goto :goto_20
.end method
