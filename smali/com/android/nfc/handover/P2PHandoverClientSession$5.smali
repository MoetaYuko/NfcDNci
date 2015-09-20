.class Lcom/android/nfc/handover/P2PHandoverClientSession$5;
.super Landroid/content/BroadcastReceiver;
.source "P2PHandoverClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandoverClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .registers 2

    .prologue
    .line 877
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 881
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 882
    .local v1, "action":Ljava/lang/String;
    const-string v12, "com.android.nfc.handover.extra.SOURCE_ADDRESS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 884
    .local v8, "sourceAddress":Ljava/lang/String;
    new-instance v5, Landroid/util/Pair;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct {v5, v8, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 886
    .local v5, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v12, "P2PHandoverClientSession"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mHandoverReceiver onReceive action= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string v12, "P2PHandoverClientSession"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mHandoverReceiver onReceive sourceAddress= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-string v12, "P2PHandoverClientSession"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mHandoverReceiver onReceive transmitKeyString= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v14}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string v12, "com.android.nfc.p2phandover.action.CLOSE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d0

    .line 892
    const-string v12, "P2PHandoverClientSession"

    const-string v13, "ACTION_CLOSE_HANDOVER_TRANSFER"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v13}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/nfc/handover/HandoverManager;->getOrCreateHandoverTransfer(Ljava/lang/String;ZZ)Lcom/android/nfc/handover/HandoverTransfer;

    move-result-object v9

    .line 894
    .local v9, "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    if-eqz v9, :cond_b7

    .line 896
    iget-object v12, v9, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v13}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2100(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFriendlyName(Ljava/lang/String;)V

    .line 897
    iget-object v12, v9, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v13}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v13

    iget-object v13, v13, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    invoke-static {v13}, Lcom/android/nfc/handover/TransmitClient;->getFileName(Lcom/android/nfc/handover/ConfigInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 899
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v12, v13, v14}, Lcom/android/nfc/handover/HandoverTransfer;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    .line 901
    :cond_b7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2200(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 903
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v12

    iget-object v12, v12, Lcom/android/nfc/handover/HandoverManager;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    .end local v9    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_cf
    :goto_cf
    return-void

    .line 908
    :cond_d0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_cf

    .line 912
    const-string v12, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_143

    .line 914
    const-string v12, "P2PHandoverClientSession"

    const-string v13, " ACTION_CANCEL_HANDOVER_TRANSFER getOrCreateHandoverTransfer "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v8, v13, v14}, Lcom/android/nfc/handover/HandoverManager;->getOrCreateHandoverTransfer(Ljava/lang/String;ZZ)Lcom/android/nfc/handover/HandoverTransfer;

    move-result-object v9

    .line 916
    .restart local v9    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    if-eqz v9, :cond_12a

    .line 918
    iget-object v12, v9, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v13}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2100(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFriendlyName(Ljava/lang/String;)V

    .line 919
    iget-object v12, v9, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v13}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v13

    iget-object v13, v13, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    invoke-static {v13}, Lcom/android/nfc/handover/TransmitClient;->getFileName(Lcom/android/nfc/handover/ConfigInfo;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 920
    iget-object v12, v9, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFailedReason(I)V

    .line 922
    invoke-virtual {v9}, Lcom/android/nfc/handover/HandoverTransfer;->cancel()V

    .line 924
    :cond_12a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2200(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v12

    iget-object v12, v12, Lcom/android/nfc/handover/HandoverManager;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cf

    .line 928
    .end local v9    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_143
    const-string v12, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_153

    const-string v12, "com.android.nfc.handover.action.HANDOVER_TRANSFER_PROGRESS"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_29a

    .line 936
    :cond_153
    const/4 v3, 0x0

    .line 937
    .local v3, "fileName":Ljava/lang/String;
    const-string v12, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16a

    .line 938
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v12

    iget-object v12, v12, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    invoke-static {v12}, Lcom/android/nfc/handover/TransmitClient;->getFileName(Lcom/android/nfc/handover/ConfigInfo;)Ljava/lang/String;

    move-result-object v3

    .line 942
    :cond_16a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v8, v13, v14}, Lcom/android/nfc/handover/HandoverManager;->getOrCreateHandoverTransfer(Ljava/lang/String;ZZ)Lcom/android/nfc/handover/HandoverTransfer;

    move-result-object v9

    .line 945
    .restart local v9    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    if-nez v9, :cond_199

    .line 946
    const-string v12, "P2PHandoverClientSession"

    const-string v13, "transfer == null;"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    new-instance v2, Landroid/content/Intent;

    const-string v12, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 948
    .local v2, "cancelIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_cf

    .line 952
    .end local v2    # "cancelIntent":Landroid/content/Intent;
    :cond_199
    iget-object v12, v9, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v13}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2100(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFriendlyName(Ljava/lang/String;)V

    .line 953
    iget-object v12, v9, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v12, v3}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 956
    const-string v12, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_285

    .line 957
    const-string v12, "com.android.nfc.handover.extra.HANDOVER_TRANSFER_STATUS"

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 958
    .local v4, "handoverStatus":I
    if-nez v4, :cond_256

    .line 959
    const-string v12, "com.android.nfc.handover.extra.HANDOVER_TRANSFER_URI"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 960
    .local v11, "uriString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v12

    iget-object v12, v12, Lcom/android/nfc/handover/HandoverManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    invoke-virtual {v12}, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->resetHandoverTimer()V

    .line 961
    const-string v12, "P2PHandoverClientSession"

    const-string v13, "mHandoverPowerManager resetHandoverTimer()"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    if-eqz v11, :cond_24e

    .line 964
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 965
    .local v10, "uri":Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1f3

    .line 966
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 969
    :cond_1f3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v13}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13, v10}, Lcom/android/nfc/handover/HandoverManager;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 970
    .local v6, "mimeType":Ljava/lang/String;
    const-string v12, "P2PHandoverClientSession"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "uri == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-string v12, "P2PHandoverClientSession"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mimeType == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    if-eqz v6, :cond_247

    .line 973
    const/4 v12, 0x1

    invoke-virtual {v9, v12, v10, v6}, Lcom/android/nfc/handover/HandoverTransfer;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_cf

    .line 975
    :cond_247
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v10, v13}, Lcom/android/nfc/handover/HandoverTransfer;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_cf

    .line 980
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_24e
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v12, v13, v14}, Lcom/android/nfc/handover/HandoverTransfer;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_cf

    .line 983
    .end local v11    # "uriString":Ljava/lang/String;
    :cond_256
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v12, v13, v14}, Lcom/android/nfc/handover/HandoverTransfer;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2300(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v12

    iget-object v12, v12, Lcom/android/nfc/handover/HandoverManager;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/HandoverManager;->cleanupTransfers()V

    goto/16 :goto_cf

    .line 990
    .end local v4    # "handoverStatus":I
    :cond_285
    const-string v12, "com.android.nfc.handover.action.HANDOVER_TRANSFER_PROGRESS"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_cf

    .line 992
    const-string v12, "P2PHandoverClientSession"

    const-string v13, "Enter Handover receiver  transfer progress"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v7, 0x0

    .line 994
    .local v7, "progress":F
    invoke-virtual {v9, v7}, Lcom/android/nfc/handover/HandoverTransfer;->updateFileProgress(F)V

    goto/16 :goto_cf

    .line 996
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v7    # "progress":F
    .end local v9    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_29a
    const-string v12, "com.android.nfc.handover.action.HANDOVER_TRANSFER_FINISH"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_cf

    .line 997
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$2300(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v12

    iget-object v12, v12, Lcom/android/nfc/handover/HandoverManager;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-static {v12}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/nfc/handover/HandoverManager;->cleanupTransfers()V

    goto/16 :goto_cf
.end method
