.class public Lcom/android/nfc/snep/SnepMessenger;
.super Ljava/lang/Object;
.source "SnepMessenger.java"


# static fields
.field private static final DBG:Z = true

.field private static final DEFAULT_ACCEPTABLE_LENGTH:I = 0x19000

.field private static final HEADER_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SnepMessager"


# instance fields
.field final mFragmentLength:I

.field final mIsClient:Z

.field final mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;


# direct methods
.method public constructor <init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .registers 4
    .param p1, "isClient"    # Z
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 47
    iput p3, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    .line 48
    iput-boolean p1, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    .line 49
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V

    .line 222
    return-void
.end method

.method public getMessage()Lcom/android/nfc/snep/SnepMessage;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/nfc/snep/SnepException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-direct {v8, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 100
    .local v8, "buffer":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    new-array v14, v2, [B

    .line 106
    .local v14, "partial":[B
    const-wide/16 v17, 0x0

    .line 107
    .local v17, "requestSize":J
    const-wide/16 v15, 0x0

    .line 109
    .local v15, "readSize":J
    const/4 v3, 0x0

    .line 110
    .local v3, "requestVersion":B
    const/4 v10, 0x0

    .line 113
    .local v10, "doneReading":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v2, :cond_5e

    .line 114
    const/4 v12, 0x0

    .line 115
    .local v12, "fieldContinue":B
    const/4 v13, 0x7

    .line 121
    .local v13, "fieldReject":B
    :goto_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v2, v14}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v19

    .line 122
    .local v19, "size":I
    const-string v2, "SnepMessager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-gez v19, :cond_62

    .line 125
    :try_start_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v13}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_56} :catch_1ab

    .line 129
    :goto_56
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Error reading SNEP message."

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    .end local v12    # "fieldContinue":B
    .end local v13    # "fieldReject":B
    .end local v19    # "size":I
    :cond_5e
    const/16 v12, -0x80

    .line 118
    .restart local v12    # "fieldContinue":B
    const/4 v13, -0x1

    .restart local v13    # "fieldReject":B
    goto :goto_1d

    .line 130
    .restart local v19    # "size":I
    :cond_62
    const/4 v2, 0x6

    move/from16 v0, v19

    if-ge v0, v2, :cond_8b

    .line 131
    const-string v2, "SnepMessager"

    const-string v5, "Message too short"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Landroid/nfc/DtaHelper;->in_dta_mode()Z

    move-result v2

    if-nez v2, :cond_83

    .line 135
    :try_start_74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v13}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_83} :catch_1a8

    .line 140
    :cond_83
    :goto_83
    new-instance v2, Ljava/io/IOException;

    const-string v5, "Invalid fragment from sender."

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 142
    :cond_8b
    add-int/lit8 v2, v19, -0x6

    int-to-long v15, v2

    .line 143
    const/4 v2, 0x0

    move/from16 v0, v19

    invoke-virtual {v8, v14, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 146
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v9, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 147
    .local v9, "dataIn":Ljava/io/DataInputStream;
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 148
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 151
    .local v4, "requestField":B
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v5, v2

    const-wide v20, 0xffffffffL

    and-long v17, v5, v20

    .line 154
    const-string v2, "SnepMessager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide v0, v15

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    and-int/lit16 v2, v3, 0xf0

    shr-int/lit8 v2, v2, 0x4

    const/4 v5, 0x1

    if-eq v2, v5, :cond_e7

    .line 158
    new-instance v2, Lcom/android/nfc/snep/SnepMessage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    .line 213
    :goto_e6
    return-object v2

    .line 163
    :cond_e7
    invoke-static {}, Landroid/nfc/DtaHelper;->isInLlcpOrSnepMode()Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 164
    const-wide/32 v5, 0x19000

    cmp-long v2, v17, v5

    if-lez v2, :cond_10b

    .line 166
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v13}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_103} :catch_1a5

    .line 170
    :goto_103
    new-instance v2, Ljava/io/IOException;

    const-string v5, "SNEP message is longer than the acceptable length. Rejecting."

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_10b
    cmp-long v2, v17, v15

    if-lez v2, :cond_177

    .line 176
    const-string v2, "SnepMessager"

    const-string v5, "requesting continuation"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v12}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 183
    :cond_125
    :goto_125
    if-nez v10, :cond_189

    .line 185
    :try_start_127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v2, v14}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v19

    .line 186
    const-string v2, "SnepMessager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_14f} :catch_166

    .line 187
    if-gez v19, :cond_179

    .line 189
    :try_start_151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v13}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_160
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_160} :catch_1a3

    .line 193
    :goto_160
    :try_start_160
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_166} :catch_166

    .line 201
    :catch_166
    move-exception v11

    .line 203
    .local v11, "e":Ljava/io/IOException;
    :try_start_167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v13}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_176} :catch_1a1

    .line 207
    :goto_176
    throw v11

    .line 179
    .end local v11    # "e":Ljava/io/IOException;
    :cond_177
    const/4 v10, 0x1

    goto :goto_125

    .line 195
    :cond_179
    move/from16 v0, v19

    int-to-long v5, v0

    add-long/2addr v15, v5

    .line 196
    const/4 v2, 0x0

    :try_start_17e
    move/from16 v0, v19

    invoke-virtual {v8, v14, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_183
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_183} :catch_166

    .line 197
    cmp-long v2, v15, v17

    if-nez v2, :cond_125

    .line 198
    const/4 v10, 0x1

    goto :goto_125

    .line 213
    :cond_189
    :try_start_189
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    :try_end_190
    .catch Landroid/nfc/FormatException; {:try_start_189 .. :try_end_190} :catch_193

    move-result-object v2

    goto/16 :goto_e6

    .line 214
    :catch_193
    move-exception v11

    .line 215
    .local v11, "e":Landroid/nfc/FormatException;
    const-string v2, "SnepMessager"

    const-string v5, "Badly formatted NDEF message, ignoring"

    invoke-static {v2, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    new-instance v2, Lcom/android/nfc/snep/SnepException;

    invoke-direct {v2, v11}, Lcom/android/nfc/snep/SnepException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 204
    .local v11, "e":Ljava/io/IOException;
    :catch_1a1
    move-exception v2

    goto :goto_176

    .line 190
    .end local v11    # "e":Ljava/io/IOException;
    :catch_1a3
    move-exception v2

    goto :goto_160

    .line 167
    :catch_1a5
    move-exception v2

    goto/16 :goto_103

    .line 136
    .end local v4    # "requestField":B
    .end local v9    # "dataIn":Ljava/io/DataInputStream;
    :catch_1a8
    move-exception v2

    goto/16 :goto_83

    .line 126
    :catch_1ab
    move-exception v2

    goto/16 :goto_56
.end method

.method public sendMessage(Lcom/android/nfc/snep/SnepMessage;)V
    .registers 13
    .param p1, "msg"    # Lcom/android/nfc/snep/SnepMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v0

    .line 54
    .local v0, "buffer":[B
    iget-boolean v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v8, :cond_5c

    .line 55
    const/16 v4, -0x80

    .line 59
    .local v4, "remoteContinue":B
    :goto_a
    const-string v8, "SnepMessager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "about to send a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " byte message"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    array-length v8, v0

    iget v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 63
    .local v2, "length":I
    const/4 v8, 0x0

    invoke-static {v0, v8, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 64
    .local v7, "tmpBuffer":[B
    const-string v8, "SnepMessager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "about to send a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " byte fragment"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 67
    array-length v8, v0

    if-ne v2, v8, :cond_5e

    .line 96
    :cond_5b
    return-void

    .line 57
    .end local v2    # "length":I
    .end local v4    # "remoteContinue":B
    .end local v7    # "tmpBuffer":[B
    :cond_5c
    const/4 v4, 0x0

    .restart local v4    # "remoteContinue":B
    goto :goto_a

    .line 72
    .restart local v2    # "length":I
    .restart local v7    # "tmpBuffer":[B
    :cond_5e
    move v3, v2

    .line 73
    .local v3, "offset":I
    const/4 v8, 0x6

    new-array v5, v8, [B

    .line 74
    .local v5, "responseBytes":[B
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 77
    :try_start_67
    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    :try_end_6a
    .catch Landroid/nfc/FormatException; {:try_start_67 .. :try_end_6a} :catch_b0

    move-result-object v6

    .line 82
    .local v6, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    const-string v8, "SnepMessager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got response from first fragment: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v8

    if-eq v8, v4, :cond_b9

    .line 84
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid response from server ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 78
    .end local v6    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :catch_b0
    move-exception v1

    .line 79
    .local v1, "e":Landroid/nfc/FormatException;
    new-instance v8, Ljava/io/IOException;

    const-string v9, "Invalid SNEP message"

    invoke-direct {v8, v9, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 89
    .end local v1    # "e":Landroid/nfc/FormatException;
    .restart local v6    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_b9
    :goto_b9
    array-length v8, v0

    if-ge v3, v8, :cond_5b

    .line 90
    array-length v8, v0

    sub-int/2addr v8, v3

    iget v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 91
    add-int v8, v3, v2

    invoke-static {v0, v3, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 92
    const-string v8, "SnepMessager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "about to send a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " byte fragment"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 94
    add-int/2addr v3, v2

    goto :goto_b9
.end method
