.class Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;
.super Ljava/lang/Object;
.source "EchoServer2.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/echoserver/EchoServer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EchoMachine"
.end annotation


# static fields
.field static final ECHO_DELAY:I = 0xbb8

.field static final ECHO_MIU:I = 0x80

.field static final QUEUE_SIZE:I = 0x2


# instance fields
.field final callback:Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;

.field final dataQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field final dumpWhenFull:Z

.field final handler:Landroid/os/Handler;

.field shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;Z)V
    .registers 5
    .param p1, "callback"    # Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;
    .param p2, "dumpWhenFull"    # Z

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->shutdown:Z

    .line 126
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->callback:Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;

    .line 127
    iput-boolean p2, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->dumpWhenFull:Z

    .line 128
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->handler:Landroid/os/Handler;

    .line 130
    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 173
    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->shutdown:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1e

    if-eqz v0, :cond_8

    .line 177
    :cond_6
    monitor-exit p0

    return v2

    .line 174
    :cond_8
    :goto_8
    :try_start_8
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 175
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->callback:Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;

    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;->write([B)V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1e

    goto :goto_8

    .line 173
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pushUnit([BI)V
    .registers 11
    .param p1, "unit"    # [B
    .param p2, "size"    # I

    .prologue
    .line 133
    iget-boolean v4, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->dumpWhenFull:Z

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v4

    if-nez v4, :cond_18

    .line 134
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_17

    const-string v4, "EchoServer2"

    const-string v5, "Dumping data unit"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_17
    :goto_17
    return-void

    .line 138
    :cond_18
    move v3, p2

    .line 139
    .local v3, "sizeLeft":I
    const/4 v2, 0x0

    .line 140
    .local v2, "offset":I
    :try_start_1a
    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 142
    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 145
    :cond_2f
    if-nez v3, :cond_39

    .line 147
    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-interface {v4, v5}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 149
    :cond_39
    :goto_39
    if-lez v3, :cond_17

    .line 150
    const/16 v4, 0x80

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 151
    .local v1, "minSize":I
    new-array v0, v1, [B

    .line 152
    .local v0, "data":[B
    const/4 v4, 0x0

    invoke-static {p1, v2, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_4c} :catch_4f

    .line 154
    sub-int/2addr v3, v1

    .line 155
    add-int/2addr v2, v1

    .line 156
    goto :goto_39

    .line 157
    .end local v0    # "data":[B
    .end local v1    # "minSize":I
    :catch_4f
    move-exception v4

    goto :goto_17
.end method

.method public declared-synchronized shutdown()V
    .registers 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->shutdown:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 169
    monitor-exit p0

    return-void

    .line 167
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
