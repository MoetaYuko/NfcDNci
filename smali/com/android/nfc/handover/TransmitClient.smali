.class public Lcom/android/nfc/handover/TransmitClient;
.super Ljava/lang/Object;
.source "TransmitClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/TransmitClient$GetFileThread;
    }
.end annotation


# static fields
.field public static final ACTION_NOT_ENOUGH_FREE_SPACE:Ljava/lang/String; = "com.android.nfc.handover.action.ACTION_NOT_ENOUGH_FREE_SPACE"

.field private static final BEAM_DIR:Ljava/lang/String; = "beam"

.field private static final CONNECT_TIMEOUT:I = 0x1388

.field static final DBG:Z = true

.field private static final FILE_PROGRESS_PERIOD_TIME:I = 0x1f4

.field private static final READ_BUFF_LEN:I = 0x4000

.field private static final READ_TIMEOUT:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "TransmitClient"


# instance fields
.field private volatile isCancelFile:Z

.field isConnected:Z

.field private isSendingFile:Z

.field private mContext:Landroid/content/Context;

.field public mCurrLen:J

.field private mGetFileThread:Lcom/android/nfc/handover/TransmitClient$GetFileThread;

.field private mRemoteMac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/Handover;Ljava/lang/String;Landroid/content/Context;)V
    .registers 6
    .param p1, "handover"    # Lcom/android/nfc/handover/Handover;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-boolean v0, p0, Lcom/android/nfc/handover/TransmitClient;->isSendingFile:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/nfc/handover/TransmitClient;->isConnected:Z

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/nfc/handover/TransmitClient;->mCurrLen:J

    .line 95
    iput-object p2, p0, Lcom/android/nfc/handover/TransmitClient;->mRemoteMac:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/android/nfc/handover/TransmitClient;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/TransmitClient;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitClient;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/nfc/handover/TransmitClient;->isCancelFile:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/nfc/handover/TransmitClient;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitClient;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/nfc/handover/TransmitClient;->isCancelFile:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/TransmitClient;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitClient;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/TransmitClient;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/TransmitClient;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitClient;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/handover/TransmitClient;Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p0, "x0"    # Lcom/android/nfc/handover/TransmitClient;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/TransmitClient;->generateUniqueFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized createHWBeamFolder()Ljava/io/File;
    .registers 5

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "extRoot":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "beam"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "beamPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_44

    move-result v2

    if-nez v2, :cond_3c

    .line 109
    const/4 v0, 0x0

    .line 113
    .end local v0    # "beamPath":Ljava/io/File;
    :goto_3a
    monitor-exit p0

    return-object v0

    .line 112
    .restart local v0    # "beamPath":Ljava/io/File;
    :cond_3c
    :try_start_3c
    const-string v2, "TransmitClient"

    const-string v3, "HWBeamFolder is exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_44

    goto :goto_3a

    .line 106
    .end local v0    # "beamPath":Ljava/io/File;
    .end local v1    # "extRoot":Ljava/lang/String;
    :catchall_44
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized generateUniqueFile(Ljava/lang/String;)Ljava/io/File;
    .registers 12
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    const-string v7, "."

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 130
    .local v2, "dotIndex":I
    const/4 v4, 0x0

    .line 131
    .local v4, "extension":Ljava/lang/String;
    const/4 v5, 0x0

    .line 132
    .local v5, "fileNameWithoutExtension":Ljava/lang/String;
    if-gez v2, :cond_18

    .line 133
    const-string v4, ""

    .line 134
    move-object v5, p1

    .line 140
    :goto_e
    invoke-direct {p0}, Lcom/android/nfc/handover/TransmitClient;->createHWBeamFolder()Ljava/io/File;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_91

    move-result-object v0

    .line 141
    .local v0, "HwBeamFolder":Ljava/io/File;
    const/4 v6, 0x0

    .line 142
    .local v6, "path":Ljava/lang/String;
    if-nez v0, :cond_22

    .line 143
    const/4 v3, 0x0

    .line 156
    :goto_16
    monitor-exit p0

    return-object v3

    .line 136
    .end local v0    # "HwBeamFolder":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    :cond_18
    :try_start_18
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 137
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_e

    .line 145
    .restart local v0    # "HwBeamFolder":Ljava/io/File;
    .restart local v6    # "path":Ljava/lang/String;
    :cond_22
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 148
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v3, "dstFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 150
    .local v1, "count":I
    :goto_43
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_74

    .line 151
    new-instance v3, Ljava/io/File;

    .end local v3    # "dstFile":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .restart local v3    # "dstFile":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 155
    :cond_74
    const-string v7, "TransmitClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dstFile path is :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_18 .. :try_end_90} :catchall_91

    goto :goto_16

    .line 129
    .end local v0    # "HwBeamFolder":Ljava/io/File;
    .end local v1    # "count":I
    .end local v2    # "dotIndex":I
    .end local v3    # "dstFile":Ljava/io/File;
    .end local v4    # "extension":Ljava/lang/String;
    .end local v5    # "fileNameWithoutExtension":Ljava/lang/String;
    .end local v6    # "path":Ljava/lang/String;
    :catchall_91
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public static getAttrText(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "element"    # Lorg/w3c/dom/Element;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 609
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 610
    .local v2, "nodeList2":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .line 611
    .local v1, "node":Lorg/w3c/dom/Node;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 612
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 613
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 614
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 617
    :goto_1e
    return-object v3

    .line 611
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 617
    :cond_22
    const/4 v3, 0x0

    goto :goto_1e
.end method

.method public static getFileInfoByXml(Ljava/io/InputStream;)Ljava/util/List;
    .registers 15
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/handover/FileInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 565
    const/4 v9, 0x0

    .line 566
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 567
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 568
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 570
    .local v1, "document":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    .line 572
    .local v11, "root":Lorg/w3c/dom/Element;
    const-string v12, "file"

    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 574
    .local v10, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v10, :cond_1f

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-nez v12, :cond_21

    .line 575
    :cond_1f
    const/4 v12, 0x0

    .line 600
    :goto_20
    return-object v12

    .line 578
    :cond_21
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_27
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v8, v12, :cond_61

    .line 581
    invoke-interface {v10, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 582
    .local v2, "element":Lorg/w3c/dom/Element;
    new-instance v4, Lcom/android/nfc/handover/FileInfo;

    invoke-direct {v4}, Lcom/android/nfc/handover/FileInfo;-><init>()V

    .line 584
    .local v4, "file":Lcom/android/nfc/handover/FileInfo;
    const-string v12, "fileName"

    invoke-static {v2, v12}, Lcom/android/nfc/handover/TransmitClient;->getAttrText(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 585
    .local v7, "filename":Ljava/lang/String;
    invoke-virtual {v4, v7}, Lcom/android/nfc/handover/FileInfo;->setFileName(Ljava/lang/String;)V

    .line 587
    const-string v12, "fileLen"

    invoke-static {v2, v12}, Lcom/android/nfc/handover/TransmitClient;->getAttrText(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 591
    .local v6, "filelen":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lcom/android/nfc/handover/FileInfo;->setFileLen(J)V

    .line 595
    const-string v12, "filePath"

    invoke-static {v2, v12}, Lcom/android/nfc/handover/TransmitClient;->getAttrText(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 596
    .local v5, "filePath":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lcom/android/nfc/handover/FileInfo;->setFilePath(Ljava/lang/String;)V

    .line 598
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    add-int/lit8 v8, v8, 0x1

    goto :goto_27

    .end local v2    # "element":Lorg/w3c/dom/Element;
    .end local v4    # "file":Lcom/android/nfc/handover/FileInfo;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "filelen":Ljava/lang/String;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_61
    move-object v12, v9

    .line 600
    goto :goto_20
.end method

.method public static getFileName(Lcom/android/nfc/handover/ConfigInfo;)Ljava/lang/String;
    .registers 11
    .param p0, "info"    # Lcom/android/nfc/handover/ConfigInfo;

    .prologue
    const/4 v8, 0x0

    .line 621
    if-eqz p0, :cond_dd

    .line 622
    const/4 v4, 0x0

    .line 623
    .local v4, "fileinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    const/4 v5, 0x0

    .line 624
    .local v5, "inStream":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfigInfo;->getmFileInfo()Lcom/android/nfc/handover/FileInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/nfc/handover/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, "fileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "extRoot":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "beam"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 628
    .local v2, "file":Ljava/io/File;
    :try_start_3d
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_9a
    .catchall {:try_start_3d .. :try_end_42} :catchall_bc

    .line 629
    .end local v5    # "inStream":Ljava/io/FileInputStream;
    .local v6, "inStream":Ljava/io/FileInputStream;
    :try_start_42
    invoke-static {v6}, Lcom/android/nfc/handover/TransmitClient;->getFileInfoByXml(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v4

    .line 630
    if-eqz v4, :cond_4e

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4b} :catch_e2
    .catchall {:try_start_42 .. :try_end_4b} :catchall_df

    move-result v7

    if-gtz v7, :cond_6f

    .line 638
    :cond_4e
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 639
    const-string v7, "TransmitClient"

    const-string v9, "file delete success"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :goto_5b
    if-eqz v6, :cond_60

    .line 645
    :try_start_5d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_6a

    :cond_60
    :goto_60
    move-object v7, v8

    .line 653
    .end local v1    # "extRoot":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "fileinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    :cond_61
    :goto_61
    return-object v7

    .line 641
    .restart local v1    # "extRoot":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    :cond_62
    const-string v7, "TransmitClient"

    const-string v9, "file delete fail"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 646
    :catch_6a
    move-exception v0

    .line 648
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_60

    .line 633
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6f
    const/4 v7, 0x0

    :try_start_70
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/nfc/handover/FileInfo;

    invoke-virtual {v7}, Lcom/android/nfc/handover/FileInfo;->getFileName()Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_79} :catch_e2
    .catchall {:try_start_70 .. :try_end_79} :catchall_df

    move-result-object v7

    .line 638
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_92

    .line 639
    const-string v8, "TransmitClient"

    const-string v9, "file delete success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :goto_87
    if-eqz v6, :cond_61

    .line 645
    :try_start_89
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_61

    .line 646
    :catch_8d
    move-exception v0

    .line 648
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_61

    .line 641
    .end local v0    # "e":Ljava/io/IOException;
    :cond_92
    const-string v8, "TransmitClient"

    const-string v9, "file delete fail"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    .line 635
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .restart local v5    # "inStream":Ljava/io/FileInputStream;
    :catch_9a
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/Exception;
    :goto_9b
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_af

    .line 639
    const-string v7, "TransmitClient"

    const-string v9, "file delete success"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :goto_a8
    if-eqz v5, :cond_ad

    .line 645
    :try_start_aa
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_b7

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_ad
    :goto_ad
    move-object v7, v8

    .line 649
    goto :goto_61

    .line 641
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_af
    const-string v7, "TransmitClient"

    const-string v9, "file delete fail"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 646
    :catch_b7
    move-exception v0

    .line 648
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ad

    .line 638
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_bc
    move-exception v7

    :goto_bd
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 639
    const-string v8, "TransmitClient"

    const-string v9, "file delete success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :goto_ca
    if-eqz v5, :cond_cf

    .line 645
    :try_start_cc
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d8

    .line 649
    :cond_cf
    :goto_cf
    throw v7

    .line 641
    :cond_d0
    const-string v8, "TransmitClient"

    const-string v9, "file delete fail"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    .line 646
    :catch_d8
    move-exception v0

    .line 648
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_cf

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "extRoot":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "fileinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    .end local v5    # "inStream":Ljava/io/FileInputStream;
    :cond_dd
    move-object v7, v8

    .line 653
    goto :goto_61

    .line 638
    .restart local v1    # "extRoot":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "fileinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    :catchall_df
    move-exception v7

    move-object v5, v6

    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .restart local v5    # "inStream":Ljava/io/FileInputStream;
    goto :goto_bd

    .line 635
    .end local v5    # "inStream":Ljava/io/FileInputStream;
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    :catch_e2
    move-exception v0

    move-object v5, v6

    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .restart local v5    # "inStream":Ljava/io/FileInputStream;
    goto :goto_9b
.end method

.method private sendBroadcast(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    const-string v0, "com.android.nfc.handover.extra.SOURCE_ADDRESS"

    iget-object v1, p0, Lcom/android/nfc/handover/TransmitClient;->mRemoteMac:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    return-void
.end method


# virtual methods
.method public cancelFileTransmit()V
    .registers 3

    .prologue
    .line 101
    const-string v0, "TransmitClient"

    const-string v1, "cancelFileTransmit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/TransmitClient;->isCancelFile:Z

    .line 103
    return-void
.end method

.method public getFiles(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;)V
    .registers 5
    .param p1, "configinfo"    # Lcom/android/nfc/handover/ConfigInfo;
    .param p2, "iPAddress"    # Ljava/lang/String;

    .prologue
    .line 160
    if-nez p1, :cond_3

    .line 165
    :goto_2
    return-void

    .line 162
    :cond_3
    new-instance v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;-><init>(Lcom/android/nfc/handover/TransmitClient;Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/nfc/handover/TransmitClient;->mGetFileThread:Lcom/android/nfc/handover/TransmitClient$GetFileThread;

    .line 163
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient;->mGetFileThread:Lcom/android/nfc/handover/TransmitClient$GetFileThread;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method public isSendingFile()Z
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/nfc/handover/TransmitClient;->isSendingFile:Z

    return v0
.end method
