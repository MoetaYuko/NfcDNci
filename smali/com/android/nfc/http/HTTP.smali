.class public Lcom/android/nfc/http/HTTP;
.super Ljava/lang/Object;
.source "HTTP.java"


# static fields
.field public static final CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final CALLBACK:Ljava/lang/String; = "CALLBACK"

.field public static final CHARSET:Ljava/lang/String; = "charset"

.field public static final CHUNKED:Ljava/lang/String; = "Chunked"

.field public static final CLOSE:Ljava/lang/String; = "close"

.field public static final CONNECTION:Ljava/lang/String; = "Connection"

.field public static final CONTENTFEATURES_DLNA_ORG:Ljava/lang/String; = "contentFeatures.dlna.org"

.field public static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final CONTENT_RANGE_BYTES:Ljava/lang/String; = "bytes"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final CR:B = 0xdt

.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final DATE:Ljava/lang/String; = "Date"

.field public static final DEFAULT_CHUNK_SIZE:I = 0x80000

.field public static final DEFAULT_PORT:I = 0x50

.field public static final DEFAULT_TIMEOUT:I = 0x1e

.field public static final EXT:Ljava/lang/String; = "EXT"

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final GETCONTENTFEATURES_DLNA_ORG:Ljava/lang/String; = "getcontentFeatures.dlna.org"

.field public static final HEAD:Ljava/lang/String; = "HEAD"

.field public static final HEADER_LINE_DELIM:Ljava/lang/String; = " :"

.field public static final HOST:Ljava/lang/String; = "HOST"

.field public static final KEEP_ALIVE:Ljava/lang/String; = "Keep-Alive"

.field public static final LF:B = 0xat

.field public static final LOCATION:Ljava/lang/String; = "Location"

.field public static final MAN:Ljava/lang/String; = "MAN"

.field public static final MAX_AGE:Ljava/lang/String; = "max-age"

.field public static final MX:Ljava/lang/String; = "MX"

.field public static final MYNAME:Ljava/lang/String; = "MYNAME"

.field public static final M_SEARCH:Ljava/lang/String; = "M-SEARCH"

.field public static final NOTIFY:Ljava/lang/String; = "NOTIFY"

.field public static final NO_CACHE:Ljava/lang/String; = "no-cache"

.field public static final NT:Ljava/lang/String; = "NT"

.field public static final NTS:Ljava/lang/String; = "NTS"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final RANGE:Ljava/lang/String; = "Range"

.field public static final REALTIMEINFO_DLNA_ORG:Ljava/lang/String; = "realTimeInfo.dlna.org"

.field public static final REQEST_LINE_DELIM:Ljava/lang/String; = " "

.field public static final SEQ:Ljava/lang/String; = "SEQ"

.field public static final SERVER:Ljava/lang/String; = "Server"

.field public static final SID:Ljava/lang/String; = "SID"

.field public static final SOAP_ACTION:Ljava/lang/String; = "SOAPACTION"

.field public static final ST:Ljava/lang/String; = "ST"

.field public static final STATUS_LINE_DELIM:Ljava/lang/String; = " "

.field public static final SUBSCRIBE:Ljava/lang/String; = "SUBSCRIBE"

.field public static final TAB:Ljava/lang/String; = "\t"

.field public static final TIMEOUT:Ljava/lang/String; = "TIMEOUT"

.field public static final TIMESEEKRANGE:Ljava/lang/String; = "TimeSeekRange.dlna.org"

.field public static final TRANSFERMODE:Ljava/lang/String; = "transferMode.dlna.org"

.field public static final TRANSFER_ENCODING:Ljava/lang/String; = "Transfer-Encoding"

.field public static final UNSUBSCRIBE:Ljava/lang/String; = "UNSUBSCRIBE"

.field public static final USN:Ljava/lang/String; = "USN"

.field public static final VERSION:Ljava/lang/String; = "1.1"

.field public static final VERSION_10:Ljava/lang/String; = "1.0"

.field public static final VERSION_11:Ljava/lang/String; = "1.1"

.field private static chunkSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 200
    const/high16 v0, 0x80000

    sput v0, Lcom/android/nfc/http/HTTP;->chunkSize:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "baseURLStr"    # Ljava/lang/String;
    .param p1, "relURlStr"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "baseURL":Ljava/net/URL;
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_3d

    .line 191
    .end local v0    # "baseURL":Ljava/net/URL;
    .local v1, "baseURL":Ljava/net/URL;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/nfc/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "url":Ljava/lang/String;
    move-object v0, v1

    .line 192
    .end local v1    # "baseURL":Ljava/net/URL;
    .end local v3    # "url":Ljava/lang/String;
    .restart local v0    # "baseURL":Ljava/net/URL;
    :goto_3c
    return-object v3

    .line 186
    :catch_3d
    move-exception v2

    .line 188
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    const/4 v3, 0x0

    goto :goto_3c
.end method

.method public static final getChunkSize()I
    .registers 1

    .prologue
    .line 207
    sget v0, Lcom/android/nfc/http/HTTP;->chunkSize:I

    return v0
.end method

.method public static final getHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v2

    .line 131
    .end local v1    # "url":Ljava/net/URL;
    :goto_9
    return-object v2

    .line 130
    :catch_a
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_9
.end method

.method public static final getPort(Ljava/lang/String;)I
    .registers 4
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_e

    move-result v1

    .line 140
    .local v1, "port":I
    if-gtz v1, :cond_d

    .line 141
    const/16 v1, 0x50

    .line 144
    .end local v1    # "port":I
    .end local v2    # "url":Ljava/net/URL;
    :cond_d
    :goto_d
    return v1

    .line 143
    :catch_e
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0x50

    goto :goto_d
.end method

.method public static final getRequestHostURL(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "reqHost":Ljava/lang/String;
    return-object v0
.end method

.method public static final isAbsoluteURL(Ljava/lang/String;)Z
    .registers 3
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 120
    const/4 v1, 0x1

    .line 122
    :goto_6
    return v1

    .line 121
    :catch_7
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static final setChunkSize(I)V
    .registers 1
    .param p0, "size"    # I

    .prologue
    .line 203
    sput p0, Lcom/android/nfc/http/HTTP;->chunkSize:I

    .line 204
    return-void
.end method

.method public static final toRelativeURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "urlStr"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/nfc/http/HTTP;->toRelativeURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toRelativeURL(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8
    .param p0, "urlStr"    # Ljava/lang/String;
    .param p1, "withParam"    # Z

    .prologue
    const/4 v5, 0x0

    .line 154
    move-object v2, p0

    .line 155
    .local v2, "uri":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/nfc/http/HTTP;->isAbsoluteURL(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_29

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_29

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_29
    :goto_29
    move-object v4, v2

    .line 175
    :goto_2a
    return-object v4

    .line 160
    :cond_2b
    :try_start_2b
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 161
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 162
    const/4 v4, 0x1

    if-ne p1, v4, :cond_5a

    .line 163
    invoke-virtual {v3}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "queryStr":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    .end local v1    # "queryStr":Ljava/lang/String;
    :cond_5a
    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 169
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_6c} :catch_6e

    move-result-object v2

    goto :goto_29

    .line 170
    .end local v3    # "url":Ljava/net/URL;
    :catch_6e
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 172
    const/4 v4, 0x0

    goto :goto_2a
.end method
