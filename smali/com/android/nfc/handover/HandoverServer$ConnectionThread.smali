.class Lcom/android/nfc/handover/HandoverServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .registers 4
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    .line 162
    const-string v0, "HandoverServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 163
    iput-object p2, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 164
    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 168
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_f

    const-string v15, "HandoverServer"

    const-string v16, "starting connection thread"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_f
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 173
    .local v2, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1b} :catch_69
    .catchall {:try_start_14 .. :try_end_1b} :catchall_106

    .line 174
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-boolean v12, v15, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    .line 175
    .local v12, "running":Z
    monitor-exit v16
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_66

    .line 177
    :try_start_22
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v15

    new-array v9, v15, [B
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2c} :catch_69
    .catchall {:try_start_22 .. :try_end_2c} :catchall_106

    .line 179
    .local v9, "partial":[B
    const/4 v5, 0x0

    .local v5, "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v6, v5

    .end local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .local v6, "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v3, v2

    .line 180
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_2f
    if-eqz v12, :cond_136

    .line 181
    :try_start_31
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15, v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_38} :catch_b8
    .catchall {:try_start_31 .. :try_end_38} :catchall_12b

    move-result v13

    .line 182
    .local v13, "size":I
    if-gez v13, :cond_95

    move-object v5, v6

    .line 226
    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v13    # "size":I
    .restart local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :goto_3c
    :try_start_3c
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_4b

    const-string v15, "HandoverServer"

    const-string v16, "about to close"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_4b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_52} :catch_131

    .line 232
    :goto_52
    :try_start_52
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_123

    move-object v2, v3

    .line 237
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v9    # "partial":[B
    .end local v12    # "running":Z
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_56
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_65

    const-string v15, "HandoverServer"

    const-string v16, "finished connection thread"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_65
    return-void

    .line 175
    :catchall_66
    move-exception v15

    :try_start_67
    monitor-exit v16
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    :try_start_68
    throw v15
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_69} :catch_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_106

    .line 222
    :catch_69
    move-exception v4

    .line 223
    .local v4, "e":Ljava/io/IOException;
    :goto_6a
    :try_start_6a
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_79

    const-string v15, "HandoverServer"

    const-string v16, "IOException"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_106

    .line 226
    :cond_79
    :try_start_79
    sget-object v15, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_88

    const-string v15, "HandoverServer"

    const-string v16, "about to close"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_88
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_8f} :catch_12e

    .line 232
    :goto_8f
    :try_start_8f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_56

    .line 233
    :catch_93
    move-exception v15

    goto :goto_56

    .line 185
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v9    # "partial":[B
    .restart local v12    # "running":Z
    .restart local v13    # "size":I
    :cond_95
    const/4 v15, 0x0

    :try_start_96
    invoke-virtual {v3, v9, v15, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_b8
    .catchall {:try_start_96 .. :try_end_99} :catchall_12b

    .line 188
    :try_start_99
    new-instance v5, Landroid/nfc/NdefMessage;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-direct {v5, v15}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_a2
    .catch Landroid/nfc/FormatException; {:try_start_99 .. :try_end_a2} :catch_bb
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a2} :catch_b8
    .catchall {:try_start_99 .. :try_end_a2} :catchall_12b

    .line 193
    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :goto_a2
    if-eqz v5, :cond_134

    .line 195
    :try_start_a4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-object v15, v15, Lcom/android/nfc/handover/HandoverServer;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v15, v5}, Lcom/android/nfc/handover/HandoverManager;->tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v11

    .line 196
    .local v11, "resp":Landroid/nfc/NdefMessage;
    if-nez v11, :cond_be

    .line 197
    const-string v15, "HandoverServer"

    const-string v16, "Failed to create handover response"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 222
    .end local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v11    # "resp":Landroid/nfc/NdefMessage;
    .end local v13    # "size":I
    :catch_b8
    move-exception v4

    move-object v2, v3

    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_6a

    .line 189
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v13    # "size":I
    :catch_bb
    move-exception v15

    move-object v5, v6

    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    goto :goto_a2

    .line 202
    .restart local v11    # "resp":Landroid/nfc/NdefMessage;
    :cond_be
    const/4 v8, 0x0

    .line 203
    .local v8, "offset":I
    invoke-virtual {v11}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 204
    .local v1, "buffer":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v10

    .line 205
    .local v10, "remoteMiu":I
    :goto_cb
    array-length v15, v1

    if-ge v8, v15, :cond_e3

    .line 206
    array-length v15, v1

    sub-int/2addr v15, v8

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 207
    .local v7, "length":I
    add-int v15, v8, v7

    invoke-static {v1, v8, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 208
    .local v14, "tmpBuffer":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v15, v14}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 209
    add-int/2addr v8, v7

    .line 210
    goto :goto_cb

    .line 212
    .end local v7    # "length":I
    .end local v14    # "tmpBuffer":[B
    :cond_e3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-object v15, v15, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    invoke-interface {v15}, Lcom/android/nfc/handover/HandoverServer$Callback;->onHandoverRequestReceived()V

    .line 214
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_f1} :catch_b8
    .catchall {:try_start_a4 .. :try_end_f1} :catchall_12b

    .line 217
    .end local v1    # "buffer":[B
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "offset":I
    .end local v10    # "remoteMiu":I
    .end local v11    # "resp":Landroid/nfc/NdefMessage;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_f1
    :try_start_f1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_f8
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f8} :catch_69
    .catchall {:try_start_f1 .. :try_end_f8} :catchall_106

    .line 218
    :try_start_f8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget-boolean v12, v15, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    .line 219
    monitor-exit v16

    move-object v6, v5

    .end local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v3, v2

    .line 220
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2f

    .line 219
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :catchall_103
    move-exception v15

    monitor-exit v16
    :try_end_105
    .catchall {:try_start_f8 .. :try_end_105} :catchall_103

    :try_start_105
    throw v15
    :try_end_106
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_106} :catch_69
    .catchall {:try_start_105 .. :try_end_106} :catchall_106

    .line 225
    .end local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v9    # "partial":[B
    .end local v12    # "running":Z
    .end local v13    # "size":I
    :catchall_106
    move-exception v15

    .line 226
    :goto_107
    :try_start_107
    sget-object v16, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_116

    const-string v16, "HandoverServer"

    const-string v17, "about to close"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_11f} :catch_129

    .line 232
    :goto_11f
    :try_start_11f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_127

    .line 235
    :goto_122
    throw v15

    .line 233
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v9    # "partial":[B
    .restart local v12    # "running":Z
    :catch_123
    move-exception v15

    move-object v2, v3

    .line 236
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_56

    .line 233
    .end local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v9    # "partial":[B
    .end local v12    # "running":Z
    :catch_127
    move-exception v16

    goto :goto_122

    .line 228
    :catch_129
    move-exception v16

    goto :goto_11f

    .line 225
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "partial":[B
    .restart local v12    # "running":Z
    :catchall_12b
    move-exception v15

    move-object v2, v3

    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_107

    .line 228
    .end local v9    # "partial":[B
    .end local v12    # "running":Z
    .restart local v4    # "e":Ljava/io/IOException;
    :catch_12e
    move-exception v15

    goto/16 :goto_8f

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v9    # "partial":[B
    .restart local v12    # "running":Z
    :catch_131
    move-exception v15

    goto/16 :goto_52

    .restart local v13    # "size":I
    :cond_134
    move-object v2, v3

    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_f1

    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v13    # "size":I
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :cond_136
    move-object v5, v6

    .end local v6    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v5    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    goto/16 :goto_3c
.end method
