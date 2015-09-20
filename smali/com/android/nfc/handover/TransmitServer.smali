.class public Lcom/android/nfc/handover/TransmitServer;
.super Ljava/lang/Object;
.source "TransmitServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/TransmitServer$HttpServerThread;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "TransmitServer"

.field private static final startServerMaxTime:I = 0x5


# instance fields
.field private volatile isHttpServerStart:Z

.field private mHttpServer:Lcom/android/nfc/http/HTTPServer;

.field private mTransmitManager:Lcom/android/nfc/handover/TransmitManager;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/TransmitManager;)V
    .registers 2
    .param p1, "transmitManager"    # Lcom/android/nfc/handover/TransmitManager;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/nfc/handover/TransmitServer;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/TransmitServer;)Lcom/android/nfc/handover/TransmitManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitServer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitServer;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/TransmitServer;)Lcom/android/nfc/http/HTTPServer;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitServer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitServer;->mHttpServer:Lcom/android/nfc/http/HTTPServer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/TransmitServer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitServer;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/nfc/handover/TransmitServer;->isHttpServerStart:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/nfc/handover/TransmitServer;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitServer;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/nfc/handover/TransmitServer;->isHttpServerStart:Z

    return p1
.end method


# virtual methods
.method public buildHttpServer(Ljava/lang/String;)V
    .registers 5
    .param p1, "serverIp"    # Ljava/lang/String;

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :try_start_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/TransmitServer;->isOpened()Z

    move-result v1

    if-nez v1, :cond_24

    .line 101
    new-instance v1, Lcom/android/nfc/http/HTTPServer;

    iget-object v2, p0, Lcom/android/nfc/handover/TransmitServer;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    invoke-direct {v1, v2}, Lcom/android/nfc/http/HTTPServer;-><init>(Lcom/android/nfc/handover/TransmitManager;)V

    iput-object v1, p0, Lcom/android/nfc/handover/TransmitServer;->mHttpServer:Lcom/android/nfc/http/HTTPServer;

    .line 103
    const-string v1, "TransmitServer"

    const-string v2, "build a new HttpServer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;

    invoke-direct {v0, p0, p1}, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;-><init>(Lcom/android/nfc/handover/TransmitServer;Ljava/lang/String;)V

    .line 105
    .local v0, "mHttpServerThread":Lcom/android/nfc/handover/TransmitServer$HttpServerThread;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 110
    .end local v0    # "mHttpServerThread":Lcom/android/nfc/handover/TransmitServer$HttpServerThread;
    :goto_22
    monitor-exit p0

    .line 111
    return-void

    .line 108
    :cond_24
    const-string v1, "TransmitServer"

    const-string v2, "HttpServer has open"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 110
    :catchall_2c
    move-exception v1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public closeHttpServer()Z
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitServer;->mHttpServer:Lcom/android/nfc/http/HTTPServer;

    if-eqz v0, :cond_15

    .line 132
    const-string v0, "TransmitServer"

    const-string v1, "HttpServer is close"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/TransmitServer;->isHttpServerStart:Z

    .line 134
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitServer;->mHttpServer:Lcom/android/nfc/http/HTTPServer;

    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPServer;->close()Z

    move-result v0

    .line 136
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public isOpened()Z
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitServer;->mHttpServer:Lcom/android/nfc/http/HTTPServer;

    if-eqz v0, :cond_12

    .line 143
    const-string v0, "TransmitServer"

    const-string v1, "HttpServer is opened"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitServer;->mHttpServer:Lcom/android/nfc/http/HTTPServer;

    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPServer;->isOpened()Z

    move-result v0

    .line 148
    :goto_11
    return v0

    .line 147
    :cond_12
    const-string v0, "TransmitServer"

    const-string v1, "HttpServer is not open,we should open HttpServer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    goto :goto_11
.end method
