.class Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;
.super Ljava/lang/Thread;
.source "NfcTransferHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/transferhistory/NfcTransferHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;


# direct methods
.method public constructor <init>(Lcom/android/nfc/transferhistory/NfcTransferHistory;)V
    .registers 3

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    .line 93
    const-string v0, "Nfc transfer history"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 94
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 100
    const/4 v1, 0x0

    .line 102
    .local v1, "keepService":Z
    :goto_3
    iget-object v9, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    monitor-enter v9

    .line 103
    :try_start_6
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$400(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    move-result-object v6

    if-eq v6, p0, :cond_19

    .line 104
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "multiple UpdateThreads in NfcTransferHistory"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 115
    :catchall_16
    move-exception v6

    monitor-exit v9
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v6

    .line 110
    :cond_19
    :try_start_19
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$500(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 111
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$402(Lcom/android/nfc/transferhistory/NfcTransferHistory;Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;)Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;

    .line 112
    monitor-exit v9

    .line 121
    :cond_28
    return-void

    .line 114
    :cond_29
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    const/4 v10, 0x0

    invoke-static {v6, v10}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$502(Lcom/android/nfc/transferhistory/NfcTransferHistory;Z)Z

    .line 115
    monitor-exit v9
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_16

    .line 117
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    iget-object v9, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v9}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$100(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/nfc/transferhistory/DataBaseUtils;->queryTransferList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$602(Lcom/android/nfc/transferhistory/NfcTransferHistory;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 120
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$600(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_28

    .line 124
    const/4 v3, 0x0

    .line 125
    .local v3, "listarrayPos":I
    const/4 v5, 0x0

    .line 127
    .local v5, "templistarrayPos":I
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$600(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_a7

    move v0, v7

    .line 131
    .local v0, "isAfterTempList":Z
    :cond_56
    :goto_56
    if-nez v0, :cond_64

    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_119

    .line 132
    :cond_64
    if-eqz v0, :cond_56

    .line 136
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$600(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v6}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getID()I

    move-result v4

    .line 138
    .local v4, "templistId":I
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v3, v6, :cond_ab

    .line 140
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v9, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v9}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$600(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 149
    add-int/lit8 v3, v3, 0x1

    .line 150
    add-int/lit8 v5, v5, 0x1

    .line 152
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$600(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_a9

    move v0, v7

    :goto_a6
    goto :goto_56

    .end local v0    # "isAfterTempList":Z
    .end local v4    # "templistId":I
    :cond_a7
    move v0, v8

    .line 127
    goto :goto_56

    .restart local v0    # "isAfterTempList":Z
    .restart local v4    # "templistId":I
    :cond_a9
    move v0, v8

    .line 152
    goto :goto_a6

    .line 155
    :cond_ab
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v6}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getID()I

    move-result v2

    .line 157
    .local v2, "listId":I
    if-ge v2, v4, :cond_c7

    .line 163
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_56

    .line 165
    :cond_c7
    if-ne v2, v4, :cond_f1

    .line 171
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v9, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v9}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$600(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 175
    add-int/lit8 v3, v3, 0x1

    .line 176
    add-int/lit8 v5, v5, 0x1

    .line 178
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$600(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_ef

    move v0, v7

    :goto_ed
    goto/16 :goto_56

    :cond_ef
    move v0, v8

    goto :goto_ed

    .line 186
    :cond_f1
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$700(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v9, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v9}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$600(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 190
    add-int/lit8 v3, v3, 0x1

    .line 191
    add-int/lit8 v5, v5, 0x1

    .line 193
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$600(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_117

    move v0, v7

    :goto_115
    goto/16 :goto_56

    :cond_117
    move v0, v8

    goto :goto_115

    .line 201
    .end local v2    # "listId":I
    .end local v4    # "templistId":I
    :cond_119
    iget-object v6, p0, Lcom/android/nfc/transferhistory/NfcTransferHistory$UpdateThread;->this$0:Lcom/android/nfc/transferhistory/NfcTransferHistory;

    invoke-static {v6}, Lcom/android/nfc/transferhistory/NfcTransferHistory;->access$200(Lcom/android/nfc/transferhistory/NfcTransferHistory;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_3
.end method
