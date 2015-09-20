.class Lcom/android/nfc/transferhistory/NfcTransferHistory$2;
.super Ljava/lang/Object;
.source "NfcTransferHistory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/transferhistory/NfcTransferHistory;->promptClearList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;


# direct methods
.method constructor <init>(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V
    .registers 2

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$2;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$2;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$800(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V

    .line 346
    return-void
.end method
