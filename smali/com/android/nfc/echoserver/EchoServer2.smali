.class public Lcom/android/nfc/echoserver/EchoServer2;
.super Ljava/lang/Object;
.source "EchoServer2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/echoserver/EchoServer2$1;,
        Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;,
        Lcom/android/nfc/echoserver/EchoServer2$ServerThread;,
        Lcom/android/nfc/echoserver/EchoServer2$EchoMachine;,
        Lcom/android/nfc/echoserver/EchoServer2$WriteCallback;
    }
.end annotation


# static fields
.field static final CONNECTIONLESS_SERVICE_NAME_IN:Ljava/lang/String; = "urn:nfc:sn:dta-cl-echo-in"

.field static final CONNECTIONLESS_SERVICE_NAME_OUT:Ljava/lang/String; = "urn:nfc:sn:dta-cl-echo-out"

.field static DBG:Z = false

.field static final DEFAULT_CL_IN_SAP:I = 0x21

.field static final DEFAULT_CL_OUT_SAP:I = 0x11

.field static final DEFAULT_CO_IN_SAP:I = 0x20

.field static final DEFAULT_CO_OUT_SAP:I = 0x12

.field static final MIU:I = 0x80

.field static final TAG:Ljava/lang/String; = "EchoServer2"


# instance fields
.field private mCoServiceNameIn:Ljava/lang/String;

.field private mCoServiceNameOut:Ljava/lang/String;

.field mConnectionlessServerThread:Lcom/android/nfc/echoserver/EchoServer2$ConnectionlessServerThread;

.field mLtMode:Z

.field mServerThread:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

.field mService:Lcom/android/nfc/NfcService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/echoserver/EchoServer2;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameIn:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameOut:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mService:Lcom/android/nfc/NfcService;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mLtMode:Z

    .line 86
    return-void
.end method


# virtual methods
.method public onLlcpActivated()V
    .registers 1

    .prologue
    .line 540
    return-void
.end method

.method public onLlcpDeactivated()V
    .registers 1

    .prologue
    .line 549
    return-void
.end method

.method public setCoServiceNames(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "serviceNameIn"    # Ljava/lang/String;
    .param p2, "serviceNameOut"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameIn:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameOut:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    .line 555
    monitor-enter p0

    .line 556
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mServerThread:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameIn:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameOut:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 557
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameIn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer2;->mCoServiceNameOut:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;-><init>(Lcom/android/nfc/echoserver/EchoServer2;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mServerThread:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    .line 558
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mServerThread:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 560
    :cond_1d
    monitor-exit p0

    .line 561
    return-void

    .line 560
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 564
    monitor-enter p0

    .line 565
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mServerThread:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    if-eqz v0, :cond_d

    .line 566
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mServerThread:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->shutdown()V

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mServerThread:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    .line 569
    :cond_d
    monitor-exit p0

    .line 570
    return-void

    .line 569
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method
