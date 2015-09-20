.class public Lcom/android/nfc/handover/PendingHandoverTransfer;
.super Ljava/lang/Object;
.source "PendingHandoverTransfer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/nfc/handover/PendingHandoverTransfer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:I

.field public incoming:Z

.field public remoteActivating:Z

.field public remoteDevice:Landroid/bluetooth/BluetoothDevice;

.field public uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lcom/android/nfc/handover/PendingHandoverTransfer$1;

    invoke-direct {v0}, Lcom/android/nfc/handover/PendingHandoverTransfer$1;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/PendingHandoverTransfer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZLandroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V
    .registers 6
    .param p1, "id"    # I
    .param p2, "incoming"    # Z
    .param p3, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "remoteActivating"    # Z
    .param p5, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    .line 34
    iput-boolean p2, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->incoming:Z

    .line 35
    iput-object p3, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 36
    iput-boolean p4, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteActivating:Z

    .line 37
    iput-object p5, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    iget v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-boolean v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->incoming:Z

    if-eqz v0, :cond_34

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 73
    iget-boolean v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteActivating:Z

    if-eqz v0, :cond_36

    :goto_18
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    array-length v0, v0

    :goto_22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    array-length v0, v0

    if-lez v0, :cond_33

    .line 76
    iget-object v0, p0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 78
    :cond_33
    return-void

    :cond_34
    move v0, v2

    .line 71
    goto :goto_c

    :cond_36
    move v1, v2

    .line 73
    goto :goto_18

    :cond_38
    move v0, v2

    .line 74
    goto :goto_22
.end method
