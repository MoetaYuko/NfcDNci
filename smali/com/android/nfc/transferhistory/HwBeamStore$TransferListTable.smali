.class public final Lcom/android/nfc/transferhistory/HwBeamStore$TransferListTable;
.super Ljava/lang/Object;
.source "HwBeamStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/transferhistory/HwBeamStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransferListTable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/transferhistory/HwBeamStore$TransferListTable$Columns;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getContentUri()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 64
    const-string v0, "content://com.android.nfc/transferlistinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
