.class Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NfcTransferAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/transferhistory/NfcTransferAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private complete_date:Landroid/widget/TextView;

.field private complete_text:Landroid/widget/TextView;

.field private targetdevice:Landroid/widget/TextView;

.field private transfer_icon:Landroid/widget/ImageView;

.field private transfer_title:Landroid/widget/TextView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->transfer_icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->transfer_icon:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->transfer_title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->transfer_title:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->targetdevice:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->targetdevice:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->complete_date:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->complete_date:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->complete_text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferAdapter$ViewHolder;->complete_text:Landroid/widget/TextView;

    return-object p1
.end method
