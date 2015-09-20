.class public Lcom/android/nfc/transferhistory/HwBeamStore;
.super Ljava/lang/Object;
.source "HwBeamStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/transferhistory/HwBeamStore$TransferListTable;,
        Lcom/android/nfc/transferhistory/HwBeamStore$BaseColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.nfc"

.field public static final BLUETOOTH_URI:Landroid/net/Uri;

.field public static final CONTENT_PREFIX:Ljava/lang/String; = "content://com.android.nfc/"

.field public static final DIRECTION_IN:I = 0x1

.field public static final DIRECTION_OUT:I = 0x2

.field public static final FAILED_REASON_CANCEL:I = 0x2

.field public static final FAILED_REASON_DEFAULT:I = 0x1

.field public static final FILENAME_HINT:Ljava/lang/String; = "hint"

.field public static final LIST_COLUMNS_COMPLETE_TIME:I = 0xa

.field public static final LIST_COLUMNS_CURRENT_SIZE:I = 0x5

.field public static final LIST_COLUMNS_FAILED_REASON:I = 0x9

.field public static final LIST_COLUMNS_FILE_FATH:I = 0x1

.field public static final LIST_COLUMNS_FILE_NAME:I = 0x3

.field public static final LIST_COLUMNS_FILE_SIZE:I = 0x4

.field public static final LIST_COLUMNS_FRIENDLY_NAME:I = 0x6

.field public static final LIST_COLUMNS_ID:I = 0x0

.field public static final LIST_COLUMNS_MIME_TYPE:I = 0x2

.field public static final LIST_COLUMNS_TRANSFER_DIRECTION:I = 0x7

.field public static final LIST_COLUMNS_TRANSFER_RESULT:I = 0x8

.field public static final RESULT_FAIL:I = 0x2

.field public static final RESULT_SUCC:I = 0x1

.field public static final SPACE:Ljava/lang/String; = ""

.field public static final TABLE_INDEX_TRANSFER_LIST_INFO:I = 0x1

.field public static final TABLE_INDEX_TRANSFER_LIST_INFO_ID:I = 0x2

.field public static final TABLE_NAME_TRANSFER_LIST_INFO:Ljava/lang/String; = "transferlistinfo"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-string v0, "content://com.android.bluetooth.opp/btopp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/transferhistory/HwBeamStore;->BLUETOOTH_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static getBTColumns()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hint"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getTransferColumns()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 76
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "file_path"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "file_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "current_size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "friendly_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "transfer_direction"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "transfer_result"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "failed_reason"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "complete_time"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static isStatusError(I)Z
    .registers 2
    .param p0, "status"    # I

    .prologue
    .line 112
    const/4 v0, 0x2

    if-ne v0, p0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static isStatusSuccess(I)Z
    .registers 2
    .param p0, "status"    # I

    .prologue
    const/4 v0, 0x1

    .line 108
    if-ne v0, p0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
