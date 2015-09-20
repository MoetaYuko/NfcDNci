.class Lcom/android/nfc/handover/HandoverManager$FileInfoXMLThread;
.super Landroid/os/AsyncTask;
.source "HandoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInfoXMLThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mFilePath:Ljava/lang/String;

.field mUris:[Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverManager;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/HandoverManager;Ljava/lang/String;[Landroid/net/Uri;)V
    .registers 7
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverManager$FileInfoXMLThread;->this$0:Lcom/android/nfc/handover/HandoverManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1585
    iput-object p2, p0, Lcom/android/nfc/handover/HandoverManager$FileInfoXMLThread;->mFilePath:Ljava/lang/String;

    .line 1586
    iput-object p3, p0, Lcom/android/nfc/handover/HandoverManager$FileInfoXMLThread;->mUris:[Landroid/net/Uri;

    .line 1588
    const-string v0, "NfcHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileInfoXMLThread mFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager$FileInfoXMLThread;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1580
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverManager$FileInfoXMLThread;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1593
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1594
    .local v2, "fileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    const/4 v3, 0x0

    .line 1595
    .local v3, "filePathString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1596
    .local v1, "fileInfo":Lcom/android/nfc/handover/FileInfo;
    const/4 v4, 0x0

    .line 1598
    .local v4, "i":I
    :goto_8
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager$FileInfoXMLThread;->mUris:[Landroid/net/Uri;

    array-length v5, v5

    if-ge v4, v5, :cond_58

    .line 1599
    new-instance v1, Lcom/android/nfc/handover/FileInfo;

    .end local v1    # "fileInfo":Lcom/android/nfc/handover/FileInfo;
    invoke-direct {v1}, Lcom/android/nfc/handover/FileInfo;-><init>()V

    .line 1600
    .restart local v1    # "fileInfo":Lcom/android/nfc/handover/FileInfo;
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager$FileInfoXMLThread;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v6, p0, Lcom/android/nfc/handover/HandoverManager$FileInfoXMLThread;->mUris:[Landroid/net/Uri;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Lcom/android/nfc/handover/HandoverManager;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 1601
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1602
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/android/nfc/handover/FileInfo;->setFileLen(J)V

    .line 1603
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/nfc/handover/FileInfo;->setFileName(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/nfc/handover/FileInfo;->setFilePath(Ljava/lang/String;)V

    .line 1605
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1607
    const-string v5, "NfcHandover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileInfoXMLThread file.getName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    add-int/lit8 v4, v4, 0x1

    .line 1611
    goto :goto_8

    .line 1612
    .end local v0    # "file":Ljava/io/File;
    :cond_58
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager$FileInfoXMLThread;->this$0:Lcom/android/nfc/handover/HandoverManager;

    iget-object v6, p0, Lcom/android/nfc/handover/HandoverManager$FileInfoXMLThread;->mFilePath:Ljava/lang/String;

    invoke-static {v5, v6, v2}, Lcom/android/nfc/handover/HandoverManager;->access$200(Lcom/android/nfc/handover/HandoverManager;Ljava/lang/String;Ljava/util/List;)V

    .line 1613
    const/4 v5, 0x0

    return-object v5
.end method
