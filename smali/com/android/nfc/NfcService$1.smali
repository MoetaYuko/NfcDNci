.class Lcom/android/nfc/NfcService$1;
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
    .line 3792
    iput-object p1, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3795
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3796
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 3800
    :cond_27
    iget-object v7, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v7}, Lcom/android/nfc/NfcService;->updatePackageCache()V

    .line 3802
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 3804
    iget-object v7, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    invoke-virtual {v7}, Lcom/android/nfc/NfceeAccessControl;->invalidateCache()V

    .line 3806
    const-string v7, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 3807
    .local v2, "dataRemoved":Z
    if-eqz v2, :cond_49

    .line 3808
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3809
    .local v1, "data":Landroid/net/Uri;
    if-nez v1, :cond_4a

    .line 3837
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "dataRemoved":Z
    :cond_49
    :goto_49
    return-void

    .line 3810
    .restart local v1    # "data":Landroid/net/Uri;
    .restart local v2    # "dataRemoved":Z
    :cond_4a
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 3812
    .local v5, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v8

    .line 3813
    :try_start_51
    iget-object v7, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mSePackages:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 3814
    new-instance v7, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v7, v9}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Integer;

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v9}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3815
    iget-object v7, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mSePackages:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 3817
    :cond_77
    monitor-exit v8

    goto :goto_49

    :catchall_79
    move-exception v7

    monitor-exit v8
    :try_end_7b
    .catchall {:try_start_51 .. :try_end_7b} :catchall_79

    throw v7

    .line 3820
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "dataRemoved":Z
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_7c
    const-string v7, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ac

    .line 3821
    new-instance v4, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v7, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v4, v7}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 3822
    .local v4, "eeWipeTask":Lcom/android/nfc/NfcService$EnableDisableTask;
    new-array v7, v8, [Ljava/lang/Integer;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v7}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3824
    :try_start_96
    invoke-virtual {v4}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_99
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_96 .. :try_end_99} :catch_9a
    .catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_99} :catch_a3

    goto :goto_49

    .line 3825
    :catch_9a
    move-exception v3

    .line 3826
    .local v3, "e":Ljava/util/concurrent/ExecutionException;
    const-string v7, "NfcService"

    const-string v8, "failed to wipe NFC-EE"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 3827
    .end local v3    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_a3
    move-exception v3

    .line 3828
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v7, "NfcService"

    const-string v8, "failed to wipe NFC-EE"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 3830
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v4    # "eeWipeTask":Lcom/android/nfc/NfcService$EnableDisableTask;
    :cond_ac
    const-string v7, "com.android.nfc.action.ALLOW_NFC_ENABLE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c0

    .line 3831
    const-string v7, "com.android.nfc.action.EXTRA_PKG"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3832
    .local v6, "pkgName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7, v8, v6}, Lcom/android/nfc/NfcService;->access$1700(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V

    goto :goto_49

    .line 3833
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_c0
    const-string v7, "com.android.nfc.action.DENY_NFC_ENABLE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 3834
    const-string v7, "com.android.nfc.action.EXTRA_PKG"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3835
    .restart local v6    # "pkgName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7, v9, v6}, Lcom/android/nfc/NfcService;->access$1700(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V

    goto/16 :goto_49
.end method
