.class public Lcom/android/nfc/NfcService$InfoService;
.super Landroid/app/Service;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoService"
.end annotation


# instance fields
.field private myService:Landroid/nfc/IGetNFCByteArray$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4109
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4110
    new-instance v0, Lcom/android/nfc/NfcService$InfoService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$InfoService$1;-><init>(Lcom/android/nfc/NfcService$InfoService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService$InfoService;->myService:Landroid/nfc/IGetNFCByteArray$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4127
    const-string v0, "android.permission.NFC"

    const-string v1, "NFC permission required"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4128
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    iget-object v0, p0, Lcom/android/nfc/NfcService$InfoService;->myService:Landroid/nfc/IGetNFCByteArray$Stub;

    invoke-virtual {v0}, Landroid/nfc/IGetNFCByteArray$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 4134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 4136
    return-void
.end method
