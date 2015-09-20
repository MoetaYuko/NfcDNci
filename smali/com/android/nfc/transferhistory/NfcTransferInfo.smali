.class public Lcom/android/nfc/transferhistory/NfcTransferInfo;
.super Ljava/lang/Object;
.source "NfcTransferInfo.java"


# instance fields
.field private completeTime:J

.field private currentSize:J

.field private failedReason:I

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fileSize:J

.field private friendlyName:Ljava/lang/String;

.field private id:I

.field private mime:Ljava/lang/String;

.field private transferDir:I

.field private transferResult:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJ)V
    .registers 15
    .param p1, "ID"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "size"    # J
    .param p7, "csize"    # J
    .param p9, "friendlyname"    # Ljava/lang/String;
    .param p10, "dir"    # I
    .param p11, "result"    # I
    .param p12, "reason"    # I
    .param p13, "time"    # J

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->id:I

    .line 31
    iput-object p2, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->filePath:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->mime:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->fileName:Ljava/lang/String;

    .line 34
    iput-wide p5, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->fileSize:J

    .line 35
    iput-wide p7, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->currentSize:J

    .line 36
    iput-object p9, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->friendlyName:Ljava/lang/String;

    .line 37
    iput p10, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->transferDir:I

    .line 38
    iput p11, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->transferResult:I

    .line 39
    iput p12, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->failedReason:I

    .line 40
    iput-wide p13, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->completeTime:J

    .line 41
    return-void
.end method


# virtual methods
.method public getCompleteTime()J
    .registers 3

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->completeTime:J

    return-wide v0
.end method

.method public getCurrentSize()J
    .registers 3

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->currentSize:J

    return-wide v0
.end method

.method public getFailedReason()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->failedReason:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .registers 3

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->fileSize:J

    return-wide v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->id:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->mime:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferDir()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->transferDir:I

    return v0
.end method

.method public getTransferResult()I
    .registers 2

    .prologue
    .line 128
    iget v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->transferResult:I

    return v0
.end method

.method public setCompleteTime(J)V
    .registers 3
    .param p1, "time"    # J

    .prologue
    .line 140
    iput-wide p1, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->completeTime:J

    .line 141
    return-void
.end method

.method public setCurrentSize(J)V
    .registers 3
    .param p1, "size"    # J

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->currentSize:J

    .line 101
    return-void
.end method

.method public setFailedReason(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->failedReason:I

    .line 133
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->fileName:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->filePath:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setFileSize(J)V
    .registers 3
    .param p1, "size"    # J

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->fileSize:J

    .line 93
    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->friendlyName:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setID(I)V
    .registers 2
    .param p1, "ID"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->id:I

    .line 61
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->mime:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setTransferDir(I)V
    .registers 2
    .param p1, "dir"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->transferDir:I

    .line 117
    return-void
.end method

.method public setTransferInfo(Lcom/android/nfc/transferhistory/NfcTransferInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/android/nfc/transferhistory/NfcTransferInfo;

    .prologue
    .line 44
    if-eqz p1, :cond_2e

    .line 45
    iget v0, p1, Lcom/android/nfc/transferhistory/NfcTransferInfo;->id:I

    iput v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->id:I

    .line 46
    iget-object v0, p1, Lcom/android/nfc/transferhistory/NfcTransferInfo;->filePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->filePath:Ljava/lang/String;

    .line 47
    iget-object v0, p1, Lcom/android/nfc/transferhistory/NfcTransferInfo;->mime:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->mime:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/android/nfc/transferhistory/NfcTransferInfo;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->fileName:Ljava/lang/String;

    .line 49
    iget-wide v0, p1, Lcom/android/nfc/transferhistory/NfcTransferInfo;->fileSize:J

    iput-wide v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->fileSize:J

    .line 50
    iget-wide v0, p1, Lcom/android/nfc/transferhistory/NfcTransferInfo;->currentSize:J

    iput-wide v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->currentSize:J

    .line 51
    iget-object v0, p1, Lcom/android/nfc/transferhistory/NfcTransferInfo;->friendlyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->friendlyName:Ljava/lang/String;

    .line 52
    iget v0, p1, Lcom/android/nfc/transferhistory/NfcTransferInfo;->transferDir:I

    iput v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->transferDir:I

    .line 53
    iget v0, p1, Lcom/android/nfc/transferhistory/NfcTransferInfo;->transferResult:I

    iput v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->transferResult:I

    .line 54
    iget v0, p1, Lcom/android/nfc/transferhistory/NfcTransferInfo;->failedReason:I

    iput v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->failedReason:I

    .line 55
    iget-wide v0, p1, Lcom/android/nfc/transferhistory/NfcTransferInfo;->completeTime:J

    iput-wide v0, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->completeTime:J

    .line 57
    :cond_2e
    return-void
.end method

.method public setTransferResult(I)V
    .registers 2
    .param p1, "result"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/android/nfc/transferhistory/NfcTransferInfo;->transferResult:I

    .line 125
    return-void
.end method
