.class Lcom/android/nfc/snep/SnepServer$ServerThread;
.super Ljava/lang/Thread;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/snep/SnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/snep/SnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/snep/SnepServer;)V
    .registers 3

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 216
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 217
    :try_start_3
    iget-boolean v11, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 218
    .local v11, "threadRunning":Z
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_3d

    .line 220
    :goto_6
    if-eqz v11, :cond_3c

    .line 223
    :try_start_8
    iget-object v12, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v12
    :try_end_b
    .catch Lcom/android/nfc/LlcpException; {:try_start_8 .. :try_end_b} :catch_43
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_8f
    .catchall {:try_start_8 .. :try_end_b} :catchall_ae

    .line 224
    :try_start_b
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v1, v1, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v2, v2, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v3, v3, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v4, v4, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    const/16 v5, 0x400

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 226
    monitor-exit v12
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_40

    .line 227
    :try_start_28
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_2a
    .catch Lcom/android/nfc/LlcpException; {:try_start_28 .. :try_end_2a} :catch_43
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2a} :catch_8f
    .catchall {:try_start_28 .. :try_end_2a} :catchall_ae

    if-nez v0, :cond_68

    .line 266
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 267
    :try_start_2f
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_65

    if-eqz v0, :cond_3b

    .line 270
    :try_start_33
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_116
    .catchall {:try_start_33 .. :try_end_38} :catchall_65

    .line 274
    :goto_38
    const/4 v0, 0x0

    :try_start_39
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 276
    :cond_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_65

    .line 283
    :cond_3c
    :goto_3c
    return-void

    .line 218
    .end local v11    # "threadRunning":Z
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0

    .line 226
    .restart local v11    # "threadRunning":Z
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v12
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    :try_start_42
    throw v0
    :try_end_43
    .catch Lcom/android/nfc/LlcpException; {:try_start_42 .. :try_end_43} :catch_43
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_43} :catch_8f
    .catchall {:try_start_42 .. :try_end_43} :catchall_ae

    .line 261
    :catch_43
    move-exception v7

    .line 262
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :try_start_44
    const-string v0, "SnepServer"

    const-string v1, "llcp error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_ae

    .line 266
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 267
    :try_start_4e
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_104

    if-eqz v0, :cond_5a

    .line 270
    :try_start_52
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_57} :catch_10e
    .catchall {:try_start_52 .. :try_end_57} :catchall_104

    .line 274
    :goto_57
    const/4 v0, 0x0

    :try_start_58
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 276
    :cond_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_104

    .line 279
    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :goto_5b
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 280
    :try_start_5e
    iget-boolean v11, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 281
    monitor-exit v1

    goto :goto_6

    :catchall_62
    move-exception v0

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_62

    throw v0

    .line 276
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0

    .line 232
    :cond_68
    :try_start_68
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1
    :try_end_6b
    .catch Lcom/android/nfc/LlcpException; {:try_start_68 .. :try_end_6b} :catch_43
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_8f
    .catchall {:try_start_68 .. :try_end_6b} :catchall_ae

    .line 233
    :try_start_6b
    iget-boolean v11, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 234
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_8c

    .line 236
    :goto_6e
    if-eqz v11, :cond_ef

    .line 238
    :try_start_70
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1
    :try_end_73
    .catch Lcom/android/nfc/LlcpException; {:try_start_70 .. :try_end_73} :catch_43
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_8f
    .catchall {:try_start_70 .. :try_end_73} :catchall_ae

    .line 239
    :try_start_73
    iget-object v10, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 240
    .local v10, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_ab

    .line 242
    if-nez v10, :cond_c0

    .line 266
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 267
    :try_start_7b
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_7d
    .catchall {:try_start_7b .. :try_end_7d} :catchall_89

    if-eqz v0, :cond_87

    .line 270
    :try_start_7f
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_84} :catch_113
    .catchall {:try_start_7f .. :try_end_84} :catchall_89

    .line 274
    :goto_84
    const/4 v0, 0x0

    :try_start_85
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 276
    :cond_87
    monitor-exit v1

    goto :goto_3c

    :catchall_89
    move-exception v0

    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_89

    throw v0

    .line 234
    .end local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_8c
    move-exception v0

    :try_start_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw v0
    :try_end_8f
    .catch Lcom/android/nfc/LlcpException; {:try_start_8e .. :try_end_8f} :catch_43
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_8f} :catch_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_ae

    .line 263
    :catch_8f
    move-exception v7

    .line 264
    .local v7, "e":Ljava/io/IOException;
    :try_start_90
    const-string v0, "SnepServer"

    const-string v1, "IO error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_ae

    .line 266
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 267
    :try_start_9a
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_9c
    .catchall {:try_start_9a .. :try_end_9c} :catchall_a8

    if-eqz v0, :cond_a6

    .line 270
    :try_start_9e
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a3} :catch_10c
    .catchall {:try_start_9e .. :try_end_a3} :catchall_a8

    .line 274
    :goto_a3
    const/4 v0, 0x0

    :try_start_a4
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 276
    :cond_a6
    monitor-exit v1

    goto :goto_5b

    :catchall_a8
    move-exception v0

    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a4 .. :try_end_aa} :catchall_a8

    throw v0

    .line 240
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_ab
    move-exception v0

    :try_start_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    :try_start_ad
    throw v0
    :try_end_ae
    .catch Lcom/android/nfc/LlcpException; {:try_start_ad .. :try_end_ae} :catch_43
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_ae} :catch_8f
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ae

    .line 266
    :catchall_ae
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 267
    :try_start_b2
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_b4
    .catchall {:try_start_b2 .. :try_end_b4} :catchall_107

    if-eqz v2, :cond_be

    .line 270
    :try_start_b6
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_bb} :catch_10a
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_107

    .line 274
    :goto_bb
    const/4 v2, 0x0

    :try_start_bc
    iput-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 276
    :cond_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_107

    throw v0

    .line 247
    .restart local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_c0
    :try_start_c0
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 249
    .local v6, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v6, :cond_dc

    .line 250
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v9

    .line 251
    .local v9, "miu":I
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v0, v0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e6

    move v8, v9

    .line 253
    .local v8, "fragmentLength":I
    :goto_d2
    new-instance v0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;

    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    invoke-direct {v0, v1, v6, v8}, Lcom/android/nfc/snep/SnepServer$ConnectionThread;-><init>(Lcom/android/nfc/snep/SnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 256
    .end local v8    # "fragmentLength":I
    .end local v9    # "miu":I
    :cond_dc
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1
    :try_end_df
    .catch Lcom/android/nfc/LlcpException; {:try_start_c0 .. :try_end_df} :catch_43
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_df} :catch_8f
    .catchall {:try_start_c0 .. :try_end_df} :catchall_ae

    .line 257
    :try_start_df
    iget-boolean v11, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 258
    monitor-exit v1

    goto :goto_6e

    :catchall_e3
    move-exception v0

    monitor-exit v1
    :try_end_e5
    .catchall {:try_start_df .. :try_end_e5} :catchall_e3

    :try_start_e5
    throw v0

    .line 251
    .restart local v9    # "miu":I
    :cond_e6
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v0, v0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I
    :try_end_ed
    .catch Lcom/android/nfc/LlcpException; {:try_start_e5 .. :try_end_ed} :catch_43
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ed} :catch_8f
    .catchall {:try_start_e5 .. :try_end_ed} :catchall_ae

    move-result v8

    goto :goto_d2

    .line 266
    .end local v6    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v9    # "miu":I
    .end local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_ef
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 267
    :try_start_f2
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_f4
    .catchall {:try_start_f2 .. :try_end_f4} :catchall_101

    if-eqz v0, :cond_fe

    .line 270
    :try_start_f6
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_fb} :catch_111
    .catchall {:try_start_f6 .. :try_end_fb} :catchall_101

    .line 274
    :goto_fb
    const/4 v0, 0x0

    :try_start_fc
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 276
    :cond_fe
    monitor-exit v1

    goto/16 :goto_5b

    :catchall_101
    move-exception v0

    monitor-exit v1
    :try_end_103
    .catchall {:try_start_fc .. :try_end_103} :catchall_101

    throw v0

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catchall_104
    move-exception v0

    :try_start_105
    monitor-exit v1
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    throw v0

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_107
    move-exception v0

    :try_start_108
    monitor-exit v1
    :try_end_109
    .catchall {:try_start_108 .. :try_end_109} :catchall_107

    throw v0

    .line 271
    :catch_10a
    move-exception v2

    goto :goto_bb

    .local v7, "e":Ljava/io/IOException;
    :catch_10c
    move-exception v0

    goto :goto_a3

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catch_10e
    move-exception v0

    goto/16 :goto_57

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catch_111
    move-exception v0

    goto :goto_fb

    .restart local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_113
    move-exception v0

    goto/16 :goto_84

    .end local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_116
    move-exception v0

    goto/16 :goto_38
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 287
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 288
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    if-eqz v0, :cond_12

    .line 290
    :try_start_a
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_17
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 294
    :goto_f
    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 296
    :cond_12
    monitor-exit v1

    .line 297
    return-void

    .line 296
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_14

    throw v0

    .line 291
    :catch_17
    move-exception v0

    goto :goto_f
.end method
