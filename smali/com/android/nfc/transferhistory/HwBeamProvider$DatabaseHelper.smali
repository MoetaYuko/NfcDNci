.class Lcom/android/nfc/transferhistory/HwBeamProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HwBeamProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/transferhistory/HwBeamProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    const-string v0, "hwbeam.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 212
    iput-object p1, p0, Lcom/android/nfc/transferhistory/HwBeamProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 213
    return-void
.end method

.method private static updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fromVersion"    # I
    .param p3, "toVersion"    # I

    .prologue
    const/4 v0, 0x1

    .line 237
    if-eq p3, v0, :cond_9

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 239
    :cond_9
    if-le p2, p3, :cond_11

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 243
    :cond_11
    if-ge p2, v0, :cond_1d

    .line 245
    const-string v0, "DROP TABLE IF EXISTS transferlistinfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 248
    const-string v0, "CREATE TABLE IF NOT EXISTS transferlistinfo (_id INTEGER PRIMARY KEY, file_path TEXT, mime_type TEXT, file_name TEXT, file_size INTEGER, current_size INTEGER, friendly_name TEXT, transfer_direction INTEGER, transfer_result INTEGER, failed_reason INTEGER, complete_time DATETIME );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 276
    :cond_1d
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/nfc/transferhistory/HwBeamProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v1, v2}, Lcom/android/nfc/transferhistory/HwBeamProvider$DatabaseHelper;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 221
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/nfc/transferhistory/HwBeamProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/nfc/transferhistory/HwBeamProvider$DatabaseHelper;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 232
    return-void
.end method
