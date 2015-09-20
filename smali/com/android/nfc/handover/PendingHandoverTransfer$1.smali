.class final Lcom/android/nfc/handover/PendingHandoverTransfer$1;
.super Ljava/lang/Object;
.source "PendingHandoverTransfer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/PendingHandoverTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/nfc/handover/PendingHandoverTransfer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/handover/PendingHandoverTransfer;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 44
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v0, :cond_36

    move v2, v0

    .line 45
    .local v2, "incoming":Z
    :goto_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 46
    .local v3, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-ne v8, v0, :cond_38

    move v4, v0

    .line 47
    .local v4, "remoteActivating":Z
    :goto_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 48
    .local v6, "numUris":I
    const/4 v5, 0x0

    .line 49
    .local v5, "uris":[Landroid/net/Uri;
    if-lez v6, :cond_30

    .line 50
    new-array v5, v6, [Landroid/net/Uri;

    .line 51
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5, v0}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 53
    :cond_30
    new-instance v0, Lcom/android/nfc/handover/PendingHandoverTransfer;

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/handover/PendingHandoverTransfer;-><init>(IZLandroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V

    return-object v0

    .end local v2    # "incoming":Z
    .end local v3    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "remoteActivating":Z
    .end local v5    # "uris":[Landroid/net/Uri;
    .end local v6    # "numUris":I
    :cond_36
    move v2, v7

    .line 44
    goto :goto_d

    .restart local v2    # "incoming":Z
    .restart local v3    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_38
    move v4, v7

    .line 46
    goto :goto_22
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/PendingHandoverTransfer$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/handover/PendingHandoverTransfer;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/nfc/handover/PendingHandoverTransfer;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 59
    new-array v0, p1, [Lcom/android/nfc/handover/PendingHandoverTransfer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/PendingHandoverTransfer$1;->newArray(I)[Lcom/android/nfc/handover/PendingHandoverTransfer;

    move-result-object v0

    return-object v0
.end method
