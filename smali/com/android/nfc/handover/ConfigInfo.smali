.class public Lcom/android/nfc/handover/ConfigInfo;
.super Ljava/lang/Object;
.source "ConfigInfo.java"


# instance fields
.field private mFileInfo:Lcom/android/nfc/handover/FileInfo;

.field private mServerPort:I


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/FileInfo;I)V
    .registers 3
    .param p1, "fileInfo"    # Lcom/android/nfc/handover/FileInfo;
    .param p2, "serverPort"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/nfc/handover/ConfigInfo;->mFileInfo:Lcom/android/nfc/handover/FileInfo;

    .line 12
    iput p2, p0, Lcom/android/nfc/handover/ConfigInfo;->mServerPort:I

    .line 13
    return-void
.end method


# virtual methods
.method public getmFileInfo()Lcom/android/nfc/handover/FileInfo;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/nfc/handover/ConfigInfo;->mFileInfo:Lcom/android/nfc/handover/FileInfo;

    return-object v0
.end method

.method public getmServerPort()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/android/nfc/handover/ConfigInfo;->mServerPort:I

    return v0
.end method

.method public setmFileInfo(Lcom/android/nfc/handover/FileInfo;)V
    .registers 2
    .param p1, "mFileInfo"    # Lcom/android/nfc/handover/FileInfo;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/nfc/handover/ConfigInfo;->mFileInfo:Lcom/android/nfc/handover/FileInfo;

    .line 21
    return-void
.end method

.method public setmServerPort(I)V
    .registers 2
    .param p1, "mServerPort"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/android/nfc/handover/ConfigInfo;->mServerPort:I

    .line 25
    return-void
.end method
