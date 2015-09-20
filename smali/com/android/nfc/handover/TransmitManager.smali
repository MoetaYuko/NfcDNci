.class public Lcom/android/nfc/handover/TransmitManager;
.super Ljava/lang/Object;
.source "TransmitManager.java"


# static fields
.field private static final DBG:Z = true

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSelectHandover:Lcom/android/nfc/handover/Handover;

.field private mTransmitClent:Lcom/android/nfc/handover/TransmitClient;

.field private mTransmitServer:Lcom/android/nfc/handover/TransmitServer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-string v0, "TransmitManager"

    sput-object v0, Lcom/android/nfc/handover/TransmitManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/handover/Handover;Landroid/content/Context;)V
    .registers 3
    .param p1, "handover"    # Lcom/android/nfc/handover/Handover;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/nfc/handover/TransmitManager;->mSelectHandover:Lcom/android/nfc/handover/Handover;

    .line 44
    iput-object p2, p0, Lcom/android/nfc/handover/TransmitManager;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private clearFileInfoXML()V
    .registers 5

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/nfc/handover/TransmitManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fileInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "fileInfoDirPath":Ljava/lang/String;
    sget-object v1, Lcom/android/nfc/handover/TransmitManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearFileInfoXML,fileInfoDirPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-direct {p0, v0}, Lcom/android/nfc/handover/TransmitManager;->delAllFile(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private delAllFile(Ljava/lang/String;)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_c

    .line 118
    :cond_b
    return-void

    .line 97
    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "tempList":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 102
    .local v2, "temp":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    array-length v4, v3

    if-ge v1, v4, :cond_b

    .line 103
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 104
    new-instance v2, Ljava/io/File;

    .end local v2    # "temp":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v2    # "temp":Ljava/io/File;
    :goto_3b
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 109
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_70

    .line 111
    sget-object v4, Lcom/android/nfc/handover/TransmitManager;->TAG:Ljava/lang/String;

    const-string v5, "temp file delete success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_4e
    :goto_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 106
    :cond_51
    new-instance v2, Ljava/io/File;

    .end local v2    # "temp":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2    # "temp":Ljava/io/File;
    goto :goto_3b

    .line 114
    :cond_70
    sget-object v4, Lcom/android/nfc/handover/TransmitManager;->TAG:Ljava/lang/String;

    const-string v5, "temp file delete fail"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method


# virtual methods
.method public buildHttpServer(Ljava/lang/String;)V
    .registers 4
    .param p1, "serverIp"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitServer:Lcom/android/nfc/handover/TransmitServer;

    if-nez v0, :cond_b

    .line 62
    new-instance v0, Lcom/android/nfc/handover/TransmitServer;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/TransmitServer;-><init>(Lcom/android/nfc/handover/TransmitManager;)V

    iput-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitServer:Lcom/android/nfc/handover/TransmitServer;

    .line 65
    :cond_b
    sget-object v0, Lcom/android/nfc/handover/TransmitManager;->TAG:Ljava/lang/String;

    const-string v1, "buildHttpServer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitServer:Lcom/android/nfc/handover/TransmitServer;

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/TransmitServer;->buildHttpServer(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public cancelFileTransmit()V
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitClent:Lcom/android/nfc/handover/TransmitClient;

    if-eqz v0, :cond_9

    .line 56
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitClent:Lcom/android/nfc/handover/TransmitClient;

    invoke-virtual {v0}, Lcom/android/nfc/handover/TransmitClient;->cancelFileTransmit()V

    .line 58
    :cond_9
    return-void
.end method

.method public closeServer()Z
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitServer:Lcom/android/nfc/handover/TransmitServer;

    if-eqz v0, :cond_e

    .line 71
    invoke-direct {p0}, Lcom/android/nfc/handover/TransmitManager;->clearFileInfoXML()V

    .line 72
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitServer:Lcom/android/nfc/handover/TransmitServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/TransmitServer;->closeHttpServer()Z

    move-result v0

    .line 74
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getFileUris(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "configinfo"    # Lcom/android/nfc/handover/ConfigInfo;
    .param p2, "serverIP"    # Ljava/lang/String;
    .param p3, "remoteaddress"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lcom/android/nfc/handover/TransmitClient;

    iget-object v1, p0, Lcom/android/nfc/handover/TransmitManager;->mSelectHandover:Lcom/android/nfc/handover/Handover;

    iget-object v2, p0, Lcom/android/nfc/handover/TransmitManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, v2}, Lcom/android/nfc/handover/TransmitClient;-><init>(Lcom/android/nfc/handover/Handover;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitClent:Lcom/android/nfc/handover/TransmitClient;

    .line 50
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitClent:Lcom/android/nfc/handover/TransmitClient;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/handover/TransmitClient;->getFiles(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public getSelectHandover()Lcom/android/nfc/handover/Handover;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mSelectHandover:Lcom/android/nfc/handover/Handover;

    return-object v0
.end method

.method public stopServer()Z
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitServer:Lcom/android/nfc/handover/TransmitServer;

    if-eqz v0, :cond_b

    .line 80
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitManager;->mTransmitServer:Lcom/android/nfc/handover/TransmitServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/TransmitServer;->closeHttpServer()Z

    move-result v0

    .line 82
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
