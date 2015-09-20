.class public Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;
.super Ljava/lang/Thread;
.source "EchoServer2.java"

# interfaces
.implements Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/echoserver/EchoServer2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionlessServerThread"
.end annotation


# instance fields
.field final echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

.field mRemoteSap:I

.field mRunning:Z

.field private sapIn:I

.field private sapOut:I

.field private serviceNameIn:Ljava/lang/String;

.field private serviceNameOut:Ljava/lang/String;

.field socketIn:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

.field socketOut:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

.field final synthetic this$0:Lcom/android/nfc/echoserver/EchoServer2;


# direct methods
.method public constructor <init>(Lcom/android/nfc/echoserver/EchoServer2;Z)V
    .registers 7
    .param p2, "reverse"    # Z

    .prologue
    const/16 v3, 0x21

    const/16 v2, 0x11

    const/4 v1, 0x1

    .line 435
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    .line 436
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 428
    iput-boolean v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->mRunning:Z

    .line 437
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;-><init>(Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;Z)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    .line 439
    if-nez p2, :cond_22

    .line 440
    iput v3, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->sapIn:I

    .line 441
    iput v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->sapOut:I

    .line 442
    const-string v0, "urn:nfc:sn:dta-cl-echo-in"

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->serviceNameIn:Ljava/lang/String;

    .line 443
    const-string v0, "urn:nfc:sn:dta-cl-echo-out"

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->serviceNameOut:Ljava/lang/String;

    .line 450
    :goto_21
    return-void

    .line 445
    :cond_22
    iput v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->sapIn:I

    .line 446
    iput v3, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->sapOut:I

    .line 447
    const-string v0, "urn:nfc:sn:dta-cl-echo-out"

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->serviceNameIn:Ljava/lang/String;

    .line 448
    const-string v0, "urn:nfc:sn:dta-cl-echo-in"

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->serviceNameOut:Ljava/lang/String;

    goto :goto_21
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 454
    const/4 v0, 0x0

    .line 456
    .local v0, "connectionBroken":Z
    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v5, :cond_c

    const-string v5, "EchoServer2"

    const-string v6, "about to create LLCP connectionless socket"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_c
    :try_start_c
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-object v5, v5, Lcom/android/nfc/echoserver/EchoServer2;->mService:Lcom/android/nfc/NfcService;

    iget v6, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->sapIn:I

    iget-object v7, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->serviceNameIn:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/nfc/NfcService;->createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketIn:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    .line 460
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-object v5, v5, Lcom/android/nfc/echoserver/EchoServer2;->mService:Lcom/android/nfc/NfcService;

    iget v6, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->sapOut:I

    iget-object v7, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->serviceNameOut:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/nfc/NfcService;->createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketOut:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    .line 463
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketIn:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v5, :cond_30

    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketOut:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-nez v5, :cond_53

    .line 464
    :cond_30
    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v5, :cond_3b

    const-string v5, "EchoServer2"

    const-string v6, "failed to create LLCP connectionless socket"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Lcom/android/nfc/LlcpException; {:try_start_c .. :try_end_3b} :catch_da
    .catchall {:try_start_c .. :try_end_3b} :catchall_fe

    .line 498
    :cond_3b
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-virtual {v5}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->shutdown()V

    .line 500
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketIn:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v5, :cond_49

    .line 502
    :try_start_44
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketIn:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_49} :catch_123

    .line 506
    :cond_49
    :goto_49
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketOut:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v5, :cond_52

    .line 508
    :try_start_4d
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketOut:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_52} :catch_120

    .line 514
    :cond_52
    :goto_52
    return-void

    .line 468
    :cond_53
    :try_start_53
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-boolean v5, v5, Lcom/android/nfc/echoserver/EchoServer2;->mLtMode:Z

    if-eqz v5, :cond_62

    .line 469
    const-string v5, "abcxyz"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->write([B)V

    .line 472
    :cond_62
    :goto_62
    iget-boolean v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->mRunning:Z
    :try_end_64
    .catch Lcom/android/nfc/LlcpException; {:try_start_53 .. :try_end_64} :catch_da
    .catchall {:try_start_53 .. :try_end_64} :catchall_fe

    if-eqz v5, :cond_76

    if-nez v0, :cond_76

    .line 474
    :try_start_68
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketIn:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->receive()Lcom/android/nfc/LlcpPacket;

    move-result-object v3

    .line 475
    .local v3, "packet":Lcom/android/nfc/LlcpPacket;
    if-eqz v3, :cond_76

    invoke-virtual {v3}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_73} :catch_cc
    .catch Lcom/android/nfc/LlcpException; {:try_start_68 .. :try_end_73} :catch_da
    .catchall {:try_start_68 .. :try_end_73} :catchall_fe

    move-result-object v5

    if-nez v5, :cond_90

    .line 498
    .end local v3    # "packet":Lcom/android/nfc/LlcpPacket;
    :cond_76
    :goto_76
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-virtual {v5}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->shutdown()V

    .line 500
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketIn:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v5, :cond_84

    .line 502
    :try_start_7f
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketIn:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_84} :catch_11d

    .line 506
    :cond_84
    :goto_84
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketOut:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v5, :cond_52

    .line 508
    :try_start_88
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketOut:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8d} :catch_8e

    goto :goto_52

    .line 509
    :catch_8e
    move-exception v5

    goto :goto_52

    .line 478
    .restart local v3    # "packet":Lcom/android/nfc/LlcpPacket;
    :cond_90
    :try_start_90
    invoke-virtual {v3}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B

    move-result-object v1

    .line 479
    .local v1, "dataUnit":[B
    array-length v4, v1

    .line 481
    .local v4, "size":I
    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v5, :cond_bc

    const-string v5, "EchoServer2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LLCP CL read "

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

    .line 482
    :cond_bc
    if-gez v4, :cond_c0

    .line 483
    const/4 v0, 0x1

    goto :goto_76

    .line 486
    :cond_c0
    invoke-virtual {v3}, Lcom/android/nfc/LlcpPacket;->getRemoteSap()I

    move-result v5

    iput v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->mRemoteSap:I

    .line 487
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-virtual {v5, v1, v4}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->pushUnit([BI)V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_cb} :catch_cc
    .catch Lcom/android/nfc/LlcpException; {:try_start_90 .. :try_end_cb} :catch_da
    .catchall {:try_start_90 .. :try_end_cb} :catchall_fe

    goto :goto_62

    .line 489
    .end local v1    # "dataUnit":[B
    .end local v3    # "packet":Lcom/android/nfc/LlcpPacket;
    .end local v4    # "size":I
    :catch_cc
    move-exception v2

    .line 491
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    .line 492
    :try_start_ce
    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v5, :cond_62

    const-string v5, "EchoServer2"

    const-string v6, "connection broken by IOException"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d9
    .catch Lcom/android/nfc/LlcpException; {:try_start_ce .. :try_end_d9} :catch_da
    .catchall {:try_start_ce .. :try_end_d9} :catchall_fe

    goto :goto_62

    .line 495
    .end local v2    # "e":Ljava/io/IOException;
    :catch_da
    move-exception v2

    .line 496
    .local v2, "e":Lcom/android/nfc/LlcpException;
    :try_start_db
    const-string v5, "EchoServer2"

    const-string v6, "llcp error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e2
    .catchall {:try_start_db .. :try_end_e2} :catchall_fe

    .line 498
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-virtual {v5}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->shutdown()V

    .line 500
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketIn:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v5, :cond_f0

    .line 502
    :try_start_eb
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketIn:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_f0} :catch_11b

    .line 506
    :cond_f0
    :goto_f0
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketOut:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v5, :cond_52

    .line 508
    :try_start_f4
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketOut:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f9} :catch_fb

    goto/16 :goto_52

    .line 509
    :catch_fb
    move-exception v5

    goto/16 :goto_52

    .line 498
    .end local v2    # "e":Lcom/android/nfc/LlcpException;
    :catchall_fe
    move-exception v5

    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-virtual {v6}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->shutdown()V

    .line 500
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketIn:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v6, :cond_10d

    .line 502
    :try_start_108
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketIn:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10d} :catch_119

    .line 506
    :cond_10d
    :goto_10d
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketOut:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v6, :cond_116

    .line 508
    :try_start_111
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketOut:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_116} :catch_117

    .line 510
    :cond_116
    :goto_116
    throw v5

    .line 509
    :catch_117
    move-exception v6

    goto :goto_116

    .line 503
    :catch_119
    move-exception v6

    goto :goto_10d

    .restart local v2    # "e":Lcom/android/nfc/LlcpException;
    :catch_11b
    move-exception v5

    goto :goto_f0

    .end local v2    # "e":Lcom/android/nfc/LlcpException;
    :catch_11d
    move-exception v5

    goto/16 :goto_84

    .line 509
    :catch_120
    move-exception v5

    goto/16 :goto_52

    .line 503
    :catch_123
    move-exception v5

    goto/16 :goto_49
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 517
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->mRunning:Z

    .line 518
    return-void
.end method

.method public write([B)V
    .registers 5
    .param p1, "data"    # [B

    .prologue
    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->socketOut:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;->mRemoteSap:I

    invoke-interface {v1, v2, p1}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->send(I[B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 527
    :cond_7
    :goto_7
    return-void

    .line 524
    :catch_8
    move-exception v0

    .line 525
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "EchoServer2"

    const-string v2, "Error writing data."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method
