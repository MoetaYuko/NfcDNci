.class Lcom/android/nfc/transferhistory/NfcTransferHistory$1;
.super Landroid/os/Handler;
.source "NfcTransferHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/transferhistory/NfcTransferHistory;
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
    .line 51
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$1;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 62
    :goto_5
    return-void

    .line 57
    :pswitch_6
    iget-object v0, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$1;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v0}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$000(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Lcom/android/nfc/transferhistory/NfcTransferAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 54
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
