.class Lcom/android/nfc/NfcService$2;
.super Landroid/content/BroadcastReceiver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 2

    .prologue
    .line 3903
    iput-object p1, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3908
    sget-boolean v4, Lcom/android/nfc/NfcService;->SIM_RECEIVE_DEFAULT:Z

    if-eqz v4, :cond_b2

    .line 3909
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3912
    if-eqz v0, :cond_b3

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 3917
    :cond_34
    :goto_34
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    const-string v5, "true"

    iput-object v5, v4, Lcom/android/nfc/NfcService;->mIsBoot:Ljava/lang/String;

    .line 3919
    if-eqz v0, :cond_b2

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 3921
    sget-boolean v4, Lcom/android/nfc/NfcService;->sIsMultiSimEnabled:Z

    if-eqz v4, :cond_ce

    .line 3923
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/telephony/MSimTelephonyManager;->getSimState(I)I

    move-result v1

    .line 3924
    .local v1, "simState":I
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/nfc/NfcService;->imsi:Ljava/lang/String;

    .line 3925
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    .line 3926
    .local v2, "subscription":I
    if-nez v2, :cond_b2

    .line 3927
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_ac

    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->imsi:Ljava/lang/String;

    const-string v5, "46003"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 3928
    if-ne v1, v10, :cond_ac

    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mIsSimReady:Z

    if-eqz v4, :cond_ac

    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mState:I

    if-ne v4, v9, :cond_ac

    const-string v4, "true"

    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mIsBoot:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 3929
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v7, v4, Lcom/android/nfc/NfcService;->mIsSimReady:Z

    .line 3930
    new-instance v3, Lcom/android/nfc/NfcService$NfcThread;

    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v3, v4}, Lcom/android/nfc/NfcService$NfcThread;-><init>(Lcom/android/nfc/NfcService;)V

    .line 3931
    .local v3, "thread":Lcom/android/nfc/NfcService$NfcThread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3934
    .end local v3    # "thread":Lcom/android/nfc/NfcService$NfcThread;
    :cond_ac
    if-ne v1, v8, :cond_b2

    .line 3935
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v8, v4, Lcom/android/nfc/NfcService;->mIsSimReady:Z

    .line 3955
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "simState":I
    .end local v2    # "subscription":I
    :cond_b2
    :goto_b2
    return-void

    .line 3914
    .restart local v0    # "action":Ljava/lang/String;
    :cond_b3
    if-eqz v0, :cond_34

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    goto/16 :goto_34

    .line 3939
    :cond_ce
    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, v5, Lcom/android/nfc/NfcService;->manager:Landroid/telephony/TelephonyManager;

    .line 3940
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->manager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 3941
    .restart local v1    # "simState":I
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->manager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/nfc/NfcService;->imsi:Ljava/lang/String;

    .line 3942
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->imsi:Ljava/lang/String;

    if-eqz v4, :cond_12c

    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->imsi:Ljava/lang/String;

    const-string v5, "46003"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12c

    .line 3943
    if-ne v1, v10, :cond_12c

    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mIsSimReady:Z

    if-eqz v4, :cond_12c

    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mState:I

    if-ne v4, v9, :cond_12c

    const-string v4, "true"

    iget-object v5, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mIsBoot:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12c

    .line 3944
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v7, v4, Lcom/android/nfc/NfcService;->mIsSimReady:Z

    .line 3945
    new-instance v3, Lcom/android/nfc/NfcService$NfcThread;

    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v3, v4}, Lcom/android/nfc/NfcService$NfcThread;-><init>(Lcom/android/nfc/NfcService;)V

    .line 3946
    .restart local v3    # "thread":Lcom/android/nfc/NfcService$NfcThread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3949
    .end local v3    # "thread":Lcom/android/nfc/NfcService$NfcThread;
    :cond_12c
    if-ne v1, v8, :cond_b2

    .line 3950
    iget-object v4, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v8, v4, Lcom/android/nfc/NfcService;->mIsSimReady:Z

    goto :goto_b2
.end method
