.class Lcom/android/nfc/handover/TransmitClient$GetFileThread;
.super Landroid/os/AsyncTask;
.source "TransmitClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/TransmitClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetFileThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/TransmitClient$GetFileThread$UpdateFileProgressTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private configInfo:Lcom/android/nfc/handover/ConfigInfo;

.field private fileNum:I

.field private ip:Ljava/lang/String;

.field private isSendProgress:Z

.field private mTimer:Ljava/util/Timer;

.field private progress:Landroid/content/Intent;

.field private receiveFileNum:I

.field final synthetic this$0:Lcom/android/nfc/handover/TransmitClient;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/TransmitClient;Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;)V
    .registers 7
    .param p2, "configinfo"    # Lcom/android/nfc/handover/ConfigInfo;
    .param p3, "iPAddress"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 181
    iput-object p1, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 175
    iput v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->receiveFileNum:I

    .line 183
    iput-object p3, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->ip:Ljava/lang/String;

    .line 184
    iput v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->fileNum:I

    .line 185
    iput-object p2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    .line 186
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->mTimer:Ljava/util/Timer;

    .line 187
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->progress:Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->progress:Landroid/content/Intent;

    const-string v1, "com.android.nfc.handover.action.HANDOVER_TRANSFER_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iput-boolean v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->isSendProgress:Z

    .line 190
    invoke-static {p1, v2}, Lcom/android/nfc/handover/TransmitClient;->access$002(Lcom/android/nfc/handover/TransmitClient;Z)Z

    .line 191
    return-void
.end method

.method private cancelTimer()V
    .registers 3

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_10

    .line 530
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 532
    const-string v0, "TransmitClient"

    const-string v1, "mTimer is cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_10
    return-void
.end method

.method private deleteRedundance(Ljava/io/File;)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 272
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 274
    :try_start_6
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_13

    .line 275
    const-string v1, "TransmitClient"

    const-string v2, "delete faild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    .line 281
    :cond_13
    :goto_13
    return-void

    .line 277
    :catch_14
    move-exception v0

    .line 278
    .local v0, "ee":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13
.end method

.method private downloadByHttp(Landroid/net/Uri;Lcom/android/nfc/handover/FileInfo;)Ljava/io/File;
    .registers 28
    .param p1, "mSourceURI"    # Landroid/net/Uri;
    .param p2, "file"    # Lcom/android/nfc/handover/FileInfo;

    .prologue
    .line 288
    const-string v19, "TransmitClient"

    const-string v20, "downloadByHttp is begin"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v5, 0x0

    .line 290
    .local v5, "conn":Ljava/net/HttpURLConnection;
    const/4 v12, 0x0

    .line 291
    .local v12, "inputStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 292
    .local v3, "bufInputStream":Ljava/io/BufferedInputStream;
    const/4 v10, 0x0

    .line 293
    .local v10, "fileOutputStream":Ljava/io/FileOutputStream;
    const-wide/16 v8, 0x0

    .line 294
    .local v8, "fileLength":J
    const/16 v16, 0x0

    .line 297
    .local v16, "targetFile":Ljava/io/File;
    :try_start_f
    new-instance v18, Ljava/net/URL;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 298
    .local v18, "url":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 299
    const/16 v19, 0x1388

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 300
    const/16 v19, 0x7530

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 301
    const-string v19, "Connection"

    const-string v20, "Close"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->isConnection(Ljava/net/HttpURLConnection;)Z

    move-result v19

    if-nez v19, :cond_4a

    .line 304
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->reConnect(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 307
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/nfc/handover/TransmitClient;->isConnected:Z

    move/from16 v19, v0

    if-nez v19, :cond_85

    .line 309
    const-string v19, "TransmitClient"

    const-string v20, "is not Connect server, stop receive files"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_5f} :catch_364
    .catchall {:try_start_f .. :try_end_5f} :catchall_2f5

    .line 310
    const/16 v19, 0x0

    .line 393
    if-eqz v3, :cond_66

    .line 395
    :try_start_63
    #Replaced unresolvable odex instruction with a throw
    throw v3
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_76

    .line 402
    :cond_66
    :goto_66
    if-eqz v12, :cond_6b

    .line 404
    :try_start_68
    #Replaced unresolvable odex instruction with a throw
    throw v12
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_7b

    .line 411
    :cond_6b
    :goto_6b
    if-eqz v10, :cond_70

    .line 413
    :try_start_6d
    #Replaced unresolvable odex instruction with a throw
    throw v10
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_80

    .line 420
    :cond_70
    :goto_70
    if-eqz v5, :cond_75

    .line 421
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 426
    .end local v18    # "url":Ljava/net/URL;
    :cond_75
    :goto_75
    return-object v19

    .line 396
    .restart local v18    # "url":Ljava/net/URL;
    :catch_76
    move-exception v6

    .line 398
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_66

    .line 405
    .end local v6    # "e":Ljava/io/IOException;
    :catch_7b
    move-exception v6

    .line 407
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6b

    .line 414
    .end local v6    # "e":Ljava/io/IOException;
    :catch_80
    move-exception v6

    .line 416
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_70

    .line 313
    .end local v6    # "e":Ljava/io/IOException;
    :cond_85
    :try_start_85
    const-string v19, "TransmitClient"

    const-string v20, "receive file is start"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8c} :catch_364
    .catchall {:try_start_85 .. :try_end_8c} :catchall_2f5

    .line 314
    if-eqz v5, :cond_153

    .line 316
    :try_start_8e
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_91
    .catch Ljava/lang/NumberFormatException; {:try_start_8e .. :try_end_91} :catch_100
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_364
    .catchall {:try_start_8e .. :try_end_91} :catchall_2f5

    move-result-object v12

    .line 323
    :try_start_92
    const-string v19, "Content-Length"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 324
    .local v13, "len":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 326
    new-instance v15, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 327
    .local v15, "stat":Landroid/os/StatFs;
    invoke-virtual {v15}, Landroid/os/StatFs;->getBlockSize()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-virtual {v15}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x4

    sub-long v21, v21, v23

    mul-long v19, v19, v21

    cmp-long v19, v19, v8

    if-gez v19, :cond_153

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/nfc/handover/TransmitClient;->access$200(Lcom/android/nfc/handover/TransmitClient;)Landroid/content/Context;

    move-result-object v19

    new-instance v20, Landroid/content/Intent;

    const-string v21, "com.android.nfc.handover.action.ACTION_NOT_ENOUGH_FREE_SPACE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    const-string v19, "TransmitClient"

    const-string v20, "Receive File aborted - not enough free space"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_e8} :catch_364
    .catchall {:try_start_92 .. :try_end_e8} :catchall_2f5

    .line 330
    const/16 v19, 0x0

    .line 393
    if-eqz v3, :cond_ef

    .line 395
    :try_start_ec
    #Replaced unresolvable odex instruction with a throw
    throw v3
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_144

    .line 402
    :cond_ef
    :goto_ef
    if-eqz v12, :cond_f4

    .line 404
    :try_start_f1
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_149

    .line 411
    :cond_f4
    :goto_f4
    if-eqz v10, :cond_f9

    .line 413
    :try_start_f6
    #Replaced unresolvable odex instruction with a throw
    throw v10
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_14e

    .line 420
    :cond_f9
    :goto_f9
    if-eqz v5, :cond_75

    .line 421
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_75

    .line 317
    .end local v13    # "len":Ljava/lang/String;
    .end local v15    # "stat":Landroid/os/StatFs;
    :catch_100
    move-exception v6

    .line 318
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_101
    const-string v19, "TransmitClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "NumberFormatException e ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_11d} :catch_364
    .catchall {:try_start_101 .. :try_end_11d} :catchall_2f5

    .line 319
    const/16 v19, 0x0

    .line 393
    if-eqz v3, :cond_124

    .line 395
    :try_start_121
    #Replaced unresolvable odex instruction with a throw
    throw v3
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_135

    .line 402
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_124
    :goto_124
    if-eqz v12, :cond_129

    .line 404
    :try_start_126
    #Replaced unresolvable odex instruction with a throw
    throw v12
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_13a

    .line 411
    :cond_129
    :goto_129
    if-eqz v10, :cond_12e

    .line 413
    :try_start_12b
    #Replaced unresolvable odex instruction with a throw
    throw v10
    :try_end_12e
    .catch Ljava/io/IOException; {:try_start_12b .. :try_end_12e} :catch_13f

    .line 420
    :cond_12e
    :goto_12e
    if-eqz v5, :cond_75

    .line 421
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_75

    .line 396
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    :catch_135
    move-exception v6

    .line 398
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_124

    .line 405
    .end local v6    # "e":Ljava/io/IOException;
    :catch_13a
    move-exception v6

    .line 407
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_129

    .line 414
    .end local v6    # "e":Ljava/io/IOException;
    :catch_13f
    move-exception v6

    .line 416
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12e

    .line 396
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v13    # "len":Ljava/lang/String;
    .restart local v15    # "stat":Landroid/os/StatFs;
    :catch_144
    move-exception v6

    .line 398
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ef

    .line 405
    .end local v6    # "e":Ljava/io/IOException;
    :catch_149
    move-exception v6

    .line 407
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f4

    .line 414
    .end local v6    # "e":Ljava/io/IOException;
    :catch_14e
    move-exception v6

    .line 416
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f9

    .line 334
    .end local v6    # "e":Ljava/io/IOException;
    .end local v13    # "len":Ljava/lang/String;
    .end local v15    # "stat":Landroid/os/StatFs;
    :cond_153
    :try_start_153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    move-object/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/nfc/handover/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/nfc/handover/TransmitClient;->access$300(Lcom/android/nfc/handover/TransmitClient;Ljava/lang/String;)Ljava/io/File;
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_160} :catch_364
    .catchall {:try_start_153 .. :try_end_160} :catchall_2f5

    move-result-object v16

    .line 336
    if-nez v16, :cond_18a

    .line 337
    const/16 v19, 0x0

    .line 393
    if-eqz v3, :cond_16a

    .line 395
    :try_start_167
    #Replaced unresolvable odex instruction with a throw
    throw v3
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16a} :catch_17b

    .line 402
    :cond_16a
    :goto_16a
    if-eqz v12, :cond_16f

    .line 404
    :try_start_16c
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_16f} :catch_180

    .line 411
    :cond_16f
    :goto_16f
    if-eqz v10, :cond_174

    .line 413
    :try_start_171
    #Replaced unresolvable odex instruction with a throw
    throw v10
    :try_end_174
    .catch Ljava/io/IOException; {:try_start_171 .. :try_end_174} :catch_185

    .line 420
    :cond_174
    :goto_174
    if-eqz v5, :cond_75

    .line 421
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_75

    .line 396
    :catch_17b
    move-exception v6

    .line 398
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_16a

    .line 405
    .end local v6    # "e":Ljava/io/IOException;
    :catch_180
    move-exception v6

    .line 407
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_16f

    .line 414
    .end local v6    # "e":Ljava/io/IOException;
    :catch_185
    move-exception v6

    .line 416
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_174

    .line 340
    .end local v6    # "e":Ljava/io/IOException;
    :cond_18a
    :try_start_18a
    const-string v19, "TransmitClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "downloadByHttp targetFile = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1ad
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_1ad} :catch_364
    .catchall {:try_start_18a .. :try_end_1ad} :catchall_2f5

    .line 342
    .end local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v11, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1ad
    new-instance v4, Ljava/io/BufferedInputStream;

    const/16 v19, 0x4000

    move/from16 v0, v19

    invoke-direct {v4, v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1b6
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1b6} :catch_367
    .catchall {:try_start_1ad .. :try_end_1b6} :catchall_35d

    .line 343
    .end local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .local v4, "bufInputStream":Ljava/io/BufferedInputStream;
    const/16 v19, 0x4000

    :try_start_1b8
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 344
    .local v17, "tmpBuf":[B
    const/4 v14, 0x0

    .line 347
    .local v14, "n":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/nfc/handover/TransmitClient;->mCurrLen:J

    .line 349
    :goto_1cd
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-ltz v14, :cond_278

    .line 351
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->isSendProgress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1e0

    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->sendFileProgressBroadcast()V

    .line 355
    :cond_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/nfc/handover/TransmitClient;->access$000(Lcom/android/nfc/handover/TransmitClient;)Z

    move-result v19

    if-eqz v19, :cond_227

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/nfc/handover/TransmitClient;->access$002(Lcom/android/nfc/handover/TransmitClient;Z)Z

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->deleteRedundance(Ljava/io/File;)V
    :try_end_1fe
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1fe} :catch_248
    .catchall {:try_start_1b8 .. :try_end_1fe} :catchall_360

    .line 358
    const/16 v19, 0x0

    .line 393
    if-eqz v4, :cond_205

    .line 395
    :try_start_202
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_205
    .catch Ljava/io/IOException; {:try_start_202 .. :try_end_205} :catch_218

    .line 402
    :cond_205
    :goto_205
    if-eqz v12, :cond_20a

    .line 404
    :try_start_207
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_20a
    .catch Ljava/io/IOException; {:try_start_207 .. :try_end_20a} :catch_21d

    .line 411
    :cond_20a
    :goto_20a
    if-eqz v11, :cond_20f

    .line 413
    :try_start_20c
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_20f
    .catch Ljava/io/IOException; {:try_start_20c .. :try_end_20f} :catch_222

    .line 420
    :cond_20f
    :goto_20f
    if-eqz v5, :cond_214

    .line 421
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_214
    move-object v10, v11

    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_75

    .line 396
    .end local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .end local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_218
    move-exception v6

    .line 398
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_205

    .line 405
    .end local v6    # "e":Ljava/io/IOException;
    :catch_21d
    move-exception v6

    .line 407
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_20a

    .line 414
    .end local v6    # "e":Ljava/io/IOException;
    :catch_222
    move-exception v6

    .line 416
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_20f

    .line 360
    .end local v6    # "e":Ljava/io/IOException;
    :cond_227
    const/16 v19, 0x0

    :try_start_229
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/nfc/handover/TransmitClient;->mCurrLen:J

    move-wide/from16 v20, v0

    int-to-long v0, v14

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/nfc/handover/TransmitClient;->mCurrLen:J
    :try_end_247
    .catch Ljava/io/IOException; {:try_start_229 .. :try_end_247} :catch_248
    .catchall {:try_start_229 .. :try_end_247} :catchall_360

    goto :goto_1cd

    .line 380
    .end local v14    # "n":I
    .end local v17    # "tmpBuf":[B
    :catch_248
    move-exception v6

    move-object v10, v11

    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 381
    .end local v4    # "bufInputStream":Ljava/io/BufferedInputStream;
    .end local v18    # "url":Ljava/net/URL;
    .restart local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_24b
    if-eqz v16, :cond_31d

    :try_start_24d
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z
    :try_end_250
    .catchall {:try_start_24d .. :try_end_250} :catchall_2f5

    move-result v19

    if-eqz v19, :cond_31d

    .line 383
    :try_start_253
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v19

    if-nez v19, :cond_260

    .line 384
    const-string v19, "TransmitClient"

    const-string v20, "delete faild"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_253 .. :try_end_260} :catch_2ef
    .catchall {:try_start_253 .. :try_end_260} :catchall_2f5

    .line 389
    :cond_260
    :goto_260
    const/16 v19, 0x0

    .line 393
    if-eqz v3, :cond_267

    .line 395
    :try_start_264
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_267
    .catch Ljava/io/IOException; {:try_start_264 .. :try_end_267} :catch_30b

    .line 402
    :cond_267
    :goto_267
    if-eqz v12, :cond_26c

    .line 404
    :try_start_269
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_26c
    .catch Ljava/io/IOException; {:try_start_269 .. :try_end_26c} :catch_311

    .line 411
    :cond_26c
    :goto_26c
    if-eqz v10, :cond_271

    .line 413
    :try_start_26e
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_271
    .catch Ljava/io/IOException; {:try_start_26e .. :try_end_271} :catch_317

    .line 420
    :cond_271
    :goto_271
    if-eqz v5, :cond_75

    .line 421
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_75

    .line 369
    .end local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "n":I
    .restart local v17    # "tmpBuf":[B
    .restart local v18    # "url":Ljava/net/URL;
    :cond_278
    :try_start_278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/nfc/handover/TransmitClient;->mCurrLen:J

    move-wide/from16 v19, v0

    cmp-long v19, v19, v8

    if-nez v19, :cond_2b8

    .line 372
    const-string v19, "TransmitClient"

    const-string v20, "downloadByHttp receive file succee"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28f
    .catch Ljava/io/IOException; {:try_start_278 .. :try_end_28f} :catch_248
    .catchall {:try_start_278 .. :try_end_28f} :catchall_360

    .line 393
    if-eqz v4, :cond_294

    .line 395
    :try_start_291
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_294
    .catch Ljava/io/IOException; {:try_start_291 .. :try_end_294} :catch_2a9

    .line 402
    :cond_294
    :goto_294
    if-eqz v12, :cond_299

    .line 404
    :try_start_296
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_299
    .catch Ljava/io/IOException; {:try_start_296 .. :try_end_299} :catch_2ae

    .line 411
    :cond_299
    :goto_299
    if-eqz v11, :cond_29e

    .line 413
    :try_start_29b
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_29e
    .catch Ljava/io/IOException; {:try_start_29b .. :try_end_29e} :catch_2b3

    .line 420
    :cond_29e
    :goto_29e
    if-eqz v5, :cond_2a3

    .line 421
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2a3
    move-object v10, v11

    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    move-object/from16 v19, v16

    goto/16 :goto_75

    .line 396
    .end local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .end local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_2a9
    move-exception v6

    .line 398
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_294

    .line 405
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2ae
    move-exception v6

    .line 407
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_299

    .line 414
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2b3
    move-exception v6

    .line 416
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_29e

    .line 376
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2b8
    :try_start_2b8
    const-string v19, "TransmitClient"

    const-string v20, "downloadByHttp receive error"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->deleteRedundance(Ljava/io/File;)V
    :try_end_2c6
    .catch Ljava/io/IOException; {:try_start_2b8 .. :try_end_2c6} :catch_248
    .catchall {:try_start_2b8 .. :try_end_2c6} :catchall_360

    .line 378
    const/16 v19, 0x0

    .line 393
    if-eqz v4, :cond_2cd

    .line 395
    :try_start_2ca
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2cd
    .catch Ljava/io/IOException; {:try_start_2ca .. :try_end_2cd} :catch_2e0

    .line 402
    :cond_2cd
    :goto_2cd
    if-eqz v12, :cond_2d2

    .line 404
    :try_start_2cf
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_2d2
    .catch Ljava/io/IOException; {:try_start_2cf .. :try_end_2d2} :catch_2e5

    .line 411
    :cond_2d2
    :goto_2d2
    if-eqz v11, :cond_2d7

    .line 413
    :try_start_2d4
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d7
    .catch Ljava/io/IOException; {:try_start_2d4 .. :try_end_2d7} :catch_2ea

    .line 420
    :cond_2d7
    :goto_2d7
    if-eqz v5, :cond_2dc

    .line 421
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2dc
    move-object v10, v11

    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_75

    .line 396
    .end local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .end local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_2e0
    move-exception v6

    .line 398
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2cd

    .line 405
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2e5
    move-exception v6

    .line 407
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d2

    .line 414
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2ea
    move-exception v6

    .line 416
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d7

    .line 386
    .end local v4    # "bufInputStream":Ljava/io/BufferedInputStream;
    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v14    # "n":I
    .end local v17    # "tmpBuf":[B
    .end local v18    # "url":Ljava/net/URL;
    .restart local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_2ef
    move-exception v7

    .line 387
    .local v7, "e1":Ljava/lang/Exception;
    :try_start_2f0
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2f3
    .catchall {:try_start_2f0 .. :try_end_2f3} :catchall_2f5

    goto/16 :goto_260

    .line 393
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "e1":Ljava/lang/Exception;
    :catchall_2f5
    move-exception v19

    :goto_2f6
    if-eqz v3, :cond_2fb

    .line 395
    :try_start_2f8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2fb
    .catch Ljava/io/IOException; {:try_start_2f8 .. :try_end_2fb} :catch_34e

    .line 402
    :cond_2fb
    :goto_2fb
    if-eqz v12, :cond_300

    .line 404
    :try_start_2fd
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_300
    .catch Ljava/io/IOException; {:try_start_2fd .. :try_end_300} :catch_353

    .line 411
    :cond_300
    :goto_300
    if-eqz v10, :cond_305

    .line 413
    :try_start_302
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_305
    .catch Ljava/io/IOException; {:try_start_302 .. :try_end_305} :catch_358

    .line 420
    :cond_305
    :goto_305
    if-eqz v5, :cond_30a

    .line 421
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_30a
    throw v19

    .line 396
    .restart local v6    # "e":Ljava/io/IOException;
    :catch_30b
    move-exception v6

    .line 398
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_267

    .line 405
    :catch_311
    move-exception v6

    .line 407
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_26c

    .line 414
    :catch_317
    move-exception v6

    .line 416
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_271

    .line 391
    :cond_31d
    :try_start_31d
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_320
    .catchall {:try_start_31d .. :try_end_320} :catchall_2f5

    .line 393
    if-eqz v3, :cond_325

    .line 395
    :try_start_322
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_325
    .catch Ljava/io/IOException; {:try_start_322 .. :try_end_325} :catch_33f

    .line 402
    :cond_325
    :goto_325
    if-eqz v12, :cond_32a

    .line 404
    :try_start_327
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_32a
    .catch Ljava/io/IOException; {:try_start_327 .. :try_end_32a} :catch_344

    .line 411
    :cond_32a
    :goto_32a
    if-eqz v10, :cond_32f

    .line 413
    :try_start_32c
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_32f
    .catch Ljava/io/IOException; {:try_start_32c .. :try_end_32f} :catch_349

    .line 420
    :cond_32f
    :goto_32f
    if-eqz v5, :cond_334

    .line 421
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 425
    :cond_334
    const-string v19, "TransmitClient"

    const-string v20, "downloadByHttp is end"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v16

    .line 426
    goto/16 :goto_75

    .line 396
    :catch_33f
    move-exception v6

    .line 398
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_325

    .line 405
    :catch_344
    move-exception v6

    .line 407
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_32a

    .line 414
    :catch_349
    move-exception v6

    .line 416
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_32f

    .line 396
    .end local v6    # "e":Ljava/io/IOException;
    :catch_34e
    move-exception v6

    .line 398
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2fb

    .line 405
    .end local v6    # "e":Ljava/io/IOException;
    :catch_353
    move-exception v6

    .line 407
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_300

    .line 414
    .end local v6    # "e":Ljava/io/IOException;
    :catch_358
    move-exception v6

    .line 416
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_305

    .line 393
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v18    # "url":Ljava/net/URL;
    :catchall_35d
    move-exception v19

    move-object v10, v11

    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2f6

    .end local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    .end local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_360
    move-exception v19

    move-object v10, v11

    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "bufInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufInputStream":Ljava/io/BufferedInputStream;
    goto :goto_2f6

    .line 380
    .end local v18    # "url":Ljava/net/URL;
    :catch_364
    move-exception v6

    goto/16 :goto_24b

    .end local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v18    # "url":Ljava/net/URL;
    :catch_367
    move-exception v6

    move-object v10, v11

    .end local v11    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_24b
.end method

.method private downloadFiles(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;)Z
    .registers 18
    .param p1, "configinfo"    # Lcom/android/nfc/handover/ConfigInfo;
    .param p2, "iPAddress"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string v12, "TransmitClient"

    const-string v13, "downloadFiles is begin"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v9, 0x0

    .line 199
    .local v9, "mConfigFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 200
    .local v4, "fileinfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/handover/ConfigInfo;->getmServerPort()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/handover/ConfigInfo;->getmFileInfo()Lcom/android/nfc/handover/FileInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/nfc/handover/FileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 202
    .local v1, "configUri":Landroid/net/Uri;
    const-string v12, "TransmitClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "configUri  == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/handover/ConfigInfo;->getmFileInfo()Lcom/android/nfc/handover/FileInfo;

    move-result-object v12

    invoke-direct {p0, v1, v12}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->downloadByHttp(Landroid/net/Uri;Lcom/android/nfc/handover/FileInfo;)Ljava/io/File;

    move-result-object v9

    .line 206
    if-eqz v9, :cond_170

    .line 207
    const/4 v6, 0x0

    .line 209
    .local v6, "inStream":Ljava/io/FileInputStream;
    :try_start_63
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_68} :catch_155
    .catchall {:try_start_63 .. :try_end_68} :catchall_164

    .line 210
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .local v7, "inStream":Ljava/io/FileInputStream;
    :try_start_68
    invoke-static {v7}, Lcom/android/nfc/handover/TransmitClient;->getFileInfoByXml(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v4

    .line 211
    if-eqz v4, :cond_74

    invoke-interface {v4}, Ljava/util/List;->size()I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_71} :catch_183
    .catchall {:try_start_68 .. :try_end_71} :catchall_180

    move-result v12

    if-gtz v12, :cond_80

    .line 212
    :cond_74
    const/4 v12, 0x0

    .line 221
    if-eqz v7, :cond_7a

    .line 223
    :try_start_77
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 268
    .end local v7    # "inStream":Ljava/io/FileInputStream;
    :cond_7a
    :goto_7a
    return v12

    .line 224
    .restart local v7    # "inStream":Ljava/io/FileInputStream;
    :catch_7b
    move-exception v2

    .line 226
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7a

    .line 214
    .end local v2    # "e":Ljava/io/IOException;
    :cond_80
    :try_start_80
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    iput v12, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->fileNum:I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_86} :catch_183
    .catchall {:try_start_80 .. :try_end_86} :catchall_180

    .line 221
    if-eqz v7, :cond_8b

    .line 223
    :try_start_88
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_14f

    .line 242
    :cond_8b
    :goto_8b
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->isSendProgress:Z

    .line 245
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_92
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_176

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/handover/FileInfo;

    .line 246
    .local v10, "mfileinfo":Lcom/android/nfc/handover/FileInfo;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x231c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/android/nfc/handover/FileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 248
    .local v11, "uri":Landroid/net/Uri;
    const-string v12, "TransmitClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "downloadFiles ,Uri == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0, v11, v10}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->downloadByHttp(Landroid/net/Uri;Lcom/android/nfc/handover/FileInfo;)Ljava/io/File;

    move-result-object v3

    .line 251
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_173

    .line 252
    iget v12, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->receiveFileNum:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->receiveFileNum:I

    .line 254
    const-string v12, "TransmitClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file.getAbsolutePath() == "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v8, "intent":Landroid/content/Intent;
    const-string v12, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v12, "com.android.nfc.handover.extra.HANDOVER_TRANSFER_STATUS"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string v12, "com.android.nfc.handover.extra.HANDOVER_TRANSFER_URI"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    iget-object v12, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    invoke-static {v12, v8}, Lcom/android/nfc/handover/TransmitClient;->access$100(Lcom/android/nfc/handover/TransmitClient;Landroid/content/Intent;)V

    .line 264
    const-string v12, "TransmitClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "receiveFileNum = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->receiveFileNum:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_92

    .line 224
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "mfileinfo":Lcom/android/nfc/handover/FileInfo;
    .end local v11    # "uri":Landroid/net/Uri;
    :catch_14f
    move-exception v2

    .line 226
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8b

    .line 217
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "inStream":Ljava/io/FileInputStream;
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    :catch_155
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    :goto_156
    const/4 v12, 0x0

    .line 221
    if-eqz v6, :cond_7a

    .line 223
    :try_start_159
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15c} :catch_15e

    goto/16 :goto_7a

    .line 224
    :catch_15e
    move-exception v2

    .line 226
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_7a

    .line 221
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_164
    move-exception v12

    :goto_165
    if-eqz v6, :cond_16a

    .line 223
    :try_start_167
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16a} :catch_16b

    .line 227
    :cond_16a
    :goto_16a
    throw v12

    .line 224
    :catch_16b
    move-exception v2

    .line 226
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_16a

    .line 239
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    :cond_170
    const/4 v12, 0x0

    goto/16 :goto_7a

    .line 261
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "inStream":Ljava/io/FileInputStream;
    .restart local v10    # "mfileinfo":Lcom/android/nfc/handover/FileInfo;
    .restart local v11    # "uri":Landroid/net/Uri;
    :cond_173
    const/4 v12, 0x0

    goto/16 :goto_7a

    .line 267
    .end local v3    # "file":Ljava/io/File;
    .end local v10    # "mfileinfo":Lcom/android/nfc/handover/FileInfo;
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_176
    const-string v12, "TransmitClient"

    const-string v13, "downloadFiles is end"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v12, 0x1

    goto/16 :goto_7a

    .line 221
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_180
    move-exception v12

    move-object v6, v7

    .end local v7    # "inStream":Ljava/io/FileInputStream;
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    goto :goto_165

    .line 217
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .restart local v7    # "inStream":Ljava/io/FileInputStream;
    :catch_183
    move-exception v2

    move-object v6, v7

    .end local v7    # "inStream":Ljava/io/FileInputStream;
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    goto :goto_156
.end method

.method private isConnection(Ljava/net/HttpURLConnection;)Z
    .registers 7
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 440
    if-nez p1, :cond_5

    .line 455
    :goto_4
    return v1

    .line 444
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 445
    iget-object v3, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/nfc/handover/TransmitClient;->isConnected:Z

    .line 447
    const-string v3, "TransmitClient"

    const-string v4, "connect is ok"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_16

    move v1, v2

    .line 448
    goto :goto_4

    .line 449
    :catch_16
    move-exception v0

    .line 450
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    iput-boolean v1, v2, Lcom/android/nfc/handover/TransmitClient;->isConnected:Z

    .line 452
    const-string v2, "TransmitClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isConnection IOException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method private isReceiveSucceed()Z
    .registers 3

    .prologue
    .line 498
    iget v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->fileNum:I

    if-lez v0, :cond_c

    iget v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->fileNum:I

    iget v1, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->receiveFileNum:I

    if-ne v0, v1, :cond_c

    .line 499
    const/4 v0, 0x1

    .line 501
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private reConnect(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 10
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 459
    const/4 v4, 0x1

    .line 462
    .local v4, "retryTimes":I
    :goto_1
    const/4 v1, 0x0

    .line 464
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_2
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 465
    const/16 v5, 0x1388

    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 466
    const/16 v5, 0x7530

    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 467
    const-string v5, "Connection"

    const-string v6, "Close"

    invoke-virtual {v1, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1b} :catch_45

    .line 474
    :goto_1b
    const-string v5, "TransmitClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " times"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->isConnection(Ljava/net/HttpURLConnection;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 476
    iget-object v5, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/nfc/handover/TransmitClient;->isConnected:Z

    .line 484
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    :goto_44
    return-object v1

    .line 468
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    :catch_45
    move-exception v3

    .line 470
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1b

    .line 479
    .end local v3    # "e1":Ljava/io/IOException;
    :cond_4a
    add-int/lit8 v4, v4, 0x1

    .line 480
    const/16 v5, 0xa

    if-le v4, v5, :cond_5e

    .line 482
    const-string v5, "TransmitClient"

    const-string v6, "connect is error"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v5, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/nfc/handover/TransmitClient;->isConnected:Z

    .line 484
    const/4 v1, 0x0

    goto :goto_44

    .line 487
    :cond_5e
    const-wide/16 v5, 0x3e8

    :try_start_60
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_1

    .line 488
    :catch_64
    move-exception v2

    .line 489
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "TransmitClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reConnect IOException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private sendFileProgressBroadcast()V
    .registers 7

    .prologue
    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->isSendProgress:Z

    .line 508
    iget-object v0, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/nfc/handover/TransmitClient$GetFileThread$UpdateFileProgressTask;

    iget-object v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->progress:Landroid/content/Intent;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/handover/TransmitClient$GetFileThread$UpdateFileProgressTask;-><init>(Lcom/android/nfc/handover/TransmitClient$GetFileThread;Landroid/content/Intent;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 509
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 171
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 539
    iget-object v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    iget-object v3, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->ip:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->downloadFiles(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;)Z

    move-result v1

    .line 540
    .local v1, "success":Z
    invoke-direct {p0}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->cancelTimer()V

    .line 542
    invoke-direct {p0}, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->isReceiveSucceed()Z

    move-result v2

    if-eqz v2, :cond_2b

    if-eqz v1, :cond_2b

    .line 545
    const-string v2, "TransmitClient"

    const-string v3, "isReceiveSucceed ACTION_HANDOVER_TRANSFER_FINISG"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 547
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.nfc.handover.action.HANDOVER_TRANSFER_FINISH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    iget-object v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    invoke-static {v2, v0}, Lcom/android/nfc/handover/TransmitClient;->access$100(Lcom/android/nfc/handover/TransmitClient;Landroid/content/Intent;)V

    .line 559
    :goto_29
    const/4 v2, 0x0

    return-object v2

    .line 552
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2b
    const-string v2, "TransmitClient"

    const-string v3, "is not ReceiveSucceed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 554
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v2, "com.android.nfc.handover.extra.HANDOVER_TRANSFER_STATUS"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    iget-object v2, p0, Lcom/android/nfc/handover/TransmitClient$GetFileThread;->this$0:Lcom/android/nfc/handover/TransmitClient;

    invoke-static {v2, v0}, Lcom/android/nfc/handover/TransmitClient;->access$100(Lcom/android/nfc/handover/TransmitClient;Landroid/content/Intent;)V

    goto :goto_29
.end method
