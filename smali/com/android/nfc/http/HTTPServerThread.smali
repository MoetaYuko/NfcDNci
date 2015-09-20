.class public Lcom/android/nfc/http/HTTPServerThread;
.super Ljava/lang/Thread;
.source "HTTPServerThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HTTPServerThread"


# instance fields
.field private httpServer:Lcom/android/nfc/http/HTTPServer;

.field private sock:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/android/nfc/http/HTTPServer;Ljava/net/Socket;)V
    .registers 4
    .param p1, "httpServer"    # Lcom/android/nfc/http/HTTPServer;
    .param p2, "sock"    # Ljava/net/Socket;

    .prologue
    .line 34
    const-string v0, "Cyber.HTTPServerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/android/nfc/http/HTTPServerThread;->httpServer:Lcom/android/nfc/http/HTTPServer;

    .line 36
    iput-object p2, p0, Lcom/android/nfc/http/HTTPServerThread;->sock:Ljava/net/Socket;

    .line 37
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 44
    new-instance v1, Lcom/android/nfc/http/HTTPSocket;

    iget-object v2, p0, Lcom/android/nfc/http/HTTPServerThread;->sock:Ljava/net/Socket;

    invoke-direct {v1, v2}, Lcom/android/nfc/http/HTTPSocket;-><init>(Ljava/net/Socket;)V

    .line 45
    .local v1, "httpSock":Lcom/android/nfc/http/HTTPSocket;
    invoke-virtual {v1}, Lcom/android/nfc/http/HTTPSocket;->open()Z

    move-result v2

    if-nez v2, :cond_e

    .line 57
    :goto_d
    return-void

    .line 47
    :cond_e
    new-instance v0, Lcom/android/nfc/http/HTTPRequest;

    invoke-direct {v0}, Lcom/android/nfc/http/HTTPRequest;-><init>()V

    .line 48
    .local v0, "httpReq":Lcom/android/nfc/http/HTTPRequest;
    invoke-virtual {v0, v1}, Lcom/android/nfc/http/HTTPRequest;->setSocket(Lcom/android/nfc/http/HTTPSocket;)V

    .line 49
    :cond_16
    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPRequest;->read()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 50
    iget-object v2, p0, Lcom/android/nfc/http/HTTPServerThread;->httpServer:Lcom/android/nfc/http/HTTPServer;

    invoke-virtual {v2, v0}, Lcom/android/nfc/http/HTTPServer;->performRequestListener(Lcom/android/nfc/http/HTTPRequest;)V

    .line 51
    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPRequest;->isKeepAlive()Z

    move-result v2

    if-nez v2, :cond_16

    .line 54
    :cond_28
    const-string v2, "HTTPServerThread"

    const-string v3, "HTTPServerThread close"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v1}, Lcom/android/nfc/http/HTTPSocket;->close()Z

    .line 56
    const-string v2, "HTTPServerThread"

    const-string v3, "httpSock close"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method
