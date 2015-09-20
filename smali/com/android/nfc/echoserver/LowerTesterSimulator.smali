.class public Lcom/android/nfc/echoserver/LowerTesterSimulator;
.super Lcom/android/nfc/echoserver/EchoServer2;
.source "LowerTesterSimulator.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/nfc/echoserver/EchoServer2;-><init>()V

    .line 16
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mService:Lcom/android/nfc/NfcService;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer2;->mLtMode:Z

    .line 18
    return-void
.end method
