.class public final Lcom/android/nfc/snep/SnepServer;
.super Ljava/lang/Object;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/snep/SnepServer$ServerThread;,
        Lcom/android/nfc/snep/SnepServer$ConnectionThread;,
        Lcom/android/nfc/snep/SnepServer$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_MIU:I = 0xf8

.field public static final DEFAULT_PORT:I = 0x4

.field private static final DEFAULT_RW_SIZE:I = 0x1

.field public static final DEFAULT_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:snep"

.field private static final TAG:Ljava/lang/String; = "SnepServer"


# instance fields
.field final mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

.field final mFragmentLength:I

.field final mMiu:I

.field final mRwSize:I

.field mServerRunning:Z

.field mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

.field final mServiceName:Ljava/lang/String;

.field final mServiceSap:I


# direct methods
.method public constructor <init>(Lcom/android/nfc/snep/SnepServer$Callback;)V
    .registers 3
    .param p1, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 68
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 69
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 70
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 72
    const/16 v0, 0xf8

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/snep/SnepServer$Callback;II)V
    .registers 5
    .param p1, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;
    .param p2, "miu"    # I
    .param p3, "rwSize"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 86
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 87
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 88
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 90
    iput p2, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 91
    iput p3, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 92
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IILcom/android/nfc/snep/SnepServer$Callback;)V
    .registers 6
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "fragmentLength"    # I
    .param p4, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 95
    iput-object p4, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 96
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 97
    iput p2, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 98
    iput p3, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 99
    const/16 v0, 0xf8

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/nfc/snep/SnepServer$Callback;)V
    .registers 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 77
    iput-object p3, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 78
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 79
    iput p2, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 81
    const/16 v0, 0xf8

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 83
    return-void
.end method

.method static handleRequest(Lcom/android/nfc/snep/SnepMessenger;Lcom/android/nfc/snep/SnepServer$Callback;)Z
    .registers 9
    .param p0, "messenger"    # Lcom/android/nfc/snep/SnepMessenger;
    .param p1, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/16 v5, -0x3e

    const/4 v2, 0x0

    .line 156
    :try_start_5
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_8
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_5 .. :try_end_8} :catch_23

    move-result-object v1

    .line 168
    .local v1, "request":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getVersion()B

    move-result v4

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    if-eq v4, v3, :cond_30

    .line 169
    const/16 v4, -0x1f

    invoke-static {v4}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 173
    invoke-static {}, Landroid/nfc/DtaHelper;->isInLlcpOrSnepMode()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 205
    .end local v1    # "request":Lcom/android/nfc/snep/SnepMessage;
    :cond_22
    :goto_22
    return v2

    .line 157
    :catch_23
    move-exception v0

    .line 160
    .local v0, "e":Lcom/android/nfc/snep/SnepException;
    const/16 v3, -0x3e

    :try_start_26
    invoke-static {v3}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_2e

    goto :goto_22

    .line 162
    :catch_2e
    move-exception v3

    goto :goto_22

    .line 177
    .end local v0    # "e":Lcom/android/nfc/snep/SnepException;
    .restart local v1    # "request":Lcom/android/nfc/snep/SnepMessage;
    :cond_30
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v4

    if-ne v4, v3, :cond_47

    .line 178
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getAcceptableLength()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v4

    invoke-interface {p1, v2, v4}, Lcom/android/nfc/snep/SnepServer$Callback;->doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    :cond_45
    :goto_45
    move v2, v3

    .line 205
    goto :goto_22

    .line 180
    :cond_47
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v4

    if-ne v4, v6, :cond_59

    .line 182
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/nfc/snep/SnepServer$Callback;->doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto :goto_45

    .line 185
    :cond_59
    invoke-static {}, Landroid/nfc/DtaHelper;->isInLlcpOrSnepMode()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 186
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v3

    if-le v3, v6, :cond_22

    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_22

    .line 187
    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto :goto_22

    .line 200
    :cond_74
    invoke-static {}, Landroid/nfc/DtaHelper;->isInLlcpOrSnepMode()Z

    move-result v2

    if-nez v2, :cond_45

    .line 201
    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto :goto_45
.end method


# virtual methods
.method public start()V
    .registers 2

    .prologue
    .line 301
    monitor-enter p0

    .line 303
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    if-nez v0, :cond_14

    .line 305
    new-instance v0, Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/snep/SnepServer$ServerThread;-><init>(Lcom/android/nfc/snep/SnepServer;)V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 306
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 309
    :cond_14
    monitor-exit p0

    .line 310
    return-void

    .line 309
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 313
    monitor-enter p0

    .line 315
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    if-eqz v0, :cond_10

    .line 317
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer$ServerThread;->shutdown()V

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 321
    :cond_10
    monitor-exit p0

    .line 322
    return-void

    .line 321
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method
