.class final Lcom/android/nfc/P2pLinkManager$SendTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field handoverClient:Lcom/android/nfc/handover/HandoverClient;

.field nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field snepClient:Lcom/android/nfc/snep/SnepClient;

.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .registers 2

    .prologue
    .line 883
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method doHandover([Landroid/net/Uri;)I
    .registers 12
    .param p1, "uris"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 891
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v7, v6}, Lcom/android/nfc/P2pLinkManager;->access$000(Lcom/android/nfc/P2pLinkManager;Z)V

    .line 892
    invoke-static {p1}, Lcom/android/nfc/P2pLinkManager;->checkIsFastConnect([Landroid/net/Uri;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 893
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v7, v4}, Lcom/android/nfc/P2pLinkManager;->access$000(Lcom/android/nfc/P2pLinkManager;Z)V

    .line 895
    invoke-static {p1}, Lcom/android/nfc/P2pLinkManager;->getFastConnectType([Landroid/net/Uri;)I

    move-result v0

    .line 896
    .local v0, "mode":I
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-static {v7, v4}, Lcom/android/nfc/P2pLinkManager;->access$100(Lcom/android/nfc/P2pLinkManager;Z)V

    .line 897
    const-string v7, "NfcP2pLinkManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mode  ,for fastconnection:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    if-gtz v0, :cond_37

    .line 964
    .end local v0    # "mode":I
    :cond_36
    :goto_36
    return v4

    .line 901
    .restart local v0    # "mode":I
    :cond_37
    const/4 v2, 0x0

    .line 902
    .local v2, "response":Landroid/nfc/NdefMessage;
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v7, v0}, Lcom/android/nfc/handover/HandoverManager;->createFastConHandoverRequest(I)Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 903
    .local v1, "request":Landroid/nfc/NdefMessage;
    if-eqz v1, :cond_5c

    .line 904
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v7, :cond_4c

    .line 905
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v7, v1}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 907
    :cond_4c
    if-nez v2, :cond_5c

    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v7, :cond_5c

    .line 908
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v7, v1}, Lcom/android/nfc/snep/SnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    .line 909
    .local v3, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v3}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 912
    .end local v3    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_5c
    if-eqz v2, :cond_67

    .line 913
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v4, v2}, Lcom/android/nfc/handover/HandoverManager;->doFastConHandover(Landroid/nfc/NdefMessage;)V

    .end local v0    # "mode":I
    :cond_65
    :goto_65
    move v4, v6

    .line 964
    goto :goto_36

    .line 915
    .restart local v0    # "mode":I
    :cond_67
    if-eqz v1, :cond_36

    move v4, v5

    .line 918
    goto :goto_36

    .line 922
    .end local v0    # "mode":I
    .end local v1    # "request":Landroid/nfc/NdefMessage;
    .end local v2    # "response":Landroid/nfc/NdefMessage;
    :cond_6b
    const/4 v2, 0x0

    .line 925
    .restart local v2    # "response":Landroid/nfc/NdefMessage;
    const/4 v1, 0x0

    .line 927
    .restart local v1    # "request":Landroid/nfc/NdefMessage;
    sget-boolean v7, Lcom/android/nfc/handover/Constants;->supportHWBeam:Z

    if-ne v4, v7, :cond_99

    .line 929
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v4, p1}, Lcom/android/nfc/handover/HandoverManager;->createHandoverRequestMessage([Landroid/net/Uri;)Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 934
    :goto_79
    if-eqz v1, :cond_a2

    .line 935
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v4, :cond_85

    .line 936
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v4, v1}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 938
    :cond_85
    if-nez v2, :cond_95

    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v4, :cond_95

    .line 942
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v4, v1}, Lcom/android/nfc/snep/SnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    .line 943
    .restart local v3    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v3}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 946
    .end local v3    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_95
    if-nez v2, :cond_a4

    move v4, v5

    .line 947
    goto :goto_36

    .line 931
    :cond_99
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v4}, Lcom/android/nfc/handover/HandoverManager;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    goto :goto_79

    :cond_a2
    move v4, v5

    .line 951
    goto :goto_36

    .line 954
    :cond_a4
    if-eqz v2, :cond_65

    .line 956
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v4, v2}, Lcom/android/nfc/handover/HandoverManager;->isHwBeamConnectting(Landroid/nfc/NdefMessage;)Z

    move-result v4

    if-nez v4, :cond_b8

    .line 957
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v4, p1, v2}, Lcom/android/nfc/handover/HandoverManager;->doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V

    goto :goto_65

    .line 959
    :cond_b8
    const/4 v4, 0x3

    goto/16 :goto_36
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 883
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$SendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 14
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x3

    const/4 v11, 0x0

    .line 981
    const/4 v3, 0x0

    .line 983
    .local v3, "result":Z
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v9

    .line 984
    :try_start_6
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v8, v8, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v8, v10, :cond_12

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v8, v8, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v8, v10, :cond_14

    .line 985
    :cond_12
    monitor-exit v9

    .line 1051
    :cond_13
    :goto_13
    return-object v11

    .line 987
    :cond_14
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v2, v8, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 988
    .local v2, "m":Landroid/nfc/NdefMessage;
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v8, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 989
    .local v7, "uris":[Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v8, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    iput-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    .line 990
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v8, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    iput-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 991
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v8, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    iput-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 992
    monitor-exit v9
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_99

    .line 994
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 996
    .local v5, "time":J
    if-eqz v7, :cond_43

    .line 997
    const-string v8, "NfcP2pLinkManager"

    const-string v9, "Trying handover request"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :try_start_3c
    invoke-virtual {p0, v7}, Lcom/android/nfc/P2pLinkManager$SendTask;->doHandover([Landroid/net/Uri;)I
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_a7

    move-result v1

    .line 1000
    .local v1, "handoverResult":I
    packed-switch v1, :pswitch_data_b8

    .line 1017
    .end local v1    # "handoverResult":I
    :cond_43
    :goto_43
    if-nez v3, :cond_5a

    if-eqz v2, :cond_5a

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v8, :cond_5a

    .line 1018
    const-string v8, "NfcP2pLinkManager"

    const-string v9, "Sending ndef via SNEP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :try_start_52
    invoke-virtual {p0, v2}, Lcom/android/nfc/P2pLinkManager$SendTask;->doSnepProtocol(Landroid/nfc/NdefMessage;)I
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_b5

    move-result v4

    .line 1021
    .local v4, "snepResult":I
    packed-switch v4, :pswitch_data_c2

    .line 1034
    :pswitch_59
    const/4 v3, 0x0

    .line 1041
    .end local v4    # "snepResult":I
    :cond_5a
    :goto_5a
    if-nez v3, :cond_68

    if-eqz v2, :cond_68

    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v8, :cond_68

    .line 1042
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v8, v2}, Lcom/android/nfc/ndefpush/NdefPushClient;->push(Landroid/nfc/NdefMessage;)Z

    move-result v3

    .line 1045
    :cond_68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v5, v8, v5

    .line 1046
    const-string v8, "NfcP2pLinkManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SendTask result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time ms="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    if-eqz v3, :cond_13

    .line 1048
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v8, v2, v5, v6}, Lcom/android/nfc/P2pLinkManager;->onSendComplete(Landroid/nfc/NdefMessage;J)V

    goto/16 :goto_13

    .line 992
    .end local v2    # "m":Landroid/nfc/NdefMessage;
    .end local v5    # "time":J
    .end local v7    # "uris":[Landroid/net/Uri;
    :catchall_99
    move-exception v8

    :try_start_9a
    monitor-exit v9
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v8

    .line 1002
    .restart local v1    # "handoverResult":I
    .restart local v2    # "m":Landroid/nfc/NdefMessage;
    .restart local v5    # "time":J
    .restart local v7    # "uris":[Landroid/net/Uri;
    :pswitch_9c
    const/4 v3, 0x1

    .line 1003
    goto :goto_43

    .line 1005
    :pswitch_9e
    const/4 v3, 0x0

    .line 1006
    goto :goto_43

    .line 1008
    :pswitch_a0
    const/4 v3, 0x0

    .line 1009
    :try_start_a1
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v8}, Lcom/android/nfc/P2pLinkManager;->onHandoverUnsupported()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a6} :catch_a7

    goto :goto_43

    .line 1012
    .end local v1    # "handoverResult":I
    :catch_a7
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_43

    .line 1023
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "snepResult":I
    :pswitch_aa
    const/4 v3, 0x1

    .line 1024
    goto :goto_5a

    .line 1026
    :pswitch_ac
    const/4 v3, 0x0

    .line 1027
    goto :goto_5a

    .line 1030
    :pswitch_ae
    :try_start_ae
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v8}, Lcom/android/nfc/P2pLinkManager;->onHandoverHwBeamConnectting()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b3} :catch_b5

    goto/16 :goto_13

    .line 1036
    .end local v4    # "snepResult":I
    :catch_b5
    move-exception v0

    .line 1037
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_5a

    .line 1000
    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_9c
        :pswitch_9e
        :pswitch_a0
    .end packed-switch

    .line 1021
    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_ac
        :pswitch_59
        :pswitch_ae
    .end packed-switch
.end method

.method doSnepProtocol(Landroid/nfc/NdefMessage;)I
    .registers 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 969
    if-eqz p1, :cond_9

    .line 970
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0, p1}, Lcom/android/nfc/snep/SnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 971
    const/4 v0, 0x0

    .line 973
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method
