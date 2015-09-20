.class Lcom/android/nfc/handover/HandoverService$MessageHandler;
.super Landroid/os/Handler;
.source "HandoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/HandoverService;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverService;)V
    .registers 2

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 289
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_42

    .line 316
    :goto_7
    return-void

    .line 291
    :sswitch_8
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v3, v0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    .line 293
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_20

    move v0, v1

    :goto_15
    iput-boolean v0, v3, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    .line 294
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_22

    :goto_1d
    iput-boolean v1, v0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetConnected:Z

    goto :goto_7

    :cond_20
    move v0, v2

    .line 293
    goto :goto_15

    :cond_22
    move v1, v2

    .line 294
    goto :goto_1d

    .line 297
    :sswitch_24
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    goto :goto_7

    .line 300
    :sswitch_2a
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/HandoverService;->doIncomingTransfer(Landroid/os/Message;)V

    goto :goto_7

    .line 303
    :sswitch_30
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/HandoverService;->doOutgoingTransfer(Landroid/os/Message;)V

    goto :goto_7

    .line 306
    :sswitch_36
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/HandoverService;->doHeadsetHandover(Landroid/os/Message;)V

    goto :goto_7

    .line 310
    :sswitch_3c
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverService;->disableBluetoothIfNeeded()V

    goto :goto_7

    .line 289
    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_24
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_30
        0x4 -> :sswitch_36
        0x14 -> :sswitch_3c
    .end sparse-switch
.end method
