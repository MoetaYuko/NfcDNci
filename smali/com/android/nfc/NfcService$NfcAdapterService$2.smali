.class Lcom/android/nfc/NfcService$NfcAdapterService$2;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/snep/SnepServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService$NfcAdapterService;->snep_server_create(Ljava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private storedNdef:Landroid/nfc/NdefMessage;

.field final synthetic this$1:Lcom/android/nfc/NfcService$NfcAdapterService;

.field final synthetic val$enableExtendedDTAServer:Z


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$NfcAdapterService;Z)V
    .registers 4

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAdapterService$2;->this$1:Lcom/android/nfc/NfcService$NfcAdapterService;

    iput-boolean p2, p0, Lcom/android/nfc/NfcService$NfcAdapterService$2;->val$enableExtendedDTAServer:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService$2;->storedNdef:Landroid/nfc/NdefMessage;

    return-void
.end method


# virtual methods
.method public doClean()V
    .registers 2

    .prologue
    .line 1456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService$2;->storedNdef:Landroid/nfc/NdefMessage;

    .line 1457
    return-void
.end method

.method public doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .registers 9
    .param p1, "acceptableLength"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x0

    .line 1420
    if-eqz p2, :cond_21

    .line 1421
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService$2;->this$1:Lcom/android/nfc/NfcService$NfcAdapterService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SnepServer GET: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService$2;->this$1:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v4, p2}, Lcom/android/nfc/NfcService$NfcAdapterService;->get_text_from_ndef(Landroid/nfc/NdefMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$NfcAdapterService;->showToast(Ljava/lang/String;)V

    .line 1425
    :cond_21
    iget-boolean v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService$2;->val$enableExtendedDTAServer:Z

    if-nez v2, :cond_2c

    .line 1426
    const/16 v2, -0x20

    invoke-static {v2}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    .line 1450
    :cond_2b
    :goto_2b
    return-object v1

    .line 1431
    :cond_2c
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService$2;->storedNdef:Landroid/nfc/NdefMessage;

    if-eqz v2, :cond_5b

    .line 1433
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 1434
    .local v0, "firstRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1437
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService$2;->storedNdef:Landroid/nfc/NdefMessage;

    invoke-static {v2}, Lcom/android/nfc/snep/SnepMessage;->getSuccessResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    .line 1438
    .local v1, "successResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessage;->getLength()I

    move-result v2

    if-le v2, p1, :cond_2b

    .line 1440
    const/16 v2, -0x3f

    invoke-static {v2}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    goto :goto_2b

    .line 1447
    .end local v1    # "successResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_56
    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->getNotFoundResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    goto :goto_2b

    .line 1450
    .end local v0    # "firstRecord":Landroid/nfc/NdefRecord;
    :cond_5b
    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->getNotFoundResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    goto :goto_2b
.end method

.method public doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .registers 6
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1403
    if-eqz p1, :cond_20

    .line 1404
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService$2;->this$1:Lcom/android/nfc/NfcService$NfcAdapterService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SnepServer PUT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService$2;->this$1:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/NfcService$NfcAdapterService;->get_text_from_ndef(Landroid/nfc/NdefMessage;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$NfcAdapterService;->showToast(Ljava/lang/String;)V

    .line 1408
    :cond_20
    if-eqz p1, :cond_3e

    .line 1409
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 1410
    .local v0, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3e

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v1

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1411
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAdapterService$2;->storedNdef:Landroid/nfc/NdefMessage;

    .line 1416
    .end local v0    # "record":Landroid/nfc/NdefRecord;
    :cond_3e
    const/16 v1, -0x7f

    invoke-static {v1}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    return-object v1
.end method
