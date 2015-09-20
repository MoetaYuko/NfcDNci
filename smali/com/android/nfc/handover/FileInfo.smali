.class public Lcom/android/nfc/handover/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field private fileLen:J

.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/android/nfc/handover/FileInfo;->fileName:Ljava/lang/String;

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/nfc/handover/FileInfo;->fileLen:J

    .line 37
    iput-object v2, p0, Lcom/android/nfc/handover/FileInfo;->filePath:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getFileLen()J
    .registers 3

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/nfc/handover/FileInfo;->fileLen:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/nfc/handover/FileInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/nfc/handover/FileInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public setFileLen(J)V
    .registers 3
    .param p1, "fileLen"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/android/nfc/handover/FileInfo;->fileLen:J

    .line 62
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/nfc/handover/FileInfo;->fileName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/nfc/handover/FileInfo;->filePath:Ljava/lang/String;

    .line 46
    return-void
.end method
