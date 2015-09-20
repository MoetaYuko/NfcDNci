.class Lcom/android/nfc/handover/HandoverService$1;
.super Landroid/content/BroadcastReceiver;
.source "HandoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/HandoverService;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverService;)V
    .registers 2

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverService$1;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isSender()Z
    .registers 6

    .prologue
    .line 430
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService$1;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "MyPrefsFile"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 431
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v2, "isSender"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 432
    .local v0, "isSender":Z
    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v12, 0x7f07000e

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "androidhwext:style/Theme.Emui"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 394
    .local v3, "themeID":I
    invoke-virtual {p1, v3}, Landroid/content/Context;->setTheme(I)V

    .line 396
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "action":Ljava/lang/String;
    const-string v4, "mode"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 398
    .local v1, "mode":I
    const-string v4, "HandoverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFastConReceiver mode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const-string v4, "ACTION_FAST_CONNECTION_SUCCESS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 400
    if-ne v1, v8, :cond_53

    .line 401
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService$1;->this$0:Lcom/android/nfc/handover/HandoverService;

    const v5, 0x7f07000c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 427
    :cond_52
    :goto_52
    return-void

    .line 402
    :cond_53
    if-ne v1, v11, :cond_6c

    .line 403
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverService$1;->isSender()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 404
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService$1;->this$0:Lcom/android/nfc/handover/HandoverService;

    const v5, 0x7f07000d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_52

    .line 406
    :cond_6c
    if-ne v1, v10, :cond_52

    .line 407
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService$1;->this$0:Lcom/android/nfc/handover/HandoverService;

    const v5, 0x7f07000f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_52

    .line 410
    :cond_7f
    const-string v4, "ACTION_FAST_CONNECTION_FAILED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_de

    .line 411
    if-ne v1, v8, :cond_b5

    .line 412
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService$1;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v4, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 420
    :cond_96
    :goto_96
    const-string v4, "reason"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 421
    .local v2, "reason":I
    const-string v4, "HandoverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFastConReceiver reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 413
    .end local v2    # "reason":I
    :cond_b5
    if-ne v1, v11, :cond_cb

    .line 414
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverService$1;->isSender()Z

    move-result v4

    if-eqz v4, :cond_96

    .line 415
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService$1;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-virtual {v4, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_96

    .line 417
    :cond_cb
    if-ne v1, v10, :cond_96

    .line 418
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService$1;->this$0:Lcom/android/nfc/handover/HandoverService;

    const v5, 0x7f070010

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_96

    .line 423
    :cond_de
    const-string v4, "com.android.nfc.handover.action.ACTION_NOT_ENOUGH_FREE_SPACE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 424
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService$1;->this$0:Lcom/android/nfc/handover/HandoverService;

    const v5, 0x7f070036

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_52
.end method
