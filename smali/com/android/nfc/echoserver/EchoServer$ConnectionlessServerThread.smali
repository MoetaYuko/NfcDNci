.class public Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;
.super Ljava/lang/Thread;
.source "EchoServer.java"

# interfaces
.implements Lcom/android/nfc/echoserver/EchoServer$WriteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/echoserver/EchoServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionlessServerThread"
.end annotation


# instance fields
.field final echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

.field mRemoteSap:I

.field mRunning:Z

.field socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

.field final synthetic this$0:Lcom/android/nfc/echoserver/EchoServer;


# direct methods
.method public constructor <init>(Lcom/android/nfc/echoserver/EchoServer;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 283
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer;

    .line 284
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 281
    iput-boolean v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRunning:Z

    .line 285
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;-><init>(Lcom/android/nfc/echoserver/EchoServer$WriteCallback;Z)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    .line 286
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "connectionBroken":Z
    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v5, :cond_c

    const-string v5, "EchoServer"

    const-string v6, "about create LLCP connectionless socket"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_c
    :try_start_c
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer;

    iget-object v5, v5, Lcom/android/nfc/echoserver/EchoServer;->mService:Lcom/android/nfc/NfcService;

    const/16 v6, 0x12

    const-string v7, "urn:nfc:sn:cl-echo"

    invoke-virtual {v5, v6, v7}, Lcom/android/nfc/NfcService;->createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    .line 296
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-nez v5, :cond_43

    .line 297
    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v5, :cond_29

    const-string v5, "EchoServer"

    const-string v6, "failed to create LLCP connectionless socket"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Lcom/android/nfc/LlcpException; {:try_start_c .. :try_end_29} :catch_a6
    .catchall {:try_start_c .. :try_end_29} :catchall_c1

    .line 327
    :cond_29
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v5}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v5, :cond_37

    .line 331
    :try_start_32
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_d3

    .line 337
    :cond_37
    :goto_37
    return-void

    .line 315
    .local v1, "dataUnit":[B
    .local v3, "packet":Lcom/android/nfc/LlcpPacket;
    .local v4, "size":I
    :cond_38
    :try_start_38
    invoke-virtual {v3}, Lcom/android/nfc/LlcpPacket;->getRemoteSap()I

    move-result v5

    iput v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRemoteSap:I

    .line 316
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v5, v1, v4}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->pushUnit([BI)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_43} :catch_98
    .catch Lcom/android/nfc/LlcpException; {:try_start_38 .. :try_end_43} :catch_a6
    .catchall {:try_start_38 .. :try_end_43} :catchall_c1

    .line 301
    .end local v1    # "dataUnit":[B
    .end local v3    # "packet":Lcom/android/nfc/LlcpPacket;
    .end local v4    # "size":I
    :cond_43
    :goto_43
    :try_start_43
    iget-boolean v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRunning:Z
    :try_end_45
    .catch Lcom/android/nfc/LlcpException; {:try_start_43 .. :try_end_45} :catch_a6
    .catchall {:try_start_43 .. :try_end_45} :catchall_c1

    if-eqz v5, :cond_57

    if-nez v0, :cond_57

    .line 303
    :try_start_49
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->receive()Lcom/android/nfc/LlcpPacket;

    move-result-object v3

    .line 304
    .restart local v3    # "packet":Lcom/android/nfc/LlcpPacket;
    if-eqz v3, :cond_57

    invoke-virtual {v3}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_54} :catch_98
    .catch Lcom/android/nfc/LlcpException; {:try_start_49 .. :try_end_54} :catch_a6
    .catchall {:try_start_49 .. :try_end_54} :catchall_c1

    move-result-object v5

    if-nez v5, :cond_68

    .line 327
    .end local v3    # "packet":Lcom/android/nfc/LlcpPacket;
    :cond_57
    :goto_57
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v5}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v5, :cond_37

    .line 331
    :try_start_60
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_65} :catch_66

    goto :goto_37

    .line 332
    :catch_66
    move-exception v5

    goto :goto_37

    .line 307
    .restart local v3    # "packet":Lcom/android/nfc/LlcpPacket;
    :cond_68
    :try_start_68
    invoke-virtual {v3}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B

    move-result-object v1

    .line 308
    .restart local v1    # "dataUnit":[B
    array-length v4, v1

    .line 310
    .restart local v4    # "size":I
    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v5, :cond_94

    const-string v5, "EchoServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_94} :catch_98
    .catch Lcom/android/nfc/LlcpException; {:try_start_68 .. :try_end_94} :catch_a6
    .catchall {:try_start_68 .. :try_end_94} :catchall_c1

    .line 311
    :cond_94
    if-gez v4, :cond_38

    .line 312
    const/4 v0, 0x1

    goto :goto_57

    .line 318
    .end local v1    # "dataUnit":[B
    .end local v3    # "packet":Lcom/android/nfc/LlcpPacket;
    .end local v4    # "size":I
    :catch_98
    move-exception v2

    .line 320
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    .line 321
    :try_start_9a
    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v5, :cond_43

    const-string v5, "EchoServer"

    const-string v6, "connection broken by IOException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a5
    .catch Lcom/android/nfc/LlcpException; {:try_start_9a .. :try_end_a5} :catch_a6
    .catchall {:try_start_9a .. :try_end_a5} :catchall_c1

    goto :goto_43

    .line 324
    .end local v2    # "e":Ljava/io/IOException;
    :catch_a6
    move-exception v2

    .line 325
    .local v2, "e":Lcom/android/nfc/LlcpException;
    :try_start_a7
    const-string v5, "EchoServer"

    const-string v6, "llcp error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_c1

    .line 327
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v5}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v5, :cond_37

    .line 331
    :try_start_b7
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_bc} :catch_be

    goto/16 :goto_37

    .line 332
    :catch_be
    move-exception v5

    goto/16 :goto_37

    .line 327
    .end local v2    # "e":Lcom/android/nfc/LlcpException;
    :catchall_c1
    move-exception v5

    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v6}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v6, :cond_d0

    .line 331
    :try_start_cb
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d0} :catch_d1

    .line 333
    :cond_d0
    :goto_d0
    throw v5

    .line 332
    :catch_d1
    move-exception v6

    goto :goto_d0

    :catch_d3
    move-exception v5

    goto/16 :goto_37
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRunning:Z

    .line 341
    return-void
.end method

.method public write([B)V
    .registers 5
    .param p1, "data"    # [B

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRemoteSap:I

    invoke-interface {v1, v2, p1}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->send(I[B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 350
    :cond_7
    :goto_7
    return-void

    .line 347
    :catch_8
    move-exception v0

    .line 348
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "EchoServer"

    const-string v2, "Error writing data."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method
