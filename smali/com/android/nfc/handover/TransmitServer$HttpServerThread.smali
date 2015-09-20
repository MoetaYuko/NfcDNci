.class Lcom/android/nfc/handover/TransmitServer$HttpServerThread;
.super Landroid/os/AsyncTask;
.source "TransmitServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/TransmitServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpServerThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field localHost:Ljava/lang/String;

.field startServerTimes:I

.field final synthetic this$0:Lcom/android/nfc/handover/TransmitServer;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/TransmitServer;Ljava/lang/String;)V
    .registers 3
    .param p2, "ip"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->this$0:Lcom/android/nfc/handover/TransmitServer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    iput-object p2, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->localHost:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private isHttpServerStart()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 57
    iget-object v2, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->this$0:Lcom/android/nfc/handover/TransmitServer;

    invoke-static {v2}, Lcom/android/nfc/handover/TransmitServer;->access$100(Lcom/android/nfc/handover/TransmitServer;)Lcom/android/nfc/http/HTTPServer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->localHost:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->this$0:Lcom/android/nfc/handover/TransmitServer;

    invoke-static {v4}, Lcom/android/nfc/handover/TransmitServer;->access$000(Lcom/android/nfc/handover/TransmitServer;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/handover/TransmitManager;->getSelectHandover()Lcom/android/nfc/handover/Handover;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/handover/HandoverManager;->getServerPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/nfc/http/HTTPServer;->open(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 58
    iget-object v1, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->this$0:Lcom/android/nfc/handover/TransmitServer;

    invoke-static {v1}, Lcom/android/nfc/handover/TransmitServer;->access$100(Lcom/android/nfc/handover/TransmitServer;)Lcom/android/nfc/http/HTTPServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/http/HTTPServer;->start()Z

    .line 59
    iget-object v1, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->this$0:Lcom/android/nfc/handover/TransmitServer;

    invoke-static {v1, v0}, Lcom/android/nfc/handover/TransmitServer;->access$202(Lcom/android/nfc/handover/TransmitServer;Z)Z

    .line 66
    :goto_30
    return v0

    .line 63
    :cond_31
    const-string v0, "TransmitServer"

    const-string v2, "HttpServer open failure"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->this$0:Lcom/android/nfc/handover/TransmitServer;

    invoke-static {v0, v1}, Lcom/android/nfc/handover/TransmitServer;->access$202(Lcom/android/nfc/handover/TransmitServer;Z)Z

    .line 65
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->this$0:Lcom/android/nfc/handover/TransmitServer;

    invoke-static {v0}, Lcom/android/nfc/handover/TransmitServer;->access$000(Lcom/android/nfc/handover/TransmitServer;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/handover/TransmitManager;->getSelectHandover()Lcom/android/nfc/handover/Handover;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/nfc/handover/HandoverManager;->setServerPort(I)V

    move v0, v1

    .line 66
    goto :goto_30
.end method

.method private reStartHttpServer()V
    .registers 5

    .prologue
    .line 72
    :goto_0
    iget v1, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->startServerTimes:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_59

    iget-object v1, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->this$0:Lcom/android/nfc/handover/TransmitServer;

    invoke-static {v1}, Lcom/android/nfc/handover/TransmitServer;->access$200(Lcom/android/nfc/handover/TransmitServer;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 73
    iget v1, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->startServerTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->startServerTimes:I

    .line 75
    const-string v1, "TransmitServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startServerTimes == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->startServerTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v1, "TransmitServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHttpServerStart == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->this$0:Lcom/android/nfc/handover/TransmitServer;

    invoke-static {v3}, Lcom/android/nfc/handover/TransmitServer;->access$200(Lcom/android/nfc/handover/TransmitServer;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-wide/16 v1, 0x3e8

    :try_start_4d
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_54

    .line 83
    :goto_50
    invoke-direct {p0}, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->isHttpServerStart()Z

    goto :goto_0

    .line 80
    :catch_54
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_50

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_59
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->isHttpServerStart()Z

    move-result v0

    if-nez v0, :cond_9

    .line 92
    invoke-direct {p0}, Lcom/android/nfc/handover/TransmitServer$HttpServerThread;->reStartHttpServer()V

    .line 94
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method
