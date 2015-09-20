.class Lcom/android/nfc/NfcService$NfcThread;
.super Ljava/lang/Thread;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NfcThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 2

    .prologue
    .line 3841
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcThread;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 3844
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcThread;->this$0:Lcom/android/nfc/NfcService;

    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcThread;->this$0:Lcom/android/nfc/NfcService;

    iget-object v8, v8, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/nfc/NfcService;->access$1802(Lcom/android/nfc/NfcService;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;

    .line 3845
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcThread;->this$0:Lcom/android/nfc/NfcService;

    const-string v8, "true"

    iput-object v8, v7, Lcom/android/nfc/NfcService;->mIsBoot:Ljava/lang/String;

    .line 3846
    const/4 v2, 0x0

    .line 3851
    .local v2, "same_sim":Z
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcThread;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Landroid/nfc/NfcAdapter;

    move-result-object v7

    if-eqz v7, :cond_b8

    .line 3852
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcThread;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Landroid/nfc/NfcAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 3854
    const-wide/16 v7, 0x3e8

    :try_start_33
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_c4

    .line 3859
    :goto_36
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcThread;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Landroid/nfc/NfcAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 3861
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcThread;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v8, "sim_imsi"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3862
    .local v6, "sim_imsi":Landroid/content/SharedPreferences;
    const-string v7, "save_imsi"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3863
    .local v3, "save_imsi":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcThread;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v7, Lcom/android/nfc/NfcService;->imsi:Ljava/lang/String;

    .line 3864
    .local v1, "new_imsi":Ljava/lang/String;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "save_imsi"

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3866
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 3867
    const/4 v2, 0x1

    .line 3869
    :cond_6a
    const/4 v5, 0x0

    .line 3870
    .local v5, "seflag":Z
    if-nez v2, :cond_b8

    .line 3871
    const/4 v4, 0x0

    .line 3873
    .local v4, "se":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6f
    const/4 v7, 0x1

    if-gt v0, v7, :cond_83

    .line 3875
    const-wide/16 v7, 0x1388

    :try_start_74
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_74 .. :try_end_77} :catch_c7

    .line 3880
    :goto_77
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcThread;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Landroid/nfc/NfcAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_b9

    .line 3884
    :cond_83
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcThread;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Landroid/nfc/NfcAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 3885
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcThread;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()Ljava/lang/String;

    move-result-object v4

    .line 3886
    if-eqz v4, :cond_a4

    const-string v7, "SIM1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 3887
    const/4 v5, 0x1

    .line 3890
    :cond_a4
    if-nez v5, :cond_b8

    .line 3891
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcThread;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v7

    const/16 v8, 0x1b

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3892
    const-string v7, "NfcService"

    const-string v8, "UIM card doesn\'t support NFC"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    .end local v0    # "i":I
    .end local v1    # "new_imsi":Ljava/lang/String;
    .end local v3    # "save_imsi":Ljava/lang/String;
    .end local v4    # "se":Ljava/lang/String;
    .end local v5    # "seflag":Z
    .end local v6    # "sim_imsi":Landroid/content/SharedPreferences;
    :cond_b8
    :goto_b8
    return-void

    .line 3873
    .restart local v0    # "i":I
    .restart local v1    # "new_imsi":Ljava/lang/String;
    .restart local v3    # "save_imsi":Ljava/lang/String;
    .restart local v4    # "se":Ljava/lang/String;
    .restart local v5    # "seflag":Z
    .restart local v6    # "sim_imsi":Landroid/content/SharedPreferences;
    :cond_b9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    .line 3895
    :cond_bc
    const-string v7, "NfcService"

    const-string v8, "NFC fail to enable"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b8

    .line 3855
    .end local v0    # "i":I
    .end local v1    # "new_imsi":Ljava/lang/String;
    .end local v3    # "save_imsi":Ljava/lang/String;
    .end local v4    # "se":Ljava/lang/String;
    .end local v5    # "seflag":Z
    .end local v6    # "sim_imsi":Landroid/content/SharedPreferences;
    :catch_c4
    move-exception v7

    goto/16 :goto_36

    .line 3876
    .restart local v0    # "i":I
    .restart local v1    # "new_imsi":Ljava/lang/String;
    .restart local v3    # "save_imsi":Ljava/lang/String;
    .restart local v4    # "se":Ljava/lang/String;
    .restart local v5    # "seflag":Z
    .restart local v6    # "sim_imsi":Landroid/content/SharedPreferences;
    :catch_c7
    move-exception v7

    goto :goto_77
.end method
