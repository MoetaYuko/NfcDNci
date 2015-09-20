.class public Lcom/android/nfc/http/HTTPResponse;
.super Lcom/android/nfc/http/HTTPPacket;
.source "HTTPResponse.java"


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/nfc/http/HTTPPacket;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/http/HTTPResponse;->statusCode:I

    .line 32
    const-string v0, "1.1"

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->setVersion(Ljava/lang/String;)V

    .line 33
    const-string v0, "text/html; charset=\"utf-8\""

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->setContentType(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/android/nfc/http/HTTPServer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->setServer(Ljava/lang/String;)V

    .line 35
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPPacket;->setContent(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/http/HTTPResponse;)V
    .registers 3
    .param p1, "httpRes"    # Lcom/android/nfc/http/HTTPResponse;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/nfc/http/HTTPPacket;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/http/HTTPResponse;->statusCode:I

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPPacket;->set(Lcom/android/nfc/http/HTTPPacket;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/http/HTTPSocket;)V
    .registers 3
    .param p1, "httpSock"    # Lcom/android/nfc/http/HTTPSocket;

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/android/nfc/http/HTTPSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/nfc/http/HTTPResponse;-><init>(Ljava/io/InputStream;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/nfc/http/HTTPPacket;-><init>(Ljava/io/InputStream;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/http/HTTPResponse;->statusCode:I

    .line 44
    return-void
.end method


# virtual methods
.method public getHeader()Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPResponse;->getStatusLineString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStatusCode()I
    .registers 3

    .prologue
    .line 61
    iget v1, p0, Lcom/android/nfc/http/HTTPResponse;->statusCode:I

    if-eqz v1, :cond_7

    .line 62
    iget v1, p0, Lcom/android/nfc/http/HTTPResponse;->statusCode:I

    .line 64
    :goto_6
    return v1

    .line 63
    :cond_7
    new-instance v0, Lcom/android/nfc/http/HTTPStatus;

    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getFirstLine()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/nfc/http/HTTPStatus;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "httpStatus":Lcom/android/nfc/http/HTTPStatus;
    invoke-virtual {v0}, Lcom/android/nfc/http/HTTPStatus;->getStatusCode()I

    move-result v1

    goto :goto_6
.end method

.method public getStatusLineString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/http/HTTPResponse;->statusCode:I

    invoke-static {v1}, Lcom/android/nfc/http/HTTPStatus;->code2String(I)Ljava/lang/String;

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

.method public isSuccessful()Z
    .registers 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPResponse;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/nfc/http/HTTPStatus;->isSuccessful(I)Z

    move-result v0

    return v0
.end method

.method public print()V
    .registers 3

    .prologue
    .line 104
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public setStatusCode(I)V
    .registers 2
    .param p1, "code"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/android/nfc/http/HTTPResponse;->statusCode:I

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v0, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPResponse;->getStatusLineString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getHeaderString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPPacket;->getContentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
