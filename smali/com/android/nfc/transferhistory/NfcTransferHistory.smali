.class public Lcom/android/nfc/transferhistory/NfcTransferHistory;
.super Landroid/app/Activity;
.source "NfcTransferHistory.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;,
        Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_UPDATE_ADAPTER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NfcTransferHistory"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextMenuPosition:I

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mNfcTransferInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/transferhistory/NfcTransferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNfcTransferInfoTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/transferhistory/NfcTransferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;

.field private mPendingUpdate:Z

.field private mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

.field private mUpdateThread:Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Lcom/android/nfc/transferhistory/NfcTransferHistory$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory$1;-><init>(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mHandler:Landroid/os/Handler;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Lcom/android/nfc/transferhistory/NfcTransferAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/nfc/transferhistory/NfcTransferHistory;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/nfc/transferhistory/NfcTransferHistory;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mUpdateThread:Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/nfc/transferhistory/NfcTransferHistory;Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;)Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;
    .param p1, "x1"    # Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mUpdateThread:Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/nfc/transferhistory/NfcTransferHistory;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mPendingUpdate:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/nfc/transferhistory/NfcTransferHistory;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoTempList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->clearAllDownloads()V

    return-void
.end method

.method private clearAllDownloads()V
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    if-eqz v0, :cond_e

    .line 356
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 357
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 360
    :cond_e
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/transferhistory/DataBaseUtils;->deleteHistoryfromDB(Landroid/content/Context;)V

    .line 362
    return-void
.end method

.method private isRecognizedFileType(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileUri"    # Landroid/net/Uri;
    .param p3, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 460
    const/4 v2, 0x1

    .line 466
    .local v2, "ret":Z
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    .local v1, "mimetypeIntent":Landroid/content/Intent;
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 472
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1c

    .line 475
    const/4 v2, 0x0

    .line 477
    :cond_1c
    return v2
.end method

.method private openCompleteTransfer(I)V
    .registers 10
    .param p1, "position"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    .line 382
    .local v7, "transInfo":Lcom/android/nfc/transferhistory/NfcTransferInfo;
    if-nez v7, :cond_12

    .line 383
    const-string v0, "NfcTransferHistory"

    const-string v1, "Error: Can not get data from db"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_11
    :goto_11
    return-void

    .line 387
    :cond_12
    invoke-virtual {v7}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getTransferDir()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    invoke-virtual {v7}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getTransferResult()I

    move-result v0

    invoke-static {v0}, Lcom/android/nfc/transferhistory/HwBeamStore;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 390
    invoke-virtual {v7}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 392
    .local v2, "mFileName":Ljava/lang/String;
    if-nez v2, :cond_2d

    .line 393
    invoke-virtual {v7}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 395
    :cond_2d
    if-eqz v2, :cond_37

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 396
    :cond_37
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 399
    :cond_3e
    iget-object v1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getCompleteTime()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)V

    goto :goto_11
.end method

.method private openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "mimetype"    # Ljava/lang/String;
    .param p4, "timeStamp"    # J
    .param p6, "uri"    # Landroid/net/Uri;

    .prologue
    .line 411
    if-eqz p2, :cond_4

    if-nez p3, :cond_c

    .line 412
    :cond_4
    const-string v5, "NfcTransferHistory"

    const-string v6, "ERROR: Para fileName ==null, or mimetype == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_b
    :goto_b
    return-void

    .line 416
    :cond_c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_29

    .line 424
    const v5, 0x7f07003b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "mOpenFileFailedTip":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_b

    .line 431
    .end local v3    # "mOpenFileFailedTip":Ljava/lang/String;
    :cond_29
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 433
    .local v4, "path":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3c

    .line 434
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 437
    :cond_3c
    invoke-direct {p0, p1, v4, p3}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->isRecognizedFileType(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, "activityIntent":Landroid/content/Intent;
    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 446
    :try_start_51
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_54
    .catch Landroid/content/ActivityNotFoundException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_b

    .line 447
    :catch_55
    move-exception v1

    .line 448
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string v5, "NfcTransferHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no activity for handling ACTION_VIEW intent:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method private promptClearList()V
    .registers 4

    .prologue
    const v2, 0x7f070032

    .line 338
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070033

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/nfc/transferhistory/NfcTransferHistory$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory$2;-><init>(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 349
    return-void
.end method

.method private updateFromProvider()V
    .registers 2

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mPendingUpdate:Z

    .line 83
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mUpdateThread:Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    if-nez v0, :cond_14

    .line 84
    new-instance v0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;-><init>(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mUpdateThread:Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    .line 85
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mUpdateThread:Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    :cond_14
    monitor-exit p0

    .line 88
    return-void

    .line 87
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 304
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 311
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 308
    :pswitch_9
    iget v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContextMenuPosition:I

    invoke-direct {p0, v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->openCompleteTransfer(I)V

    .line 309
    const/4 v0, 0x1

    goto :goto_8

    .line 304
    :pswitch_data_10
    .packed-switch 0x7f090016
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 208
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 209
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 210
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mListView:Landroid/widget/ListView;

    .line 211
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mListView:Landroid/widget/ListView;

    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 213
    iput-object p0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 222
    :cond_30
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/transferhistory/DataBaseUtils;->queryTransferList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    .line 231
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_63

    .line 233
    new-instance v0, Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    const v1, 0x7f030004

    iget-object v2, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/nfc/transferhistory/NfcTransferAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    .line 235
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 240
    :cond_63
    new-instance v0, Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;

    iget-object v1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;-><init>(Lcom/android/nfc/transferhistory/NfcTransferHistory;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mObserver:Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;

    .line 241
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/nfc/transferhistory/HwBeamStore$TransferListTable;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mObserver:Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 244
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 9
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 318
    iget-object v3, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_36

    move-object v2, p3

    .line 319
    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 320
    .local v2, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iput v3, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mContextMenuPosition:I

    .line 322
    iget-object v3, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    iget v4, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v3}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_23

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 324
    :cond_23
    const v3, 0x7f07002c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_2a
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 329
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 330
    .local v1, "inflater":Landroid/view/MenuInflater;
    const/high16 v3, 0x7f080000

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 332
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "inflater":Landroid/view/MenuInflater;
    .end local v2    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_36
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 278
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 280
    .end local v0    # "inflater":Landroid/view/MenuInflater;
    :cond_e
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 265
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mObserver:Lcom/android/nfc/transferhistory/NfcTransferHistory$NfcShareContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 266
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->openCompleteTransfer(I)V

    .line 375
    return-void
.end method

.method public onNavigateUp()Z
    .registers 2

    .prologue
    .line 270
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 294
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 299
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 296
    :pswitch_9
    invoke-direct {p0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->promptClearList()V

    .line 297
    const/4 v0, 0x1

    goto :goto_8

    .line 294
    :pswitch_data_e
    .packed-switch 0x7f090017
        :pswitch_9
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 259
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    .line 286
    const v0, 0x7f090017

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    :goto_14
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 289
    :cond_17
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 286
    :cond_1c
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 250
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mNfcTransferInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 251
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory;->mTransferAdapter:Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 253
    :cond_c
    return-void
.end method
