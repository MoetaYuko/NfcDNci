.class public final Lcom/android/nfc/handover/HandoverClient;
.super Ljava/lang/Object;
.source "HandoverClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z = false

.field private static final DISCONNECTED:I = 0x0

.field private static final MIU:I = 0x80

.field private static final TAG:Ljava/lang/String; = "HandoverClient"

.field private static isSendHandoverRequest:Z

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/handover/HandoverClient;->isSendHandoverRequest:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIsSendHandoverRequest()Z
    .registers 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/nfc/handover/HandoverClient;->isSendHandoverRequest:Z

    return v0
.end method

.method public static setIsSendHandoverRequest(Z)V
    .registers 1
    .param p0, "mIsSendHandoverRequest"    # Z

    .prologue
    .line 102
    sput-boolean p0, Lcom/android/nfc/handover/HandoverClient;->isSendHandoverRequest:Z

    .line 103
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 86
    sget-object v1, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_14

    if-eqz v0, :cond_f

    .line 89
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_17
    .catchall {:try_start_7 .. :try_end_c} :catchall_14

    .line 93
    :goto_c
    const/4 v0, 0x0

    :try_start_d
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 95
    :cond_f
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v0

    .line 90
    :catch_17
    move-exception v0

    goto :goto_c
.end method

.method public connect()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 47
    :try_start_3
    iget v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    if-eqz v3, :cond_12

    .line 48
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Socket in use."

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 51
    :catchall_f
    move-exception v3

    monitor-exit v4
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v3

    .line 50
    :cond_12
    const/4 v3, 0x1

    :try_start_13
    iput v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 51
    monitor-exit v4
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_f

    .line 52
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    .line 53
    .local v1, "service":Lcom/android/nfc/NfcService;
    const/4 v2, 0x0

    .line 55
    .local v2, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const/4 v3, 0x0

    const/16 v4, 0x80

    const/4 v5, 0x1

    const/16 v6, 0x400

    :try_start_21
    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_24
    .catch Lcom/android/nfc/LlcpException; {:try_start_21 .. :try_end_24} :catch_34

    move-result-object v2

    .line 65
    :try_start_25
    const-string v3, "urn:nfc:sn:handover"

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2a} :catch_47

    .line 79
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 80
    :try_start_2d
    iput-object v2, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 81
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 82
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_5f

    .line 83
    return-void

    .line 56
    :catch_34
    move-exception v0

    .line 57
    .local v0, "e":Lcom/android/nfc/LlcpException;
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 58
    const/4 v3, 0x0

    :try_start_39
    iput v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 59
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_44

    .line 60
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not create socket"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    :catchall_44
    move-exception v3

    :try_start_45
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v3

    .line 66
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    :catch_47
    move-exception v0

    .line 67
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_4d

    .line 69
    :try_start_4a
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_62

    .line 74
    :cond_4d
    :goto_4d
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 75
    const/4 v3, 0x0

    :try_start_51
    iput v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 76
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5c

    .line 77
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not connect to handover service"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :catchall_5c
    move-exception v3

    :try_start_5d
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v3

    .line 82
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_5f
    move-exception v3

    :try_start_60
    monitor-exit v4
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw v3

    .line 70
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_62
    move-exception v3

    goto :goto_4d
.end method

.method public sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 17
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    if-nez p1, :cond_4

    const/4 v3, 0x0

    .line 171
    :goto_3
    return-object v3

    .line 111
    :cond_4
    const/4 v10, 0x0

    .line 112
    .local v10, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v13, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 113
    :try_start_8
    iget v12, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    const/4 v14, 0x2

    if-eq v12, v14, :cond_18

    .line 114
    new-instance v12, Ljava/io/IOException;

    const-string v14, "Socket not connected"

    invoke-direct {v12, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 117
    :catchall_15
    move-exception v12

    monitor-exit v13
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw v12

    .line 116
    :cond_18
    :try_start_18
    iget-object v10, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 117
    monitor-exit v13
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    .line 118
    const/4 v6, 0x0

    .line 119
    .local v6, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    .line 120
    .local v0, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    .local v1, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_25
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v8

    .line 125
    .local v8, "remoteMiu":I
    :goto_29
    array-length v12, v0

    if-ge v6, v12, :cond_3d

    .line 126
    array-length v12, v0

    sub-int/2addr v12, v6

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 127
    .local v5, "length":I
    add-int v12, v6, v5

    invoke-static {v0, v6, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 129
    .local v11, "tmpBuffer":[B
    invoke-interface {v10, v11}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 130
    add-int/2addr v6, v5

    .line 131
    goto :goto_29

    .line 134
    .end local v5    # "length":I
    .end local v11    # "tmpBuffer":[B
    :cond_3d
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v12

    new-array v7, v12, [B

    .line 135
    .local v7, "partial":[B
    const/4 v3, 0x0

    .line 137
    .local v3, "handoverSelectMsg":Landroid/nfc/NdefMessage;
    :goto_44
    invoke-interface {v10, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_47} :catch_64
    .catchall {:try_start_25 .. :try_end_47} :catchall_73

    move-result v9

    .line 138
    .local v9, "size":I
    if-gez v9, :cond_55

    .line 157
    :goto_4a
    if-eqz v10, :cond_4f

    .line 160
    :try_start_4c
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_7d

    .line 166
    :cond_4f
    :goto_4f
    :try_start_4f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_3

    .line 167
    :catch_53
    move-exception v12

    goto :goto_3

    .line 141
    :cond_55
    const/4 v12, 0x0

    :try_start_56
    invoke-virtual {v1, v7, v12, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_64
    .catchall {:try_start_56 .. :try_end_59} :catchall_73

    .line 143
    :try_start_59
    new-instance v4, Landroid/nfc/NdefMessage;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v4, v12}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_62
    .catch Landroid/nfc/FormatException; {:try_start_59 .. :try_end_62} :catch_87
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_62} :catch_64
    .catchall {:try_start_59 .. :try_end_62} :catchall_73

    .end local v3    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .local v4, "handoverSelectMsg":Landroid/nfc/NdefMessage;
    move-object v3, v4

    .line 145
    .end local v4    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .restart local v3    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    goto :goto_4a

    .line 151
    .end local v3    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .end local v7    # "partial":[B
    .end local v8    # "remoteMiu":I
    .end local v9    # "size":I
    :catch_64
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    const/4 v12, 0x0

    :try_start_66
    invoke-static {v12}, Lcom/android/nfc/handover/HandoverClient;->setIsSendHandoverRequest(Z)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_73

    .line 157
    if-eqz v10, :cond_6e

    .line 160
    :try_start_6b
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_7f

    .line 166
    :cond_6e
    :goto_6e
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_81

    .line 171
    :goto_71
    const/4 v3, 0x0

    goto :goto_3

    .line 157
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_73
    move-exception v12

    if-eqz v10, :cond_79

    .line 160
    :try_start_76
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_83

    .line 166
    :cond_79
    :goto_79
    :try_start_79
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_85

    .line 169
    :goto_7c
    throw v12

    .line 161
    .restart local v3    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .restart local v7    # "partial":[B
    .restart local v8    # "remoteMiu":I
    .restart local v9    # "size":I
    :catch_7d
    move-exception v12

    goto :goto_4f

    .end local v3    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .end local v7    # "partial":[B
    .end local v8    # "remoteMiu":I
    .end local v9    # "size":I
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_7f
    move-exception v12

    goto :goto_6e

    .line 167
    :catch_81
    move-exception v12

    goto :goto_71

    .line 161
    .end local v2    # "e":Ljava/io/IOException;
    :catch_83
    move-exception v13

    goto :goto_79

    .line 167
    :catch_85
    move-exception v13

    goto :goto_7c

    .line 146
    .restart local v3    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .restart local v7    # "partial":[B
    .restart local v8    # "remoteMiu":I
    .restart local v9    # "size":I
    :catch_87
    move-exception v12

    goto :goto_44
.end method
