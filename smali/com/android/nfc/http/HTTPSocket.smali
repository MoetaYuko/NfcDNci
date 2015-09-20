.class public Lcom/android/nfc/http/HTTPSocket;
.super Ljava/lang/Object;
.source "HTTPSocket.java"


# instance fields
.field private sockIn:Ljava/io/InputStream;

.field private sockOut:Ljava/io/OutputStream;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/android/nfc/http/HTTPSocket;)V
    .registers 3
    .param p1, "socket"    # Lcom/android/nfc/http/HTTPSocket;

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 91
    iput-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 92
    iput-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 52
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/nfc/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 53
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/nfc/http/HTTPSocket;->setInputStream(Ljava/io/InputStream;)V

    .line 54
    invoke-direct {p1}, Lcom/android/nfc/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/nfc/http/HTTPSocket;->setOutputStream(Ljava/io/OutputStream;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 91
    iput-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 92
    iput-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/nfc/http/HTTPSocket;->setSocket(Ljava/net/Socket;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPSocket;->open()Z

    .line 49
    return-void
.end method

.method private getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method private post(Lcom/android/nfc/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z
    .registers 27
    .param p1, "httpRes"    # Lcom/android/nfc/http/HTTPResponse;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "contentOffset"    # J
    .param p5, "contentLength"    # J
    .param p7, "isOnlyHeader"    # Z

    .prologue
    .line 209
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/nfc/http/HTTPPacket;->setDate(Ljava/util/Calendar;)V

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    .line 213
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_d
    move-object/from16 v0, p1

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/http/HTTPPacket;->setContentLength(J)V

    .line 218
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/http/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\r\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 219
    .local v14, "resHeader":Ljava/lang/String;
    const-string v15, "US_ASCII"

    invoke-virtual {v14, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/io/OutputStream;->write([B)V

    .line 222
    const/4 v15, 0x1

    move/from16 v0, p7

    if-ne v0, v15, :cond_49

    .line 223
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_3c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_3c} :catch_fd
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_3c} :catch_110
    .catchall {:try_start_d .. :try_end_3c} :catchall_123

    .line 224
    const/4 v15, 0x1

    .line 271
    :try_start_3d
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 272
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_43} :catch_44

    .line 278
    .end local v14    # "resHeader":Ljava/lang/String;
    :goto_43
    return v15

    .line 273
    .restart local v14    # "resHeader":Ljava/lang/String;
    :catch_44
    move-exception v5

    .line 275
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_43

    .line 227
    .end local v5    # "e":Ljava/io/IOException;
    :cond_49
    :try_start_49
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/http/HTTPPacket;->isChunked()Z

    move-result v6

    .line 229
    .local v6, "isChunkedResponse":Z
    const-wide/16 v15, 0x0

    cmp-long v15, v15, p3

    if-gez v15, :cond_68

    .line 230
    invoke-virtual/range {p2 .. p4}, Ljava/io/InputStream;->skip(J)J
    :try_end_56
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_49 .. :try_end_56} :catch_fd
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_56} :catch_110
    .catchall {:try_start_49 .. :try_end_56} :catchall_123

    move-result-wide v15

    cmp-long v15, v15, p3

    if-eqz v15, :cond_68

    .line 231
    const/4 v15, 0x0

    .line 271
    :try_start_5c
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 272
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_62} :catch_63

    goto :goto_43

    .line 273
    :catch_63
    move-exception v5

    .line 275
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_43

    .line 234
    .end local v5    # "e":Ljava/io/IOException;
    :cond_68
    :try_start_68
    invoke-static {}, Lcom/android/nfc/http/HTTP;->getChunkSize()I

    move-result v4

    .line 235
    .local v4, "chunkSize":I
    new-array v8, v4, [B

    .line 236
    .local v8, "readBuf":[B
    const-wide/16 v9, 0x0

    .line 237
    .local v9, "readCnt":J
    int-to-long v15, v4

    cmp-long v15, v15, p5

    if-gez v15, :cond_cd

    int-to-long v12, v4

    .line 238
    .local v12, "readSize":J
    :goto_76
    const/4 v15, 0x0

    long-to-int v0, v12

    move/from16 v16, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v15, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 239
    .local v11, "readLen":I
    :goto_82
    if-lez v11, :cond_d3

    cmp-long v15, v9, p5

    if-gez v15, :cond_d3

    .line 240
    const/4 v15, 0x1

    if-ne v6, v15, :cond_a4

    .line 243
    int-to-long v15, v11

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "chunSizeBuf":Ljava/lang/String;
    const-string v15, "US_ASCII"

    invoke-virtual {v3, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/io/OutputStream;->write([B)V

    .line 245
    const-string v15, "\r\n"

    const-string v16, "US_ASCII"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/io/OutputStream;->write([B)V

    .line 247
    .end local v3    # "chunSizeBuf":Ljava/lang/String;
    :cond_a4
    const/4 v15, 0x0

    invoke-virtual {v7, v8, v15, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 248
    const/4 v15, 0x1

    if-ne v6, v15, :cond_b6

    .line 249
    const-string v15, "\r\n"

    const-string v16, "US_ASCII"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/io/OutputStream;->write([B)V

    .line 250
    :cond_b6
    int-to-long v15, v11

    add-long/2addr v9, v15

    .line 251
    int-to-long v15, v4

    sub-long v17, p5, v9

    cmp-long v15, v15, v17

    if-gez v15, :cond_d0

    int-to-long v12, v4

    .line 252
    :goto_c0
    const/4 v15, 0x0

    long-to-int v0, v12

    move/from16 v16, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v8, v15, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    goto :goto_82

    .end local v11    # "readLen":I
    .end local v12    # "readSize":J
    :cond_cd
    move-wide/from16 v12, p5

    .line 237
    goto :goto_76

    .line 251
    .restart local v11    # "readLen":I
    .restart local v12    # "readSize":J
    :cond_d0
    sub-long v12, p5, v9

    goto :goto_c0

    .line 255
    :cond_d3
    const/4 v15, 0x1

    if-ne v6, v15, :cond_ec

    .line 256
    const-string v15, "0"

    const-string v16, "US_ASCII"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/io/OutputStream;->write([B)V

    .line 257
    const-string v15, "\r\n"

    const-string v16, "US_ASCII"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/io/OutputStream;->write([B)V

    .line 260
    :cond_ec
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_ef
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_68 .. :try_end_ef} :catch_fd
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_ef} :catch_110
    .catchall {:try_start_68 .. :try_end_ef} :catchall_123

    .line 271
    :try_start_ef
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 272
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f5} :catch_f8

    .line 278
    :goto_f5
    const/4 v15, 0x1

    goto/16 :goto_43

    .line 273
    :catch_f8
    move-exception v5

    .line 275
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f5

    .line 261
    .end local v4    # "chunkSize":I
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "isChunkedResponse":Z
    .end local v8    # "readBuf":[B
    .end local v9    # "readCnt":J
    .end local v11    # "readLen":I
    .end local v12    # "readSize":J
    .end local v14    # "resHeader":Ljava/lang/String;
    :catch_fd
    move-exception v5

    .line 263
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_fe
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_123

    .line 264
    const/4 v15, 0x0

    .line 271
    :try_start_102
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 272
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_108} :catch_10a

    goto/16 :goto_43

    .line 273
    :catch_10a
    move-exception v5

    .line 275
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_43

    .line 265
    .end local v5    # "e":Ljava/io/IOException;
    :catch_110
    move-exception v5

    .line 267
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_111
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_114
    .catchall {:try_start_111 .. :try_end_114} :catchall_123

    .line 268
    const/4 v15, 0x0

    .line 271
    :try_start_115
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 272
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_11b} :catch_11d

    goto/16 :goto_43

    .line 273
    :catch_11d
    move-exception v5

    .line 275
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_43

    .line 270
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_123
    move-exception v15

    .line 271
    :try_start_124
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    .line 272
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_12a
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_12a} :catch_12b

    .line 276
    :goto_12a
    throw v15

    .line 273
    :catch_12b
    move-exception v5

    .line 275
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_12a
.end method

.method private post(Lcom/android/nfc/http/HTTPResponse;[BJJZ)Z
    .registers 15
    .param p1, "httpRes"    # Lcom/android/nfc/http/HTTPResponse;
    .param p2, "content"    # [B
    .param p3, "contentOffset"    # J
    .param p5, "contentLength"    # J
    .param p7, "isOnlyHeader"    # Z

    .prologue
    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/nfc/http/HTTPPacket;->setDate(Ljava/util/Calendar;)V

    .line 154
    invoke-direct {p0}, Lcom/android/nfc/http/HTTPSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 156
    .local v3, "out":Ljava/io/OutputStream;
    invoke-virtual {p1, p5, p6}, Lcom/android/nfc/http/HTTPPacket;->setContentLength(J)V

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPResponse;->getHeader()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "resHeader":Ljava/lang/String;
    :try_start_25
    const-string v5, "US_ASCII"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 168
    const/4 v5, 0x1

    if-ne p7, v5, :cond_36

    .line 169
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 170
    const/4 v5, 0x1

    .line 203
    :goto_35
    return v5

    .line 173
    :cond_36
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPPacket;->isChunked()Z

    move-result v2

    .line 175
    .local v2, "isChunkedResponse":Z
    const/4 v5, 0x1

    if-ne v2, v5, :cond_55

    .line 178
    invoke-static {p5, p6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "chunSizeBuf":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 180
    const-string v5, "\r\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 183
    .end local v0    # "chunSizeBuf":Ljava/lang/String;
    :cond_55
    long-to-int v5, p3

    long-to-int v6, p5

    invoke-virtual {v3, p2, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 185
    const/4 v5, 0x1

    if-ne v2, v5, :cond_7e

    .line 186
    const-string v5, "\r\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 187
    const-string v5, "0"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 188
    const-string v5, "\r\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 191
    :cond_7e
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_81
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25 .. :try_end_81} :catch_83
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_81} :catch_8c

    .line 203
    const/4 v5, 0x1

    goto :goto_35

    .line 192
    .end local v2    # "isChunkedResponse":Z
    :catch_83
    move-exception v1

    .line 194
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    const/4 v5, 0x0

    goto :goto_35

    .line 197
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_8c
    move-exception v1

    .line 199
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    const/4 v5, 0x0

    goto :goto_35
.end method

.method private setInputStream(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/nfc/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 96
    return-void
.end method

.method private setOutputStream(Ljava/io/OutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/nfc/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    .line 104
    return-void
.end method

.method private setSocket(Ljava/net/Socket;)V
    .registers 2
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/nfc/http/HTTPSocket;->socket:Ljava/net/Socket;

    .line 69
    return-void
.end method


# virtual methods
.method public close()Z
    .registers 4

    .prologue
    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    if-eqz v2, :cond_9

    .line 129
    iget-object v2, p0, Lcom/android/nfc/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 130
    :cond_9
    iget-object v2, p0, Lcom/android/nfc/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    if-eqz v2, :cond_12

    .line 131
    iget-object v2, p0, Lcom/android/nfc/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 133
    :cond_12
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 134
    .local v1, "sc":Ljava/net/Socket;
    if-eqz v1, :cond_1b

    .line 135
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_1d

    .line 142
    :cond_1b
    const/4 v2, 0x1

    .end local v1    # "sc":Ljava/net/Socket;
    :goto_1c
    return v2

    .line 138
    :catch_1d
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPSocket;->close()Z

    .line 59
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/nfc/http/HTTPSocket;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public open()Z
    .registers 4

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPSocket;->getSocket()Ljava/net/Socket;

    move-result-object v1

    .line 117
    .local v1, "sock":Ljava/net/Socket;
    :try_start_4
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/http/HTTPSocket;->sockIn:Ljava/io/InputStream;

    .line 118
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/http/HTTPSocket;->sockOut:Ljava/io/OutputStream;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_12

    .line 123
    const/4 v2, 0x1

    :goto_11
    return v2

    .line 119
    :catch_12
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public post(Lcom/android/nfc/http/HTTPResponse;JJZ)Z
    .registers 15
    .param p1, "httpRes"    # Lcom/android/nfc/http/HTTPResponse;
    .param p2, "contentOffset"    # J
    .param p4, "contentLength"    # J
    .param p6, "isOnlyHeader"    # Z

    .prologue
    .line 283
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPPacket;->hasContentInputStream()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 284
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPPacket;->getContentInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/nfc/http/HTTPSocket;->post(Lcom/android/nfc/http/HTTPResponse;Ljava/io/InputStream;JJZ)Z

    move-result v0

    .line 285
    :goto_14
    return v0

    :cond_15
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPPacket;->getContent()[B

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/nfc/http/HTTPSocket;->post(Lcom/android/nfc/http/HTTPResponse;[BJJZ)Z

    move-result v0

    goto :goto_14
.end method
