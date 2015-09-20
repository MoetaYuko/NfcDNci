.class Lcom/android/nfc/snep/SnepServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/snep/SnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mMessager:Lcom/android/nfc/snep/SnepMessenger;

.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/snep/SnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/snep/SnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .registers 6
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    .line 109
    const-string v0, "SnepServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 110
    iput-object p2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 111
    new-instance v0, Lcom/android/nfc/snep/SnepMessenger;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    .line 112
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_2c
    .catchall {:try_start_0 .. :try_end_3} :catchall_4e

    .line 120
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-boolean v0, v1, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 121
    .local v0, "running":Z
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_29

    .line 123
    :goto_8
    if-eqz v0, :cond_16

    .line 124
    :try_start_a
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v2, v2, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-static {v1, v2}, Lcom/android/nfc/snep/SnepServer;->handleRequest(Lcom/android/nfc/snep/SnepMessenger;Lcom/android/nfc/snep/SnepServer$Callback;)Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_13} :catch_2c
    .catchall {:try_start_a .. :try_end_13} :catchall_4e

    move-result v1

    if-nez v1, :cond_42

    .line 138
    :cond_16
    :try_start_16
    invoke-static {}, Landroid/nfc/DtaHelper;->isInLlcpOrSnepMode()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 139
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v1, v1, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-interface {v1}, Lcom/android/nfc/snep/SnepServer$Callback;->doClean()V

    .line 143
    :cond_23
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_28} :catch_64

    .line 150
    .end local v0    # "running":Z
    :goto_28
    return-void

    .line 121
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2c} :catch_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_4e

    .line 132
    :catch_2c
    move-exception v1

    .line 138
    :try_start_2d
    invoke-static {}, Landroid/nfc/DtaHelper;->isInLlcpOrSnepMode()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 139
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v1, v1, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-interface {v1}, Lcom/android/nfc/snep/SnepServer$Callback;->doClean()V

    .line 143
    :cond_3a
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3f} :catch_40

    goto :goto_28

    .line 144
    :catch_40
    move-exception v1

    goto :goto_28

    .line 128
    .restart local v0    # "running":Z
    :cond_42
    :try_start_42
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_2c
    .catchall {:try_start_42 .. :try_end_45} :catchall_4e

    .line 129
    :try_start_45
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-boolean v0, v1, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 130
    monitor-exit v2

    goto :goto_8

    :catchall_4b
    move-exception v1

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v1
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4e} :catch_2c
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 135
    .end local v0    # "running":Z
    :catchall_4e
    move-exception v1

    .line 138
    :try_start_4f
    invoke-static {}, Landroid/nfc/DtaHelper;->isInLlcpOrSnepMode()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 139
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v2, v2, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-interface {v2}, Lcom/android/nfc/snep/SnepServer$Callback;->doClean()V

    .line 143
    :cond_5c
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_61} :catch_62

    .line 146
    :goto_61
    throw v1

    .line 144
    :catch_62
    move-exception v2

    goto :goto_61

    .restart local v0    # "running":Z
    :catch_64
    move-exception v1

    goto :goto_28
.end method
