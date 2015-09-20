.class public Lcom/android/nfc/echoserver/EchoServer2$ServerThread;
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
    name = "ServerThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/echoserver/EchoServer2$ServerThread$TimeoutTask;
    }
.end annotation


# static fields
.field private static final TIMEOUT:I = 0xbb8


# instance fields
.field clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

.field running:Z

.field private sapIn:I

.field private sapOut:I

.field serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private serviceNameIn:Ljava/lang/String;

.field private serviceNameOut:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/nfc/echoserver/EchoServer2;

.field private volatile timeout:Z

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/android/nfc/echoserver/EchoServer2;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p2, "serviceNameIn"    # Ljava/lang/String;
    .param p3, "serviceNameOut"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x12

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 199
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    .line 200
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->running:Z

    .line 187
    iput-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 188
    iput-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 189
    iput-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 191
    iput-boolean v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timeout:Z

    .line 201
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-direct {v0, p0, v2}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;-><init>(Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;Z)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    .line 203
    iget-boolean v0, p1, Lcom/android/nfc/echoserver/EchoServer2;->mLtMode:Z

    if-nez v0, :cond_2a

    .line 204
    iput v4, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapIn:I

    .line 205
    iput v3, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapOut:I

    .line 206
    iput-object p2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameIn:Ljava/lang/String;

    .line 207
    iput-object p3, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameOut:Ljava/lang/String;

    .line 214
    :goto_29
    return-void

    .line 209
    :cond_2a
    iput v3, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapIn:I

    .line 210
    iput v4, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapOut:I

    .line 211
    iput-object p3, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameIn:Ljava/lang/String;

    .line 212
    iput-object p2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameOut:Ljava/lang/String;

    goto :goto_29
.end method

.method static synthetic access$100(Lcom/android/nfc/echoserver/EchoServer2$ServerThread;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timeout()V

    return-void
.end method

.method private closeClientSockets()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 360
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "EchoServer2"

    const-string v1, "closeClientSockets()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_c
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    if-eqz v0, :cond_22

    .line 363
    :try_start_10
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_3b

    .line 367
    :goto_15
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_20

    const-string v0, "EchoServer2"

    const-string v1, "clientSocketIn closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_20
    iput-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 371
    :cond_22
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    if-eqz v0, :cond_38

    .line 373
    :try_start_26
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_39

    .line 377
    :goto_2b
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_36

    const-string v0, "EchoServer2"

    const-string v1, "clientSocketOut closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_36
    iput-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 380
    :cond_38
    return-void

    .line 374
    :catch_39
    move-exception v0

    goto :goto_2b

    .line 364
    :catch_3b
    move-exception v0

    goto :goto_15
.end method

.method private handleClient(Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .registers 9
    .param p1, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 217
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_b

    const-string v4, "EchoServer2"

    const-string v5, "handleClient()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_b
    const/4 v0, 0x0

    .line 219
    .local v0, "connectionBroken":Z
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 222
    .local v1, "dataUnit":[B
    :cond_10
    :goto_10
    if-nez v0, :cond_3b

    .line 224
    :try_start_12
    invoke-interface {p1, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v3

    .line 225
    .local v3, "size":I
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_38

    const-string v4, "EchoServer2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LLCP CO read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_38
    if-gez v3, :cond_3c

    .line 227
    const/4 v0, 0x1

    .line 238
    .end local v3    # "size":I
    :cond_3b
    return-void

    .line 230
    .restart local v3    # "size":I
    :cond_3c
    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-virtual {v4, v1, v3}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->pushUnit([BI)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_41} :catch_42

    goto :goto_10

    .line 232
    .end local v3    # "size":I
    :catch_42
    move-exception v2

    .line 234
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    .line 235
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v4, :cond_10

    const-string v4, "EchoServer2"

    const-string v5, "connection broken by IOException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method private timeout()V
    .registers 3

    .prologue
    .line 408
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "EchoServer2"

    const-string v1, "LLCP timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timeout:Z

    .line 410
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 411
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 242
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_2b

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "about to create LLCP service socket, service name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameIn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-object v0, v0, Lcom/android/nfc/echoserver/EchoServer2;->mService:Lcom/android/nfc/NfcService;

    iget v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapIn:I

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameIn:Ljava/lang/String;

    const/16 v3, 0x80

    const/4 v4, 0x1

    const/16 v5, 0x400

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_3e
    .catch Lcom/android/nfc/LlcpException; {:try_start_2b .. :try_end_3e} :catch_2fa

    .line 250
    :goto_3e
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_4e

    .line 251
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_4d

    const-string v0, "EchoServer2"

    const-string v1, "failed to create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_4d
    :goto_4d
    return-void

    .line 254
    :cond_4e
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_59

    const-string v0, "EchoServer2"

    const-string v1, "created LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_59
    :goto_59
    iget-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->running:Z

    if-eqz v0, :cond_2b7

    .line 258
    :try_start_5d
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-boolean v0, v0, Lcom/android/nfc/echoserver/EchoServer2;->mLtMode:Z

    if-nez v0, :cond_ea

    .line 259
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_8d

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service socket about to accept "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameIn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_8d
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 261
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_cb

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service socket accept returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameIn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_cb
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timer:Ljava/util/Timer;

    .line 264
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/nfc/echoserver/EchoServer2$ServerThread$TimeoutTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread$TimeoutTask;-><init>(Lcom/android/nfc/echoserver/EchoServer2$ServerThread;Lcom/android/nfc/echoserver/EchoServer2$1;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 265
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_ea

    const-string v0, "EchoServer2"

    const-string v1, "timeout timer started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_ea
    const/4 v9, 0x0

    .line 269
    .local v9, "isOutboundConnectionEstablished":Z
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_113

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOutboundConnectionEstablished:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timeout:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_113
    :goto_113
    if-nez v9, :cond_225

    iget-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timeout:Z
    :try_end_117
    .catch Lcom/android/nfc/LlcpException; {:try_start_5d .. :try_end_117} :catch_1ab
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_117} :catch_2a0
    .catchall {:try_start_5d .. :try_end_117} :catchall_1ee

    if-nez v0, :cond_225

    .line 273
    :try_start_119
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_124

    const-string v0, "EchoServer2"

    const-string v1, "Attempting to connect outbound connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_124
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-object v0, v0, Lcom/android/nfc/echoserver/EchoServer2;->mService:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    const/16 v2, 0x80

    const/4 v3, 0x1

    const/16 v4, 0x400

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 276
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    if-nez v0, :cond_162

    .line 277
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not create socket."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_140} :catch_140
    .catch Lcom/android/nfc/LlcpException; {:try_start_119 .. :try_end_140} :catch_1ab
    .catchall {:try_start_119 .. :try_end_140} :catchall_1ee

    .line 301
    :catch_140
    move-exception v8

    .line 302
    .local v8, "ioe":Ljava/io/IOException;
    :try_start_141
    const-string v0, "EchoServer2"

    const-string v1, "IO error"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_148
    .catch Lcom/android/nfc/LlcpException; {:try_start_141 .. :try_end_148} :catch_1ab
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_148} :catch_2a0
    .catchall {:try_start_141 .. :try_end_148} :catchall_1ee

    .line 304
    :try_start_148
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_153

    const-string v0, "EchoServer2"

    const-string v1, "Retry connecting outbound connection"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_153
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-boolean v0, v0, Lcom/android/nfc/echoserver/EchoServer2;->mLtMode:Z

    if-eqz v0, :cond_221

    const/16 v7, 0xbb8

    .line 306
    .local v7, "interval":I
    :goto_15b
    int-to-long v0, v7

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15f
    .catch Ljava/lang/InterruptedException; {:try_start_148 .. :try_end_15f} :catch_160
    .catch Lcom/android/nfc/LlcpException; {:try_start_148 .. :try_end_15f} :catch_1ab
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_15f} :catch_2a0
    .catchall {:try_start_148 .. :try_end_15f} :catchall_1ee

    goto :goto_113

    .line 307
    .end local v7    # "interval":I
    :catch_160
    move-exception v0

    goto :goto_113

    .line 284
    .end local v8    # "ioe":Ljava/io/IOException;
    :cond_162
    :try_start_162
    invoke-static {}, Landroid/nfc/DtaHelper;->isInLlcpSnl()Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 285
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_186

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client socket starting snl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_186
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    iget v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapOut:I

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToSap(I)V

    .line 297
    :goto_18d
    const/4 v9, 0x1

    .line 298
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_199

    const-string v0, "EchoServer2"

    const-string v1, "client socket connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_199
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_1a4

    const-string v0, "EchoServer2"

    const-string v1, "cancelling timeout timer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1a4
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_1a9} :catch_140
    .catch Lcom/android/nfc/LlcpException; {:try_start_162 .. :try_end_1a9} :catch_1ab
    .catchall {:try_start_162 .. :try_end_1a9} :catchall_1ee

    goto/16 :goto_113

    .line 328
    .end local v9    # "isOutboundConnectionEstablished":Z
    :catch_1ab
    move-exception v6

    .line 329
    .local v6, "e":Lcom/android/nfc/LlcpException;
    :try_start_1ac
    const-string v0, "EchoServer2"

    const-string v1, "LLCP error"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->running:Z
    :try_end_1b6
    .catchall {:try_start_1ac .. :try_end_1b6} :catchall_1ee

    .line 336
    const-string v0, "EchoServer2"

    const-string v1, "connection, broken closing client sockets"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->closeClientSockets()V

    goto/16 :goto_59

    .line 288
    .end local v6    # "e":Lcom/android/nfc/LlcpException;
    .restart local v9    # "isOutboundConnectionEstablished":Z
    :cond_1c2
    :try_start_1c2
    invoke-static {}, Landroid/nfc/DtaHelper;->isInLlcpName()Z

    move-result v0

    if-eqz v0, :cond_1fa

    .line 289
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_1e6

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client socket connecting to service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameOut:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1e6
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameOut:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_1ed
    .catch Ljava/io/IOException; {:try_start_1c2 .. :try_end_1ed} :catch_140
    .catch Lcom/android/nfc/LlcpException; {:try_start_1c2 .. :try_end_1ed} :catch_1ab
    .catchall {:try_start_1c2 .. :try_end_1ed} :catchall_1ee

    goto :goto_18d

    .line 336
    .end local v9    # "isOutboundConnectionEstablished":Z
    :catchall_1ee
    move-exception v0

    const-string v1, "EchoServer2"

    const-string v2, "connection, broken closing client sockets"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->closeClientSockets()V

    throw v0

    .line 293
    .restart local v9    # "isOutboundConnectionEstablished":Z
    :cond_1fa
    :try_start_1fa
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_218

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client socket connecting to sap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapOut:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_218
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    iget v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapOut:I

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToSap(I)V
    :try_end_21f
    .catch Ljava/io/IOException; {:try_start_1fa .. :try_end_21f} :catch_140
    .catch Lcom/android/nfc/LlcpException; {:try_start_1fa .. :try_end_21f} :catch_1ab
    .catchall {:try_start_1fa .. :try_end_21f} :catchall_1ee

    goto/16 :goto_18d

    .line 305
    .restart local v8    # "ioe":Ljava/io/IOException;
    :cond_221
    const/16 v7, 0xfa

    goto/16 :goto_15b

    .line 313
    .end local v8    # "ioe":Ljava/io/IOException;
    :cond_225
    if-eqz v9, :cond_28b

    .line 314
    :try_start_227
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-boolean v0, v0, Lcom/android/nfc/echoserver/EchoServer2;->mLtMode:Z

    if-eqz v0, :cond_286

    .line 315
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_257

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "about to accept "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serviceNameIn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->sapIn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_257
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 317
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_27d

    const-string v0, "EchoServer2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_27d
    const-string v0, "abcxyz"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->write([B)V

    .line 322
    :cond_286
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketIn:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-direct {p0, v0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->handleClient(Lcom/android/nfc/DeviceHost$LlcpSocket;)V

    .line 325
    :cond_28b
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer2;

    iget-boolean v0, v0, Lcom/android/nfc/echoserver/EchoServer2;->mLtMode:Z

    if-nez v0, :cond_294

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->timeout:Z
    :try_end_294
    .catch Lcom/android/nfc/LlcpException; {:try_start_227 .. :try_end_294} :catch_1ab
    .catch Ljava/io/IOException; {:try_start_227 .. :try_end_294} :catch_2a0
    .catchall {:try_start_227 .. :try_end_294} :catchall_1ee

    .line 336
    :cond_294
    const-string v0, "EchoServer2"

    const-string v1, "connection, broken closing client sockets"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->closeClientSockets()V

    goto/16 :goto_59

    .line 331
    .end local v9    # "isOutboundConnectionEstablished":Z
    :catch_2a0
    move-exception v6

    .line 332
    .local v6, "e":Ljava/io/IOException;
    :try_start_2a1
    const-string v0, "EchoServer2"

    const-string v1, "IO error"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->running:Z
    :try_end_2ab
    .catchall {:try_start_2a1 .. :try_end_2ab} :catchall_1ee

    .line 336
    const-string v0, "EchoServer2"

    const-string v1, "connection, broken closing client sockets"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-direct {p0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->closeClientSockets()V

    goto/16 :goto_59

    .line 341
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2b7
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_2c2

    const-string v0, "EchoServer2"

    const-string v1, "CO shutdown: shutdown echomachine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_2c2
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;->shutdown()V

    .line 344
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_2d2

    const-string v0, "EchoServer2"

    const-string v1, "CO shutdown: closing client sockets"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_2d2
    invoke-direct {p0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->closeClientSockets()V

    .line 347
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_2e0

    const-string v0, "EchoServer2"

    const-string v1, "CO shutdown: closing server socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_2e0
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_4d

    .line 350
    :try_start_2e4
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_2e9
    .catch Ljava/io/IOException; {:try_start_2e4 .. :try_end_2e9} :catch_2f8

    .line 354
    :goto_2e9
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_2f4

    const-string v0, "EchoServer2"

    const-string v1, "CO shutdown: server socket closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_2f4
    iput-object v10, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    goto/16 :goto_4d

    .line 351
    :catch_2f8
    move-exception v0

    goto :goto_2e9

    .line 247
    :catch_2fa
    move-exception v0

    goto/16 :goto_3e
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 395
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "EchoServer2"

    const-string v1, "shutdown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->running:Z

    .line 397
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_1a

    .line 399
    :try_start_12
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_1b

    .line 403
    :goto_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 405
    :cond_1a
    return-void

    .line 400
    :catch_1b
    move-exception v0

    goto :goto_17
.end method

.method public write([B)V
    .registers 5
    .param p1, "data"    # [B

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    if-eqz v1, :cond_10

    .line 386
    :try_start_4
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->clientSocketOut:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 387
    const-string v1, "EchoServer2"

    const-string v2, "Send success!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_11

    .line 392
    :cond_10
    :goto_10
    return-void

    .line 388
    :catch_11
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "EchoServer2"

    const-string v2, "Send failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method
