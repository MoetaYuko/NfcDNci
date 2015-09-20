.class Lcom/android/nfc/NfcService$InfoService$1;
.super Landroid/nfc/IGetNFCByteArray$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService$InfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService$InfoService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$InfoService;)V
    .registers 2

    .prologue
    .line 4110
    iput-object p1, p0, Lcom/android/nfc/NfcService$InfoService$1;->this$0:Lcom/android/nfc/NfcService$InfoService;

    invoke-direct {p0}, Landroid/nfc/IGetNFCByteArray$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public CollectRamDump(II)[B
    .registers 7
    .param p1, "addr"    # I
    .param p2, "len"    # I

    .prologue
    .line 4119
    iget-object v1, p0, Lcom/android/nfc/NfcService$InfoService$1;->this$0:Lcom/android/nfc/NfcService$InfoService;

    const-string v2, "android.permission.NFC"

    const-string v3, "NFC permission required"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4120
    invoke-static {}, Lcom/android/nfc/NfcService;->access$2100()Lcom/android/nfc/NfcService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/nfc/DeviceHost;->GetRamDump(II)[B

    move-result-object v0

    .line 4121
    .local v0, "result":[B
    return-object v0
.end method

.method public GetNfccInfo()[B
    .registers 4

    .prologue
    .line 4113
    iget-object v0, p0, Lcom/android/nfc/NfcService$InfoService$1;->this$0:Lcom/android/nfc/NfcService$InfoService;

    const-string v1, "android.permission.NFC"

    const-string v2, "NFC permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4114
    invoke-static {}, Lcom/android/nfc/NfcService;->access$2100()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->NfccInfo()[B

    move-result-object v0

    return-object v0
.end method
