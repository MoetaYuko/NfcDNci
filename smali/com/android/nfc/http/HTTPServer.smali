.class public Lcom/android/nfc/http/HTTPServer;
.super Ljava/lang/Object;
.source "HTTPServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DEFAULT_PORT:I = 0x50

.field public static final DEFAULT_TIMEOUT:I = 0x13880

.field public static final NAME:Ljava/lang/String; = "CyberLinkJava"

.field public static final TAG:Ljava/lang/String; = "HTTPServer"

.field public static final VERSION:Ljava/lang/String; = "1.8"


# instance fields
.field private bindAddr:Ljava/net/InetAddress;

.field private bindPort:I

.field private httpServerThread:Ljava/lang/Thread;

.field private mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

.field private serverSock:Ljava/net/ServerSocket;

.field protected timeout:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    .line 91
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 92
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/http/HTTPServer;->bindPort:I

    .line 98
    const v0, 0x13880

    iput v0, p0, Lcom/android/nfc/http/HTTPServer;->timeout:I

    .line 331
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 85
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/handover/TransmitManager;)V
    .registers 4
    .param p1, "transmitManager"    # Lcom/android/nfc/handover/TransmitManager;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    .line 91
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 92
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/http/HTTPServer;->bindPort:I

    .line 98
    const v0, 0x13880

    iput v0, p0, Lcom/android/nfc/http/HTTPServer;->timeout:I

    .line 331
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 79
    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 80
    iput-object p1, p0, Lcom/android/nfc/http/HTTPServer;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    .line 81
    return-void
.end method

.method public static getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 69
    const-string v2, "os.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "osName":Ljava/lang/String;
    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "osVer":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UPnP/1.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CyberLinkJava"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1.8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private httpGetRequestRecieved(Lcom/android/nfc/http/HTTPRequest;)V
    .registers 6
    .param p1, "httpReq"    # Lcom/android/nfc/http/HTTPRequest;

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "uri":Ljava/lang/String;
    const-string v1, "HTTPServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpGetRequestRecieved uri =="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPServer;->contentExportRequestRecieved(Lcom/android/nfc/http/HTTPRequest;)V

    .line 316
    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 215
    iget-object v4, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v4, :cond_7

    move-object v2, v3

    .line 238
    :goto_6
    return-object v2

    .line 218
    :cond_7
    const/4 v2, 0x0

    .line 220
    .local v2, "sock":Ljava/net/Socket;
    :try_start_8
    iget-object v4, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 221
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPServer;->getTimeout()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_15
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_15} :catch_16
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_15} :catch_26

    goto :goto_6

    .line 223
    :catch_16
    move-exception v0

    .line 226
    .local v0, "e":Ljava/net/SocketException;
    if-eqz v2, :cond_1c

    .line 227
    :try_start_19
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_21

    .line 233
    :cond_1c
    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v3

    .line 234
    goto :goto_6

    .line 229
    :catch_21
    move-exception v1

    .line 231
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c

    .line 235
    .end local v0    # "e":Ljava/net/SocketException;
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_26
    move-exception v0

    .line 237
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v3

    .line 238
    goto :goto_6
.end method

.method public addRequestListener(Lcom/android/nfc/http/HTTPRequestListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/nfc/http/HTTPRequestListener;

    .prologue
    .line 116
    return-void
.end method

.method public close()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPServer;->stop()Z

    .line 199
    iget-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-nez v3, :cond_a

    .line 210
    :goto_9
    return v1

    .line 201
    :cond_a
    const-string v3, "HTTPServer"

    const-string v4, " http server close"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :try_start_11
    iget-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->close()V

    .line 204
    const-string v3, "HTTPServer"

    const-string v4, "http server ready close"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 206
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 207
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/nfc/http/HTTPServer;->bindPort:I
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_26} :catch_27

    goto :goto_9

    .line 209
    :catch_27
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v1, v2

    .line 210
    goto :goto_9
.end method

.method public contentExportRequestRecieved(Lcom/android/nfc/http/HTTPRequest;)V
    .registers 15
    .param p1, "httpReq"    # Lcom/android/nfc/http/HTTPRequest;

    .prologue
    .line 252
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, "uri":Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 254
    .local v7, "mUri":Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/nfc/http/HTTPServer;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    invoke-virtual {v10}, Lcom/android/nfc/handover/TransmitManager;->getSelectHandover()Lcom/android/nfc/handover/Handover;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/android/nfc/handover/HandoverManager;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "filePath":Ljava/lang/String;
    if-nez v5, :cond_29

    .line 257
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v5

    .line 259
    :cond_29
    const-string v10, "HTTPServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uri = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v10, "HTTPServer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "path = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v8, "sendFile":Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 264
    .local v2, "contentLen":J
    const/4 v0, 0x0

    .line 265
    .local v0, "contentIn":Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 269
    :try_start_65
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6a} :catch_d5
    .catchall {:try_start_65 .. :try_end_6a} :catchall_c6

    .line 275
    .end local v0    # "contentIn":Ljava/io/InputStream;
    .local v1, "contentIn":Ljava/io/InputStream;
    :try_start_6a
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->isHeadRequest()Z

    move-result v10

    if-nez v10, :cond_a6

    .line 276
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-gtz v10, :cond_a6

    .line 277
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->returnBadRequest()Z

    .line 278
    const-string v10, "HTTPServer"

    const-string v11, "contentExportRequestRecieved contentLen <= 0 || contentIn == null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_80} :catch_91
    .catchall {:try_start_6a .. :try_end_80} :catchall_d2

    .line 281
    if-eqz v1, :cond_85

    .line 282
    :try_start_82
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_8c
    .catchall {:try_start_82 .. :try_end_85} :catchall_d2

    .line 300
    :cond_85
    :goto_85
    if-eqz v1, :cond_8a

    .line 301
    :try_start_87
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_a1

    :cond_8a
    :goto_8a
    move-object v0, v1

    .line 309
    .end local v1    # "contentIn":Ljava/io/InputStream;
    .restart local v0    # "contentIn":Ljava/io/InputStream;
    :cond_8b
    :goto_8b
    return-void

    .line 283
    .end local v0    # "contentIn":Ljava/io/InputStream;
    .restart local v1    # "contentIn":Ljava/io/InputStream;
    :catch_8c
    move-exception v4

    .line 284
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8d
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_91
    .catchall {:try_start_8d .. :try_end_90} :catchall_d2

    goto :goto_85

    .line 296
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_91
    move-exception v4

    move-object v0, v1

    .line 297
    .end local v1    # "contentIn":Ljava/io/InputStream;
    .restart local v0    # "contentIn":Ljava/io/InputStream;
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_93
    :try_start_93
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_c6

    .line 300
    if-eqz v0, :cond_8b

    .line 301
    :try_start_98
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c

    goto :goto_8b

    .line 303
    :catch_9c
    move-exception v4

    .line 305
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8b

    .line 303
    .end local v0    # "contentIn":Ljava/io/InputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "contentIn":Ljava/io/InputStream;
    :catch_a1
    move-exception v4

    .line 305
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8a

    .line 290
    .end local v4    # "e":Ljava/io/IOException;
    :cond_a6
    :try_start_a6
    new-instance v6, Lcom/android/nfc/http/HTTPResponse;

    invoke-direct {v6}, Lcom/android/nfc/http/HTTPResponse;-><init>()V

    .line 291
    .local v6, "httpRes":Lcom/android/nfc/http/HTTPResponse;
    const/16 v10, 0xc8

    invoke-virtual {v6, v10}, Lcom/android/nfc/http/HTTPResponse;->setStatusCode(I)V

    .line 292
    invoke-virtual {v6, v2, v3}, Lcom/android/nfc/http/HTTPPacket;->setContentLength(J)V

    .line 293
    invoke-virtual {v6, v1}, Lcom/android/nfc/http/HTTPPacket;->setContentInputStream(Ljava/io/InputStream;)V

    .line 294
    invoke-virtual {p1, v6}, Lcom/android/nfc/http/HTTPRequest;->post(Lcom/android/nfc/http/HTTPResponse;)Z
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_b9} :catch_91
    .catchall {:try_start_a6 .. :try_end_b9} :catchall_d2

    .line 300
    if-eqz v1, :cond_be

    .line 301
    :try_start_bb
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_c0

    :cond_be
    move-object v0, v1

    .line 306
    .end local v1    # "contentIn":Ljava/io/InputStream;
    .restart local v0    # "contentIn":Ljava/io/InputStream;
    goto :goto_8b

    .line 303
    .end local v0    # "contentIn":Ljava/io/InputStream;
    .restart local v1    # "contentIn":Ljava/io/InputStream;
    :catch_c0
    move-exception v4

    .line 305
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 307
    .end local v1    # "contentIn":Ljava/io/InputStream;
    .restart local v0    # "contentIn":Ljava/io/InputStream;
    goto :goto_8b

    .line 299
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "httpRes":Lcom/android/nfc/http/HTTPResponse;
    :catchall_c6
    move-exception v10

    .line 300
    :goto_c7
    if-eqz v0, :cond_cc

    .line 301
    :try_start_c9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cc} :catch_cd

    .line 306
    :cond_cc
    :goto_cc
    throw v10

    .line 303
    :catch_cd
    move-exception v4

    .line 305
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_cc

    .line 299
    .end local v0    # "contentIn":Ljava/io/InputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "contentIn":Ljava/io/InputStream;
    :catchall_d2
    move-exception v10

    move-object v0, v1

    .end local v1    # "contentIn":Ljava/io/InputStream;
    .restart local v0    # "contentIn":Ljava/io/InputStream;
    goto :goto_c7

    .line 296
    :catch_d5
    move-exception v4

    goto :goto_93
.end method

.method public getBindAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_7

    .line 106
    const-string v0, ""

    .line 107
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getBindPort()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lcom/android/nfc/http/HTTPServer;->bindPort:I

    return v0
.end method

.method public getServerSock()Ljava/net/ServerSocket;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public declared-synchronized getTimeout()I
    .registers 2

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/android/nfc/http/HTTPServer;->timeout:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isOpened()Z
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public open(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v2, 0x1

    .line 163
    const-string v3, "HTTPServer"

    const-string v4, "http open staring"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v3, :cond_14

    .line 165
    const-string v3, "HTTPServer"

    const-string v4, "serverSock has open"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_13
    return v2

    .line 170
    :cond_14
    :try_start_14
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 171
    const-string v3, "HTTPServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addr ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput p2, p0, Lcom/android/nfc/http/HTTPServer;->bindPort:I

    .line 174
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3}, Ljava/net/ServerSocket;-><init>()V

    iput-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 175
    iget-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 176
    iget-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    iget v6, p0, Lcom/android/nfc/http/HTTPServer;->bindPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_51} :catch_59

    .line 193
    const-string v3, "HTTPServer"

    const-string v4, " open seccess"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 177
    :catch_59
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "HTTPServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open String addr IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v2, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_8e

    .line 181
    :try_start_82
    const-string v2, "HTTPServer"

    const-string v3, "serverSock has IOException and not null,we should close it"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_8e} :catch_97

    .line 189
    :cond_8e
    :goto_8e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 190
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    .line 191
    const/4 v2, 0x0

    goto/16 :goto_13

    .line 184
    :catch_97
    move-exception v1

    .line 186
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8e
.end method

.method public open(Ljava/net/InetAddress;I)Z
    .registers 10
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 147
    iget-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;

    if-eqz v3, :cond_7

    .line 159
    :goto_6
    return v1

    .line 150
    :cond_7
    :try_start_7
    iput-object p1, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    .line 151
    const-string v3, "HTTPServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addr ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v3, Ljava/net/ServerSocket;

    iget v4, p0, Lcom/android/nfc/http/HTTPServer;->bindPort:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/nfc/http/HTTPServer;->bindAddr:Ljava/net/InetAddress;

    invoke-direct {v3, v4, v5, v6}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lcom/android/nfc/http/HTTPServer;->serverSock:Ljava/net/ServerSocket;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_33} :catch_3b

    .line 158
    const-string v2, "HTTPServer"

    const-string v3, " open seccess"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 153
    :catch_3b
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "HTTPServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open String addr IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    .line 156
    goto :goto_6
.end method

.method public performRequestListener(Lcom/android/nfc/http/HTTPRequest;)V
    .registers 3
    .param p1, "httpReq"    # Lcom/android/nfc/http/HTTPRequest;

    .prologue
    .line 319
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->isGetRequest()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 320
    invoke-direct {p0, p1}, Lcom/android/nfc/http/HTTPServer;->httpGetRequestRecieved(Lcom/android/nfc/http/HTTPRequest;)V

    .line 325
    :goto_9
    return-void

    .line 324
    :cond_a
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->returnBadRequest()Z

    goto :goto_9
.end method

.method public removeRequestListener(Lcom/android/nfc/http/HTTPRequestListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/android/nfc/http/HTTPRequestListener;

    .prologue
    .line 120
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPServer;->isOpened()Z

    move-result v4

    if-nez v4, :cond_e

    .line 335
    const-string v4, "HTTPServer"

    const-string v5, "Http Server already opened"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_d
    return-void

    .line 339
    :cond_e
    const-string v4, "HTTPServer"

    const-string v5, "Http Server running"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 343
    .local v3, "thisThread":Ljava/lang/Thread;
    :goto_19
    iget-object v4, p0, Lcom/android/nfc/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    if-ne v4, v3, :cond_31

    .line 344
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 347
    :try_start_20
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPServer;->accept()Ljava/net/Socket;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_2d

    move-result-object v2

    .line 352
    .local v2, "sock":Ljava/net/Socket;
    new-instance v1, Lcom/android/nfc/http/HTTPServerThread;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/http/HTTPServerThread;-><init>(Lcom/android/nfc/http/HTTPServer;Ljava/net/Socket;)V

    .line 353
    .local v1, "httpServThread":Lcom/android/nfc/http/HTTPServerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_19

    .line 348
    .end local v1    # "httpServThread":Lcom/android/nfc/http/HTTPServerThread;
    .end local v2    # "sock":Ljava/net/Socket;
    :catch_2d
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 356
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    const-string v4, "HTTPServer"

    const-string v5, "Http Server over"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method public declared-synchronized setTimeout(I)V
    .registers 3
    .param p1, "timeout"    # I

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/android/nfc/http/HTTPServer;->timeout:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()Z
    .registers 4

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Cyber.HTTPServer/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "name":Ljava/lang/StringBuffer;
    const-string v1, "HTTPServer"

    const-string v2, "Http Server satrt "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v1, Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/nfc/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 363
    iget-object v1, p0, Lcom/android/nfc/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 364
    const/4 v1, 0x1

    return v1
.end method

.method public stop()Z
    .registers 2

    .prologue
    .line 368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/http/HTTPServer;->httpServerThread:Ljava/lang/Thread;

    .line 369
    const/4 v0, 0x1

    return v0
.end method
