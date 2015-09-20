.class public Lcom/android/nfc/http/HTTPStatus;
.super Ljava/lang/Object;
.source "HTTPStatus.java"


# static fields
.field public static final BAD_REQUEST:I = 0x190

.field public static final CONTINUE:I = 0x64

.field public static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field public static final INVALID_RANGE:I = 0x1a0

.field public static final NOT_ACCEPTABLE:I = 0x196

.field public static final NOT_FOUND:I = 0x194

.field public static final OK:I = 0xc8

.field public static final PARTIAL_CONTENT:I = 0xce

.field public static final PRECONDITION_FAILED:I = 0x19c


# instance fields
.field private reasonPhrase:Ljava/lang/String;

.field private statusCode:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/http/HTTPStatus;->version:Ljava/lang/String;

    .line 103
    iput v1, p0, Lcom/android/nfc/http/HTTPStatus;->statusCode:I

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/http/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    .line 83
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPStatus;->setVersion(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/nfc/http/HTTPStatus;->setStatusCode(I)V

    .line 85
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPStatus;->setReasonPhrase(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "lineStr"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/http/HTTPStatus;->version:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/http/HTTPStatus;->statusCode:I

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/http/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPStatus;->set(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "ver"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/http/HTTPStatus;->version:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/http/HTTPStatus;->statusCode:I

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/android/nfc/http/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/HTTPStatus;->setVersion(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p2}, Lcom/android/nfc/http/HTTPStatus;->setStatusCode(I)V

    .line 91
    invoke-virtual {p0, p3}, Lcom/android/nfc/http/HTTPStatus;->setReasonPhrase(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static final code2String(I)Ljava/lang/String;
    .registers 2
    .param p0, "code"    # I

    .prologue
    .line 55
    sparse-switch p0, :sswitch_data_22

    .line 75
    const-string v0, ""

    :goto_5
    return-object v0

    .line 57
    :sswitch_6
    const-string v0, "Continue"

    goto :goto_5

    .line 59
    :sswitch_9
    const-string v0, "OK"

    goto :goto_5

    .line 61
    :sswitch_c
    const-string v0, "Partial Content"

    goto :goto_5

    .line 63
    :sswitch_f
    const-string v0, "Bad Request"

    goto :goto_5

    .line 65
    :sswitch_12
    const-string v0, "Not Found"

    goto :goto_5

    .line 67
    :sswitch_15
    const-string v0, "Precondition Failed"

    goto :goto_5

    .line 69
    :sswitch_18
    const-string v0, "Invalid Range"

    goto :goto_5

    .line 71
    :sswitch_1b
    const-string v0, "Internal Server Error"

    goto :goto_5

    .line 73
    :sswitch_1e
    const-string v0, "Not Acceptable"

    goto :goto_5

    .line 55
    nop

    :sswitch_data_22
    .sparse-switch
        0x64 -> :sswitch_6
        0xc8 -> :sswitch_9
        0xce -> :sswitch_c
        0x190 -> :sswitch_f
        0x194 -> :sswitch_12
        0x196 -> :sswitch_1e
        0x19c -> :sswitch_15
        0x1a0 -> :sswitch_18
        0x1f4 -> :sswitch_1b
    .end sparse-switch
.end method

.method public static final isSuccessful(I)Z
    .registers 2
    .param p0, "statCode"    # I

    .prologue
    .line 135
    const/16 v0, 0xc8

    if-gt v0, p0, :cond_a

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_a

    .line 136
    const/4 v0, 0x1

    .line 137
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/nfc/http/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/android/nfc/http/HTTPStatus;->statusCode:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/nfc/http/HTTPStatus;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessful()Z
    .registers 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPStatus;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lcom/android/nfc/http/HTTPStatus;->isSuccessful(I)Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/String;)V
    .registers 11
    .param p1, "lineStr"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x1f4

    .line 149
    if-nez p1, :cond_14

    .line 150
    const-string v7, "1.1"

    invoke-virtual {p0, v7}, Lcom/android/nfc/http/HTTPStatus;->setVersion(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v8}, Lcom/android/nfc/http/HTTPStatus;->setStatusCode(I)V

    .line 152
    invoke-static {v8}, Lcom/android/nfc/http/HTTPStatus;->code2String(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/nfc/http/HTTPStatus;->setReasonPhrase(Ljava/lang/String;)V

    .line 187
    :cond_13
    :goto_13
    return-void

    .line 157
    :cond_14
    :try_start_14
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, " "

    invoke-direct {v5, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v5, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 161
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "ver":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/nfc/http/HTTPStatus;->setVersion(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 166
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_35} :catch_5d

    move-result-object v1

    .line 167
    .local v1, "codeStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 169
    .local v0, "code":I
    :try_start_37
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_62

    move-result v0

    .line 173
    :goto_3b
    :try_start_3b
    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPStatus;->setStatusCode(I)V

    .line 175
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 176
    .local v4, "reason":Ljava/lang/StringBuffer;
    :goto_43
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_67

    .line 177
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-ltz v7, :cond_55

    .line 178
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :cond_55
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5c} :catch_5d

    goto :goto_43

    .line 183
    .end local v0    # "code":I
    .end local v1    # "codeStr":Ljava/lang/String;
    .end local v4    # "reason":Ljava/lang/StringBuffer;
    .end local v5    # "st":Ljava/util/StringTokenizer;
    .end local v6    # "ver":Ljava/lang/String;
    :catch_5d
    move-exception v2

    .line 184
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_13

    .line 170
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "code":I
    .restart local v1    # "codeStr":Ljava/lang/String;
    .restart local v5    # "st":Ljava/util/StringTokenizer;
    .restart local v6    # "ver":Ljava/lang/String;
    :catch_62
    move-exception v3

    .line 171
    .local v3, "e1":Ljava/lang/Exception;
    :try_start_63
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3b

    .line 182
    .end local v3    # "e1":Ljava/lang/Exception;
    .restart local v4    # "reason":Ljava/lang/StringBuffer;
    :cond_67
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/nfc/http/HTTPStatus;->setReasonPhrase(Ljava/lang/String;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_72} :catch_5d

    goto :goto_13
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/nfc/http/HTTPStatus;->reasonPhrase:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setStatusCode(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/android/nfc/http/HTTPStatus;->statusCode:I

    .line 112
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/nfc/http/HTTPStatus;->version:Ljava/lang/String;

    .line 108
    return-void
.end method
