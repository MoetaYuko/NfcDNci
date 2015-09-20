.class public Lcom/android/nfc/http/HTTPRequest;
.super Lcom/android/nfc/http/HTTPPacket;
.source "HTTPRequest.java"


# instance fields
.field private httpSocket:Lcom/android/nfc/http/HTTPSocket;

.field private method:Ljava/lang/String;

.field private postSocket:Ljava/net/Socket;

.field private requestHost:Ljava/lang/String;

.field private requestPort:I

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/nfc/http/HTTPPacket;-><init>()V

    .line 99
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->method:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/http/HTTPRequest;->requestPort:I

    .line 227
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->httpSocket:Lcom/android/nfc/http/HTTPSocket;

    .line 363
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 83
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/http/HTTPSocket;)V
    .registers 3
    .param p1, "httpSock"    # Lcom/android/nfc/http/HTTPSocket;

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/nfc/http/HTTPRequest;-><init>(Ljava/io/InputStream;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPRequest;->setSocket(Lcom/android/nfc/http/HTTPSocket;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/nfc/http/HTTPPacket;-><init>(Ljava/io/InputStream;)V

    .line 99
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->method:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 203
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 213
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/http/HTTPRequest;->requestPort:I

    .line 227
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->httpSocket:Lcom/android/nfc/http/HTTPSocket;

    .line 363
    iput-object v1, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 88
    return-void
.end method


# virtual methods
.method public getFirstLineString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getHTTPVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->hasFirstLine()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 273
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/nfc/http/HTTPPacket;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public getHeader()Ljava/lang/String;
    .registers 4

    .prologue
    .line 286
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 288
    .local v1, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getFirstLineString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getHeaderString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "headerString":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLocalAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getSocket()Lcom/android/nfc/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPSocket;->getLocalAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getSocket()Lcom/android/nfc/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->method:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 107
    iget-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->method:Ljava/lang/String;

    .line 108
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getParameterList()Lcom/android/nfc/http/ParameterList;
    .registers 11

    .prologue
    .line 169
    new-instance v5, Lcom/android/nfc/http/ParameterList;

    invoke-direct {v5}, Lcom/android/nfc/http/ParameterList;-><init>()V

    .line 170
    .local v5, "paramList":Lcom/android/nfc/http/ParameterList;
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "uri":Ljava/lang/String;
    const/16 v8, 0x3f

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 172
    .local v4, "paramIdx":I
    if-gez v4, :cond_12

    .line 183
    :cond_11
    return-object v5

    .line 174
    :cond_12
    :goto_12
    if-lez v4, :cond_11

    .line 175
    const/16 v8, 0x3d

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 176
    .local v0, "eqIdx":I
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v6, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "name":Ljava/lang/String;
    const/16 v8, 0x26

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 178
    .local v2, "nextParamIdx":I
    add-int/lit8 v9, v0, 0x1

    if-lez v2, :cond_3d

    move v8, v2

    :goto_2f
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "value":Ljava/lang/String;
    new-instance v3, Lcom/android/nfc/http/Parameter;

    invoke-direct {v3, v1, v7}, Lcom/android/nfc/http/Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v3, "param":Lcom/android/nfc/http/Parameter;
    invoke-virtual {v5, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 181
    move v4, v2

    .line 182
    goto :goto_12

    .line 178
    .end local v3    # "param":Lcom/android/nfc/http/Parameter;
    .end local v7    # "value":Ljava/lang/String;
    :cond_3d
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_2f
.end method

.method public getParameterValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getParameterList()Lcom/android/nfc/http/ParameterList;

    move-result-object v0

    .line 188
    .local v0, "paramList":Lcom/android/nfc/http/ParameterList;
    invoke-virtual {v0, p1}, Lcom/android/nfc/http/ParameterList;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRequestHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->requestHost:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestPort()I
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Lcom/android/nfc/http/HTTPRequest;->requestPort:I

    return v0
.end method

.method public getSocket()Lcom/android/nfc/http/HTTPSocket;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->httpSocket:Lcom/android/nfc/http/HTTPSocket;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->uri:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 160
    iget-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 161
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->getFirstLineToken(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public isGetRequest()Z
    .registers 2

    .prologue
    .line 117
    const-string v0, "GET"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHeadRequest()Z
    .registers 2

    .prologue
    .line 125
    const-string v0, "HEAD"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKeepAlive()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 301
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->isCloseConnection()Z

    move-result v4

    if-ne v4, v3, :cond_9

    .line 314
    :cond_8
    :goto_8
    return v2

    .line 303
    :cond_9
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->isKeepAliveConnection()Z

    move-result v4

    if-ne v4, v3, :cond_11

    move v2, v3

    .line 304
    goto :goto_8

    .line 305
    :cond_11
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getHTTPVersion()Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "httpVer":Ljava/lang/String;
    const/4 v1, 0x0

    .line 307
    .local v1, "isHTTP10":Z
    const-string v4, "1.0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_24

    .line 308
    const/4 v1, 0x1

    .line 312
    :goto_20
    if-eq v1, v3, :cond_8

    move v2, v3

    .line 314
    goto :goto_8

    .line 310
    :cond_24
    const/4 v1, 0x0

    goto :goto_20
.end method

.method public isMethod(Ljava/lang/String;)Z
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "headerMethod":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isNotifyRequest()Z
    .registers 2

    .prologue
    .line 137
    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPostRequest()Z
    .registers 2

    .prologue
    .line 121
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSOAPAction()Z
    .registers 2

    .prologue
    .line 196
    const-string v0, "SOAPACTION"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubscribeRequest()Z
    .registers 2

    .prologue
    .line 129
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUnsubscribeRequest()Z
    .registers 2

    .prologue
    .line 133
    const-string v0, "UNSUBSCRIBE"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->isMethod(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parseRequestLine(Ljava/lang/String;)Z
    .registers 5
    .param p1, "lineStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 254
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, " "

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-nez v2, :cond_f

    .line 264
    :cond_e
    :goto_e
    return v1

    .line 257
    :cond_f
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/http/HTTPRequest;->setMethod(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 260
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/http/HTTPRequest;->setURI(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 263
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 264
    const/4 v1, 0x1

    goto :goto_e
.end method

.method public post(Ljava/lang/String;I)Lcom/android/nfc/http/HTTPResponse;
    .registers 16
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 369
    new-instance v4, Lcom/android/nfc/http/HTTPResponse;

    invoke-direct {v4}, Lcom/android/nfc/http/HTTPResponse;-><init>()V

    .line 370
    .local v4, "httpRes":Lcom/android/nfc/http/HTTPResponse;
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/http/HTTPPacket;->setHost(Ljava/lang/String;I)V

    .line 373
    const-string v11, "close"

    invoke-virtual {p0, v11}, Lcom/android/nfc/http/HTTPPacket;->setConnection(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->isHeadRequest()Z

    move-result v7

    .line 377
    .local v7, "isHeaderRequest":Z
    const/4 v8, 0x0

    .line 378
    .local v8, "out":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 380
    .local v5, "in":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 383
    .local v9, "pout":Ljava/io/PrintStream;
    :try_start_14
    iget-object v11, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-nez v11, :cond_27

    .line 384
    new-instance v11, Ljava/net/Socket;

    invoke-direct {v11, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v11, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 385
    iget-object v11, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    const v12, 0x13880

    invoke-virtual {v11, v12}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 388
    :cond_27
    iget-object v11, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    .line 390
    new-instance v10, Ljava/io/PrintStream;

    const/4 v11, 0x0

    const-string v12, "US_ASCII"

    invoke-direct {v10, v8, v11, v12}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    :try_end_35
    .catch Ljava/net/SocketException; {:try_start_14 .. :try_end_35} :catch_a3
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_35} :catch_c5
    .catchall {:try_start_14 .. :try_end_35} :catchall_f1

    .line 392
    .end local v9    # "pout":Ljava/io/PrintStream;
    .local v10, "pout":Ljava/io/PrintStream;
    :try_start_35
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 393
    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->isChunked()Z

    move-result v6

    .line 397
    .local v6, "isChunkedRequest":Z
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getContentString()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "content":Ljava/lang/String;
    const/4 v2, 0x0

    .line 399
    .local v2, "contentLength":I
    if-eqz v1, :cond_50

    .line 400
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 402
    :cond_50
    if-lez v2, :cond_6d

    .line 403
    const/4 v11, 0x1

    if-ne v6, v11, :cond_62

    .line 406
    int-to-long v11, v2

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "chunSizeBuf":Ljava/lang/String;
    invoke-virtual {v10, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 408
    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 410
    .end local v0    # "chunSizeBuf":Ljava/lang/String;
    :cond_62
    invoke-virtual {v10, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 411
    const/4 v11, 0x1

    if-ne v6, v11, :cond_6d

    .line 412
    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 415
    :cond_6d
    const/4 v11, 0x1

    if-ne v6, v11, :cond_7a

    .line 416
    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 417
    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 420
    :cond_7a
    invoke-virtual {v10}, Ljava/io/PrintStream;->flush()V

    .line 422
    iget-object v11, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 423
    invoke-virtual {v4, v5, v7}, Lcom/android/nfc/http/HTTPPacket;->set(Ljava/io/InputStream;Z)Z
    :try_end_86
    .catch Ljava/net/SocketException; {:try_start_35 .. :try_end_86} :catch_146
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_86} :catch_143
    .catchall {:try_start_35 .. :try_end_86} :catchall_140

    .line 434
    if-eqz v5, :cond_8b

    .line 436
    :try_start_88
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_12e

    .line 442
    :cond_8b
    :goto_8b
    if-eqz v8, :cond_90

    .line 444
    :try_start_8d
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_134

    .line 451
    :cond_90
    :goto_90
    iget-object v11, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-eqz v11, :cond_9c

    .line 453
    :try_start_94
    iget-object v11, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_99} :catch_13a

    .line 458
    :goto_99
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 462
    :cond_9c
    if-eqz v10, :cond_a1

    .line 463
    invoke-virtual {v10}, Ljava/io/PrintStream;->close()V

    :cond_a1
    move-object v9, v10

    .line 471
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "contentLength":I
    .end local v6    # "isChunkedRequest":Z
    .end local v10    # "pout":Ljava/io/PrintStream;
    .restart local v9    # "pout":Ljava/io/PrintStream;
    :cond_a2
    :goto_a2
    return-object v4

    .line 424
    :catch_a3
    move-exception v3

    .line 425
    .local v3, "e":Ljava/net/SocketException;
    :goto_a4
    const/16 v11, 0x1f4

    :try_start_a6
    invoke-virtual {v4, v11}, Lcom/android/nfc/http/HTTPResponse;->setStatusCode(I)V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_f1

    .line 434
    if-eqz v5, :cond_ae

    .line 436
    :try_start_ab
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_110

    .line 442
    .end local v3    # "e":Ljava/net/SocketException;
    :cond_ae
    :goto_ae
    if-eqz v8, :cond_b3

    .line 444
    :try_start_b0
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b3} :catch_115

    .line 451
    :cond_b3
    :goto_b3
    iget-object v11, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-eqz v11, :cond_bf

    .line 453
    :try_start_b7
    iget-object v11, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_bc} :catch_11a

    .line 458
    :goto_bc
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 462
    :cond_bf
    if-eqz v9, :cond_a2

    .line 463
    :goto_c1
    invoke-virtual {v9}, Ljava/io/PrintStream;->close()V

    goto :goto_a2

    .line 426
    :catch_c5
    move-exception v3

    .line 429
    .local v3, "e":Ljava/io/IOException;
    :goto_c6
    const/16 v11, 0x1f4

    :try_start_c8
    invoke-virtual {v4, v11}, Lcom/android/nfc/http/HTTPResponse;->setStatusCode(I)V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_f1

    .line 434
    if-eqz v5, :cond_d0

    .line 436
    :try_start_cd
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_11f

    .line 442
    :cond_d0
    :goto_d0
    if-eqz v8, :cond_d5

    .line 444
    :try_start_d2
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_124

    .line 451
    :cond_d5
    :goto_d5
    iget-object v11, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-eqz v11, :cond_e1

    .line 453
    :try_start_d9
    iget-object v11, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_de} :catch_129

    .line 458
    :goto_de
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 462
    :cond_e1
    if-eqz v9, :cond_a2

    goto :goto_c1

    .line 454
    .end local v3    # "e":Ljava/io/IOException;
    :catch_e4
    move-exception v3

    .line 456
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 458
    .end local v3    # "e":Ljava/io/IOException;
    :goto_e8
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    .line 462
    :cond_eb
    if-eqz v9, :cond_f0

    .line 463
    invoke-virtual {v9}, Ljava/io/PrintStream;->close()V

    .line 434
    :cond_f0
    throw v11

    :catchall_f1
    move-exception v11

    :goto_f2
    if-eqz v5, :cond_f7

    .line 436
    :try_start_f4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_106

    .line 442
    :cond_f7
    :goto_f7
    if-eqz v8, :cond_fc

    .line 444
    :try_start_f9
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_10b

    .line 451
    :cond_fc
    :goto_fc
    iget-object v12, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    if-eqz v12, :cond_eb

    .line 453
    :try_start_100
    iget-object v12, p0, Lcom/android/nfc/http/HTTPRequest;->postSocket:Ljava/net/Socket;

    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_105} :catch_e4

    goto :goto_e8

    .line 437
    :catch_106
    move-exception v3

    .line 439
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f7

    .line 445
    .end local v3    # "e":Ljava/io/IOException;
    :catch_10b
    move-exception v3

    .line 447
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_fc

    .line 437
    .local v3, "e":Ljava/net/SocketException;
    :catch_110
    move-exception v3

    .line 439
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ae

    .line 445
    .end local v3    # "e":Ljava/io/IOException;
    :catch_115
    move-exception v3

    .line 447
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b3

    .line 454
    .end local v3    # "e":Ljava/io/IOException;
    :catch_11a
    move-exception v3

    .line 456
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_bc

    .line 437
    :catch_11f
    move-exception v3

    .line 439
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d0

    .line 445
    :catch_124
    move-exception v3

    .line 447
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d5

    .line 454
    :catch_129
    move-exception v3

    .line 456
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_de

    .line 437
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "pout":Ljava/io/PrintStream;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v2    # "contentLength":I
    .restart local v6    # "isChunkedRequest":Z
    .restart local v10    # "pout":Ljava/io/PrintStream;
    :catch_12e
    move-exception v3

    .line 439
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8b

    .line 445
    .end local v3    # "e":Ljava/io/IOException;
    :catch_134
    move-exception v3

    .line 447
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_90

    .line 454
    .end local v3    # "e":Ljava/io/IOException;
    :catch_13a
    move-exception v3

    .line 456
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_99

    .line 434
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "contentLength":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "isChunkedRequest":Z
    :catchall_140
    move-exception v11

    move-object v9, v10

    .end local v10    # "pout":Ljava/io/PrintStream;
    .restart local v9    # "pout":Ljava/io/PrintStream;
    goto :goto_f2

    .line 426
    .end local v9    # "pout":Ljava/io/PrintStream;
    .restart local v10    # "pout":Ljava/io/PrintStream;
    :catch_143
    move-exception v3

    move-object v9, v10

    .end local v10    # "pout":Ljava/io/PrintStream;
    .restart local v9    # "pout":Ljava/io/PrintStream;
    goto :goto_c6

    .line 424
    .end local v9    # "pout":Ljava/io/PrintStream;
    .restart local v10    # "pout":Ljava/io/PrintStream;
    :catch_146
    move-exception v3

    move-object v9, v10

    .end local v10    # "pout":Ljava/io/PrintStream;
    .restart local v9    # "pout":Ljava/io/PrintStream;
    goto/16 :goto_a4
.end method

.method public post(Lcom/android/nfc/http/HTTPResponse;)Z
    .registers 20
    .param p1, "httpRes"    # Lcom/android/nfc/http/HTTPResponse;

    .prologue
    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPRequest;->getSocket()Lcom/android/nfc/http/HTTPSocket;

    move-result-object v8

    .line 331
    .local v8, "httpSock":Lcom/android/nfc/http/HTTPSocket;
    const-wide/16 v10, 0x0

    .line 332
    .local v10, "offset":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/http/HTTPPacket;->getContentLength()J

    move-result-wide v6

    .line 333
    .local v6, "length":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPPacket;->hasContentRange()Z

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_73

    const-wide/16 v12, 0x0

    cmp-long v1, v6, v12

    if-eqz v1, :cond_73

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPPacket;->getContentRangeFirstPosition()J

    move-result-wide v2

    .line 335
    .local v2, "firstPos":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPPacket;->getContentRangeLastPosition()J

    move-result-wide v4

    .line 337
    .local v4, "lastPos":J
    const-wide/16 v12, 0x0

    cmp-long v1, v4, v12

    if-gtz v1, :cond_29

    .line 338
    const-wide/16 v12, 0x1

    sub-long v4, v6, v12

    .line 339
    :cond_29
    const-string v1, "Range"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/nfc/http/HTTPPacket;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 340
    .local v15, "rangeLine":Ljava/lang/String;
    const-string v1, "bytes"

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 341
    const/16 v1, 0x190

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/nfc/http/HTTPRequest;->returnResponse(I)Z

    move-result v1

    .line 356
    .end local v2    # "firstPos":J
    .end local v4    # "lastPos":J
    .end local v15    # "rangeLine":Ljava/lang/String;
    :goto_41
    return v1

    .line 344
    .restart local v2    # "firstPos":J
    .restart local v4    # "lastPos":J
    .restart local v15    # "rangeLine":Ljava/lang/String;
    :cond_42
    cmp-long v1, v2, v4

    if-lez v1, :cond_4f

    .line 345
    const/16 v1, 0x190

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/nfc/http/HTTPRequest;->returnResponse(I)Z

    move-result v1

    goto :goto_41

    .line 347
    :cond_4f
    cmp-long v1, v2, v6

    if-gtz v1, :cond_57

    cmp-long v1, v4, v6

    if-lez v1, :cond_60

    .line 348
    :cond_57
    const/16 v1, 0x1a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/nfc/http/HTTPRequest;->returnResponse(I)Z

    move-result v1

    goto :goto_41

    :cond_60
    move-object/from16 v1, p1

    .line 350
    invoke-virtual/range {v1 .. v7}, Lcom/android/nfc/http/HTTPPacket;->setContentRange(JJJ)V

    .line 351
    const/16 v1, 0xce

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/nfc/http/HTTPResponse;->setStatusCode(I)V

    .line 353
    move-wide v10, v2

    .line 354
    sub-long v12, v4, v2

    const-wide/16 v16, 0x1

    add-long v6, v12, v16

    .line 356
    .end local v2    # "firstPos":J
    .end local v4    # "lastPos":J
    .end local v15    # "rangeLine":Ljava/lang/String;
    :cond_73
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/http/HTTPRequest;->isHeadRequest()Z

    move-result v14

    move-object/from16 v9, p1

    move-wide v12, v6

    invoke-virtual/range {v8 .. v14}, Lcom/android/nfc/http/HTTPSocket;->post(Lcom/android/nfc/http/HTTPResponse;JJZ)Z

    move-result v1

    goto :goto_41
.end method

.method public print()V
    .registers 3

    .prologue
    .line 523
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public read()Z
    .registers 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getSocket()Lcom/android/nfc/http/HTTPSocket;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->read(Lcom/android/nfc/http/HTTPSocket;)Z

    move-result v0

    return v0
.end method

.method public returnBadRequest()Z
    .registers 2

    .prologue
    .line 505
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnOK()Z
    .registers 2

    .prologue
    .line 501
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->returnResponse(I)Z

    move-result v0

    return v0
.end method

.method public returnResponse(I)Z
    .registers 5
    .param p1, "statusCode"    # I

    .prologue
    .line 494
    new-instance v0, Lcom/android/nfc/http/HTTPResponse;

    invoke-direct {v0}, Lcom/android/nfc/http/HTTPResponse;-><init>()V

    .line 495
    .local v0, "httpRes":Lcom/android/nfc/http/HTTPResponse;
    invoke-virtual {v0, p1}, Lcom/android/nfc/http/HTTPResponse;->setStatusCode(I)V

    .line 496
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/http/HTTPPacket;->setContentLength(J)V

    .line 497
    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->post(Lcom/android/nfc/http/HTTPResponse;)Z

    move-result v1

    return v1
.end method

.method public set(Lcom/android/nfc/http/HTTPRequest;)V
    .registers 3
    .param p1, "httpReq"    # Lcom/android/nfc/http/HTTPRequest;

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPPacket;->set(Lcom/android/nfc/http/HTTPPacket;)V

    .line 486
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPRequest;->getSocket()Lcom/android/nfc/http/HTTPSocket;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPRequest;->setSocket(Lcom/android/nfc/http/HTTPSocket;)V

    .line 487
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/nfc/http/HTTPRequest;->method:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setRequestHost(Ljava/lang/String;)V
    .registers 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/nfc/http/HTTPRequest;->requestHost:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setRequestPort(I)V
    .registers 2
    .param p1, "host"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/android/nfc/http/HTTPRequest;->requestPort:I

    .line 217
    return-void
.end method

.method public setSocket(Lcom/android/nfc/http/HTTPSocket;)V
    .registers 2
    .param p1, "value"    # Lcom/android/nfc/http/HTTPSocket;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/nfc/http/HTTPRequest;->httpSocket:Lcom/android/nfc/http/HTTPSocket;

    .line 231
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/http/HTTPRequest;->setURI(Ljava/lang/String;Z)V

    .line 156
    return-void
.end method

.method public setURI(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isCheckRelativeURL"    # Z

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/nfc/http/HTTPRequest;->uri:Ljava/lang/String;

    .line 148
    if-nez p2, :cond_5

    .line 152
    :goto_4
    return-void

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/nfc/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/http/HTTPRequest;->uri:Ljava/lang/String;

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 515
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPRequest;->getHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getContentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
