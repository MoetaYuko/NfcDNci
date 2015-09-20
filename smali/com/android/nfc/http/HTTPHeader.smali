.class public Lcom/android/nfc/http/HTTPHeader;
.super Ljava/lang/Object;
.source "HTTPHeader.java"


# static fields
.field private static MAX_LENGTH:I


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/16 v0, 0x400

    sput v0, Lcom/android/nfc/http/HTTPHeader;->MAX_LENGTH:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 10
    .param p1, "lineStr"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/android/nfc/http/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 43
    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/android/nfc/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 44
    if-nez p1, :cond_10

    .line 59
    :cond_f
    :goto_f
    return-void

    .line 46
    :cond_10
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 47
    .local v0, "colonIdx":I
    if-ltz v0, :cond_f

    .line 51
    :try_start_18
    new-instance v2, Ljava/lang/String;

    const-string v4, "US_ASCII"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "US_ASCII"

    invoke-direct {v2, v4, v5, v0, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 52
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/nfc/http/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 53
    new-instance v3, Ljava/lang/String;

    const-string v4, "US_ASCII"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    const-string v7, "US_ASCII"

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 54
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/nfc/http/HTTPHeader;->setValue(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_4a} :catch_4b

    goto :goto_f

    .line 55
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_4b
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPHeader;->setName(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/android/nfc/http/HTTPHeader;->setValue(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static final getIntegerValue(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/nfc/http/HTTPHeader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 139
    :goto_8
    return v1

    .line 138
    :catch_9
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static final getIntegerValue([BLjava/lang/String;)I
    .registers 4
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/nfc/http/HTTPHeader;->getValue([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    .line 147
    :goto_8
    return v1

    .line 146
    :catch_9
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static final getValue(Ljava/io/LineNumberReader;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "reader"    # Ljava/io/LineNumberReader;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "bigName":Ljava/lang/String;
    :try_start_6
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "lineStr":Ljava/lang/String;
    :goto_a
    if-eqz v4, :cond_40

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_40

    .line 96
    new-instance v3, Lcom/android/nfc/http/HTTPHeader;

    invoke-direct {v3, v4}, Lcom/android/nfc/http/HTTPHeader;-><init>(Ljava/lang/String;)V

    .line 97
    .local v3, "header":Lcom/android/nfc/http/HTTPHeader;
    invoke-virtual {v3}, Lcom/android/nfc/http/HTTPHeader;->hasName()Z

    move-result v5

    if-nez v5, :cond_22

    .line 98
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 99
    goto :goto_a

    .line 101
    :cond_22
    invoke-virtual {v3}, Lcom/android/nfc/http/HTTPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "bigLineHeaderName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    .line 105
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 106
    goto :goto_a

    .line 108
    :cond_37
    invoke-virtual {v3}, Lcom/android/nfc/http/HTTPHeader;->getValue()Ljava/lang/String;
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_3a} :catch_3c

    move-result-object v5

    .line 113
    .end local v0    # "bigLineHeaderName":Ljava/lang/String;
    .end local v3    # "header":Lcom/android/nfc/http/HTTPHeader;
    .end local v4    # "lineStr":Ljava/lang/String;
    :goto_3b
    return-object v5

    .line 110
    :catch_3c
    move-exception v2

    .line 111
    .local v2, "e":Ljava/io/IOException;
    const-string v5, ""

    goto :goto_3b

    .line 113
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "lineStr":Ljava/lang/String;
    :cond_40
    const-string v5, ""

    goto :goto_3b
.end method

.method public static final getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, "strReader":Ljava/io/StringReader;
    new-instance v0, Ljava/io/LineNumberReader;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/android/nfc/http/HTTPHeader;->MAX_LENGTH:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;I)V

    .line 120
    .local v0, "lineReader":Ljava/io/LineNumberReader;
    invoke-static {v0, p1}, Lcom/android/nfc/http/HTTPHeader;->getValue(Ljava/io/LineNumberReader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final getValue([BLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 126
    .local v0, "dateString":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/nfc/http/HTTPHeader;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_c

    move-result-object v2

    .line 130
    .end local v0    # "dateString":Ljava/lang/String;
    :goto_b
    return-object v2

    .line 127
    :catch_c
    move-exception v1

    .line 129
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    const/4 v2, 0x0

    goto :goto_b
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/nfc/http/HTTPHeader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/nfc/http/HTTPHeader;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/nfc/http/HTTPHeader;->name:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/nfc/http/HTTPHeader;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_e

    .line 83
    :cond_c
    const/4 v0, 0x0

    .line 84
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/nfc/http/HTTPHeader;->name:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/nfc/http/HTTPHeader;->value:Ljava/lang/String;

    .line 71
    return-void
.end method
