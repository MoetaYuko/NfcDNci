.class public Lcom/android/nfc/handover/P2PHandover;
.super Lcom/android/nfc/handover/Handover;
.source "P2PHandover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/P2PHandover$1;,
        Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;,
        Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    }
.end annotation


# static fields
.field static final ACTION_CLOSE_HANDOVER_TRANSFER:Ljava/lang/String; = "com.android.nfc.p2phandover.action.CLOSE"

.field static final DBG:Z = true

.field private static final FAST_CONNECT_PAYLOAD_MESSAGE_LOCATION:I = 0x1

.field private static final FAST_CONNECT_RECORD_NUMBER:I = 0x2

.field public static final MAC_FILE_PATH:Ljava/lang/String; = "/sys/class/net/p2p0/address"

.field static final P2P_ADDRESS:Ljava/lang/String; = "mac"

.field static final P2P_CONNECTED:I = 0x3

.field static final P2P_CONNECTTING:I = 0x2

.field static final P2P_DATA_AVAILABILITY_LEN:I = 0x2

.field static final P2P_IDLE:I = 0x1

.field static final P2P_NAME:Ljava/lang/String; = "devicename"

.field static final TAG:Ljava/lang/String; = "P2PHandover"

.field static final TYPE_WIFI_DIRECT:[B


# instance fields
.field private isConnected:Z

.field private isP2pHandoverSupport:Z

.field private mConnectState:I

.field private mContext:Landroid/content/Context;

.field private mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

.field mOriginalP2pConnStateFixed:Z

.field mOriginalStateFixed:Z

.field mP2pOriginalConnState:Z

.field private mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

.field private mTransmiteKey:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiOriginalState:Z

.field private receiver:Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 42
    const-string v0, "application/vnd.wifi.p2p"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/P2PHandover;->TYPE_WIFI_DIRECT:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/HandoverManager;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/nfc/handover/Handover;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/android/nfc/handover/P2PHandover;->isConnected:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/nfc/handover/P2PHandover;->isP2pHandoverSupport:Z

    .line 49
    iput-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 50
    iput v1, p0, Lcom/android/nfc/handover/P2PHandover;->mTransmiteKey:I

    .line 57
    iput v3, p0, Lcom/android/nfc/handover/P2PHandover;->mConnectState:I

    .line 58
    iput-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->receiver:Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;

    .line 70
    iput-boolean v1, p0, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    .line 91
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/nfc/handover/P2PHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 93
    iput v1, p0, Lcom/android/nfc/handover/P2PHandover;->mTransmiteKey:I

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 95
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandover;->setP2PConnectState(I)V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    new-instance v1, Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;-><init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$1;)V

    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandover;->receiver:Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;

    .line 100
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->receiver:Lcom/android/nfc/handover/P2PHandover$WiFiDirectBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/P2PHandover;)Lcom/android/nfc/handover/HandoverManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandover;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/P2PHandover;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandover;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkRemoteHandoverData(Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)Z
    .registers 4
    .param p1, "data"    # Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .prologue
    const/4 v0, 0x0

    .line 276
    if-nez p1, :cond_4

    .line 282
    :cond_3
    :goto_3
    return v0

    .line 279
    :cond_4
    iget-object v1, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    if-nez v1, :cond_c

    iget-object v1, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 282
    :cond_c
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private createP2PDateRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;
    .registers 10
    .param p1, "devicename"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/android/nfc/handover/P2PHandover;->isHandoverSupported()Z

    move-result v2

    if-nez v2, :cond_e

    .line 162
    new-instance v2, Landroid/nfc/NdefRecord;

    invoke-direct {v2, v6, v5, v5, v5}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 179
    :goto_d
    return-object v2

    .line 164
    :cond_e
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 165
    .local v1, "record":Ljava/lang/StringBuffer;
    const-string v2, "\"devicename\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    const-string v2, "\"mac\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    if-eqz p2, :cond_9e

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :goto_57
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 176
    .local v0, "addressPayload":[B
    const-string v2, "P2PHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDataRecord(): devicename = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v2, "P2PHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createDataRecord(): deviceAddress = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v3, Lcom/android/nfc/handover/P2PHandover;->TYPE_WIFI_DIRECT:[B

    invoke-direct {v2, v6, v3, v5, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    goto/16 :goto_d

    .line 171
    .end local v0    # "addressPayload":[B
    :cond_9e
    const-string v2, "\"\"\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_57
.end method

.method private createResponeDataRecord(Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)Landroid/nfc/NdefRecord;
    .registers 4
    .param p1, "mP2pLocalHandoverData"    # Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .prologue
    .line 206
    iget-object v0, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/nfc/handover/P2PHandover;->createP2PDateRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method private getDeviceName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 142
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_p2p_device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_39

    .line 144
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "id":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .end local v1    # "id":Ljava/lang/String;
    :cond_39
    return-object v0
.end method

.method private getMacFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 322
    const-string v0, "/sys/class/net/p2p0/address"

    return-object v0
.end method

.method private getP2PConnectState()I
    .registers 2

    .prologue
    .line 694
    iget v0, p0, Lcom/android/nfc/handover/P2PHandover;->mConnectState:I

    return v0
.end method

.method private getP2PMacAddressFormFile()Ljava/lang/String;
    .registers 6

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "p2pMacAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    const-string v3, "nfc-record"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 317
    .local v1, "record":Landroid/content/SharedPreferences;
    const-string v2, "p2pMacAddress"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    return-object v0
.end method

.method private getP2PMacAddressFromSystem()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getMacFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1a

    .line 338
    const-string v7, "P2PHandover"

    const-string v8, "getP2PMacAddressFromSystem !file.exists()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 364
    :goto_19
    return-object v0

    .line 343
    :cond_1a
    :try_start_1a
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    const-string v8, "/sys/class/net/p2p0/address"

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v8, "UTF-8"

    invoke-direct {v5, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 344
    .local v5, "fileReader":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_2d} :catch_4d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2d} :catch_5d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_6d

    .line 345
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 346
    .local v0, "address":Ljava/lang/String;
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_31
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2e .. :try_end_31} :catch_7f
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_7c
    .catchall {:try_start_2e .. :try_end_31} :catchall_79

    move-result-object v0

    if-eqz v0, :cond_40

    .line 358
    if-eqz v2, :cond_39

    .line 360
    :try_start_36
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3b

    :cond_39
    :goto_39
    move-object v1, v2

    .line 364
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_19

    .line 361
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_3b
    move-exception v3

    .line 363
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_39

    .line 358
    .end local v3    # "e":Ljava/io/IOException;
    :cond_40
    if-eqz v2, :cond_45

    .line 360
    :try_start_42
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_48

    :cond_45
    :goto_45
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v0, v6

    .line 364
    goto :goto_19

    .line 361
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_48
    move-exception v3

    .line 363
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_45

    .line 351
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4d
    move-exception v3

    .line 352
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :goto_4e
    :try_start_4e
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_6d

    .line 358
    if-eqz v1, :cond_56

    .line 360
    :try_start_53
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_58

    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_56
    :goto_56
    move-object v0, v6

    .line 364
    goto :goto_19

    .line 361
    .restart local v3    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_58
    move-exception v3

    .line 363
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_56

    .line 354
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5d
    move-exception v3

    .line 355
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_5e
    :try_start_5e
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_6d

    .line 358
    if-eqz v1, :cond_66

    .line 360
    :try_start_63
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_68

    :cond_66
    :goto_66
    move-object v0, v6

    .line 364
    goto :goto_19

    .line 361
    :catch_68
    move-exception v3

    .line 363
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_66

    .line 358
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_6d
    move-exception v6

    :goto_6e
    if-eqz v1, :cond_73

    .line 360
    :try_start_70
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    .line 364
    :cond_73
    :goto_73
    throw v6

    .line 361
    :catch_74
    move-exception v3

    .line 363
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_73

    .line 358
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fileReader":Ljava/io/InputStreamReader;
    :catchall_79
    move-exception v6

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_6e

    .line 354
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_7c
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_5e

    .line 351
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_7f
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_4e
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "payload"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, "value":Ljava/lang/String;
    const/4 v0, -0x1

    .line 222
    .local v0, "begin":I
    const/4 v1, -0x1

    .line 223
    .local v1, "end":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 224
    if-ne v0, v6, :cond_c

    .line 239
    :cond_b
    :goto_b
    return-object v3

    .line 227
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "\":\""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 228
    const-string v4, "\","

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 229
    if-ne v1, v6, :cond_26

    .line 230
    const-string v4, "\"\n"

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 232
    :cond_26
    if-eq v1, v6, :cond_b

    .line 235
    if-eq v0, v1, :cond_b

    .line 238
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 239
    goto :goto_b
.end method

.method private getp2pMacAddress()Ljava/lang/String;
    .registers 4

    .prologue
    .line 378
    const/4 v1, 0x0

    .line 379
    .local v1, "mac":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PMacAddressFormFile()Ljava/lang/String;

    move-result-object v1

    .line 380
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_f

    move-object v2, v1

    .line 393
    :goto_e
    return-object v2

    .line 383
    :cond_f
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PMacAddressFromSystem()Ljava/lang/String;

    move-result-object v1

    .line 384
    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1e

    .line 386
    :try_start_1b
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/P2PHandover;->saveMacAddressToRecordFile(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_20

    :cond_1e
    move-object v2, v1

    .line 393
    goto :goto_e

    .line 387
    :catch_20
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 389
    const/4 v2, 0x0

    goto :goto_e
.end method

.method private parseWifiP2p([B)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    .registers 6
    .param p1, "payload"    # [B

    .prologue
    .line 252
    new-instance v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    invoke-direct {v2}, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;-><init>()V

    .line 255
    .local v2, "result":Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    :try_start_5
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, p1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 256
    .local v1, "mpayload":Ljava/lang/String;
    const-string v3, "mac"

    invoke-direct {p0, v1, v3}, Lcom/android/nfc/handover/P2PHandover;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    .line 257
    const-string v3, "devicename"

    invoke-direct {p0, v1, v3}, Lcom/android/nfc/handover/P2PHandover;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_1c} :catch_1d

    .line 263
    .end local v1    # "mpayload":Ljava/lang/String;
    :goto_1c
    return-object v2

    .line 258
    :catch_1d
    move-exception v0

    .line 260
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c
.end method

.method private procHandoverRequest(Landroid/nfc/NdefMessage;Z)Landroid/nfc/NdefMessage;
    .registers 20
    .param p1, "message"    # Landroid/nfc/NdefMessage;
    .param p2, "isFastConnet"    # Z

    .prologue
    .line 407
    const/4 v10, 0x0

    .line 408
    .local v10, "record":Landroid/nfc/NdefRecord;
    const/4 v8, 0x0

    .line 409
    .local v8, "mRemoteHandoverData":Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    const/4 v11, 0x0

    .line 410
    .local v11, "transmiteKey":I
    if-eqz p1, :cond_39

    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_39

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .local v1, "arr$":[Landroid/nfc/NdefRecord;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_13
    if-ge v4, v5, :cond_2b

    aget-object v9, v1, v4

    .line 412
    .local v9, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_36

    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v12

    sget-object v13, Lcom/android/nfc/handover/P2PHandover;->TYPE_WIFI_DIRECT:[B

    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_36

    .line 413
    move-object v10, v9

    .line 422
    .end local v9    # "r":Landroid/nfc/NdefRecord;
    :cond_2b
    if-nez v10, :cond_42

    .line 423
    const-string v12, "P2PHandover"

    const-string v13, "proHandoverRequest can not find target record"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 v12, 0x0

    .line 458
    .end local v1    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :goto_35
    return-object v12

    .line 411
    .restart local v1    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v9    # "r":Landroid/nfc/NdefRecord;
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 418
    .end local v1    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v9    # "r":Landroid/nfc/NdefRecord;
    :cond_39
    const-string v12, "P2PHandover"

    const-string v13, "null == message"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v12, 0x0

    goto :goto_35

    .line 427
    .restart local v1    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_42
    const-string v12, "P2PHandover"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "proHandoverRequest getP2PConnectState() = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PConnectState()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PConnectState()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_77

    .line 429
    new-instance v12, Landroid/nfc/NdefMessage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/nfc/handover/HandoverManager;->createHwBeamConnecttingRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Landroid/nfc/NdefRecord;

    invoke-direct {v12, v13, v14}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto :goto_35

    .line 430
    :cond_77
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PConnectState()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_84

    .line 431
    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/nfc/handover/P2PHandover;->setP2PConnectState(I)V

    .line 434
    :cond_84
    if-nez p2, :cond_10a

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-object v3, v12, v13

    .line 436
    .local v3, "filerecord":Landroid/nfc/NdefRecord;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/P2PHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v12, v3}, Lcom/android/nfc/handover/HandoverManager;->parseConfigInfoRecord(Landroid/nfc/NdefRecord;)Lcom/android/nfc/handover/ConfigInfo;

    move-result-object v2

    .line 437
    .local v2, "configInfo":Lcom/android/nfc/handover/ConfigInfo;
    if-nez v2, :cond_a5

    .line 438
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/nfc/handover/P2PHandover;->setP2PConnectState(I)V

    .line 439
    const/4 v12, 0x0

    goto :goto_35

    .line 442
    :cond_a5
    invoke-virtual {v10}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/nfc/handover/P2PHandover;->parseWifiP2p([B)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v8

    .line 443
    iput-object v2, v8, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    .line 444
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/nfc/handover/P2PHandover;->mTransmiteKey:I

    .end local v11    # "transmiteKey":I
    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/nfc/handover/P2PHandover;->mTransmiteKey:I

    .line 445
    .restart local v11    # "transmiteKey":I
    const-string v12, "P2PHandover"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "proHandoverRequest transmiteKey = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v6, Lcom/android/nfc/handover/P2PHandoverClientSession;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v8, v11}, Lcom/android/nfc/handover/P2PHandoverClientSession;-><init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;I)V

    .line 447
    .local v6, "mP2pHandoverSession":Lcom/android/nfc/handover/P2PHandoverClientSession;
    invoke-virtual {v6}, Lcom/android/nfc/handover/P2PHandoverClientSession;->start()V

    .line 455
    .end local v2    # "configInfo":Lcom/android/nfc/handover/ConfigInfo;
    .end local v3    # "filerecord":Landroid/nfc/NdefRecord;
    :goto_dd
    new-instance v7, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    invoke-direct {v7}, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;-><init>()V

    .line 456
    .local v7, "mP2pLocalHandoverData":Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/handover/P2PHandover;->getp2pMacAddress()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/handover/P2PHandover;->getDeviceName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v7, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    .line 458
    new-instance v12, Landroid/nfc/NdefMessage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/P2PHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/nfc/handover/HandoverManager;->createHandoverSelectRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/nfc/NdefRecord;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/nfc/handover/P2PHandover;->createResponeDataRecord(Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)Landroid/nfc/NdefRecord;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-direct {v12, v13, v14}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto/16 :goto_35

    .line 449
    .end local v6    # "mP2pHandoverSession":Lcom/android/nfc/handover/P2PHandoverClientSession;
    .end local v7    # "mP2pLocalHandoverData":Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    :cond_10a
    const-string v12, "P2PHandover"

    const-string v13, "P2p fast connect"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-virtual {v10}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/nfc/handover/P2PHandover;->parseWifiP2p([B)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v8

    .line 451
    new-instance v6, Lcom/android/nfc/handover/P2PHandoverClientSession;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v8, v11}, Lcom/android/nfc/handover/P2PHandoverClientSession;-><init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;I)V

    .line 452
    .restart local v6    # "mP2pHandoverSession":Lcom/android/nfc/handover/P2PHandoverClientSession;
    invoke-virtual {v6}, Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PFastConnect()V

    goto :goto_dd
.end method

.method private setP2PConnectState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 681
    const-string v0, "P2PHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setP2PConnectState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iput p1, p0, Lcom/android/nfc/handover/P2PHandover;->mConnectState:I

    .line 683
    return-void
.end method


# virtual methods
.method public createDataRecord()Landroid/nfc/NdefRecord;
    .registers 4

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "devicename":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getp2pMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "deviceAddress":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/android/nfc/handover/P2PHandover;->createP2PDateRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    return-object v2
.end method

.method public createFastConDataRecord()Landroid/nfc/NdefRecord;
    .registers 4

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "devicename":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getp2pMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "deviceAddress":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/android/nfc/handover/P2PHandover;->createP2PDateRecord(Ljava/lang/String;Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v2

    return-object v2
.end method

.method public disableDevice()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 559
    const-string v2, "P2PHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableDevice ()isConnected = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/nfc/handover/P2PHandover;->isConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    if-eqz v2, :cond_27

    .line 562
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->deviceClose()V

    .line 563
    iput-object v6, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 565
    :cond_27
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    const-string v3, "wifip2p"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 566
    .local v1, "manager":Landroid/net/wifi/p2p/WifiP2pManager;
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    .line 568
    .local v0, "channel":Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    iget-boolean v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    if-nez v2, :cond_44

    .line 569
    invoke-virtual {v1, v0, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 571
    :cond_44
    iput-boolean v5, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    .line 572
    iput-boolean v5, p0, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 574
    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 576
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_5f

    iget-boolean v2, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiOriginalState:Z

    if-nez v2, :cond_5f

    .line 578
    const-string v2, "P2PHandover"

    const-string v3, "disableDevice()close wifi"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 581
    :cond_5f
    iput-boolean v5, p0, Lcom/android/nfc/handover/P2PHandover;->mOriginalStateFixed:Z

    .line 582
    const/4 v2, 0x1

    return v2
.end method

.method public doFastConHandover(Landroid/nfc/NdefMessage;)V
    .registers 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x2

    .line 653
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    array-length v3, v3

    if-ge v3, v5, :cond_9

    .line 669
    :cond_8
    :goto_8
    return-void

    .line 656
    :cond_9
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 658
    .local v2, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-ne v3, v5, :cond_8

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/P2PHandover;->TYPE_WIFI_DIRECT:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 659
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandover;->parseWifiP2p([B)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v1

    .line 660
    .local v1, "mRemoteHandoverData":Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/P2PHandover;->checkRemoteHandoverData(Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 661
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/P2PHandoverServerSession;-><init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)V

    .line 662
    .local v0, "P2pServerSession":Lcom/android/nfc/handover/P2PHandoverServerSession;
    invoke-virtual {v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PFastConnect()V

    goto :goto_8
.end method

.method public doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V
    .registers 11
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 488
    iget-boolean v2, p0, Lcom/android/nfc/handover/P2PHandover;->mOriginalStateFixed:Z

    if-nez v2, :cond_11

    .line 489
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiOriginalState:Z

    .line 490
    iput-boolean v6, p0, Lcom/android/nfc/handover/P2PHandover;->mOriginalStateFixed:Z

    .line 493
    :cond_11
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    array-length v2, v2

    if-ge v2, v5, :cond_20

    .line 494
    const-string v2, "P2PHandover"

    const-string v3, "doHandoverUri it is not a availability data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_1f
    :goto_1f
    return-void

    .line 498
    :cond_20
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v1, v2, v6

    .line 499
    .local v1, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    if-ne v2, v5, :cond_1f

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    sget-object v3, Lcom/android/nfc/handover/P2PHandover;->TYPE_WIFI_DIRECT:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 501
    const-string v2, "P2PHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doHandoverUri getP2PConnectState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PConnectState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PConnectState()I

    move-result v2

    if-eq v2, v5, :cond_1f

    .line 504
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandover;->getP2PConnectState()I

    move-result v2

    if-ne v2, v6, :cond_63

    .line 505
    invoke-direct {p0, v5}, Lcom/android/nfc/handover/P2PHandover;->setP2PConnectState(I)V

    .line 508
    :cond_63
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/nfc/handover/P2PHandover;->parseWifiP2p([B)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v0

    .line 509
    .local v0, "mRemoteHandoverData":Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandover;->checkRemoteHandoverData(Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 510
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-object v2, v2, Lcom/android/nfc/handover/HandoverManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    invoke-virtual {v2}, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->stopMonitoring()V

    .line 511
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_98

    .line 512
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    if-eqz v2, :cond_8b

    .line 513
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->deviceClose()V

    .line 514
    iput-object v7, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 517
    :cond_8b
    new-instance v2, Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-direct {v2, p0, v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;-><init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)V

    iput-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 518
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->start()V

    goto :goto_1f

    .line 520
    :cond_98
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    if-nez v2, :cond_aa

    .line 521
    new-instance v2, Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-direct {v2, p0, v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;-><init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)V

    iput-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 522
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->start()V

    goto/16 :goto_1f

    .line 524
    :cond_aa
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getRemoteHandoverData()Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    if-eqz v2, :cond_c4

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getRemoteHandoverData()Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_101

    .line 526
    :cond_c4
    const-string v2, "P2PHandover"

    const-string v3, "do not connect this divece before"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getRemoteHandoverData()Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    if-eqz v2, :cond_f3

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getRemoteHandoverData()Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    move-result-object v2

    iget-object v2, v2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f3

    .line 529
    const-string v2, "P2PHandover"

    const-string v3, "clear data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stop()V

    .line 531
    iput-object v7, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 533
    :cond_f3
    new-instance v2, Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-direct {v2, p0, v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;-><init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)V

    iput-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    .line 534
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mP2pServerSession:Lcom/android/nfc/handover/P2PHandoverServerSession;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->start()V

    goto/16 :goto_1f

    .line 537
    :cond_101
    const-string v2, "P2PHandover"

    const-string v3, "already connect to client"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isHandoverSupported()Z
    .registers 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/handover/P2PHandover;->isP2pHandoverSupport:Z

    .line 612
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandover;->isP2pHandoverSupport:Z

    return v0
.end method

.method public saveMacAddressToRecordFile(Ljava/lang/String;)V
    .registers 7
    .param p1, "macAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 295
    if-nez p1, :cond_3

    .line 304
    :cond_2
    :goto_2
    return-void

    .line 299
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandover;->mContext:Landroid/content/Context;

    const-string v3, "nfc-record"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 300
    .local v1, "record":Landroid/content/SharedPreferences;
    const-string v2, "p2pMacAddress"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "p2pMacAddress":Ljava/lang/String;
    if-eqz v0, :cond_1b

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 302
    :cond_1b
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "p2pMacAddress"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2
.end method

.method public setDeviceConnected(Z)V
    .registers 3
    .param p1, "connected"    # Z

    .prologue
    .line 594
    iput-boolean p1, p0, Lcom/android/nfc/handover/P2PHandover;->isConnected:Z

    .line 595
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandover;->isConnected:Z

    if-eqz v0, :cond_b

    .line 596
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandover;->setP2PConnectState(I)V

    .line 600
    :goto_a
    return-void

    .line 598
    :cond_b
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandover;->setP2PConnectState(I)V

    goto :goto_a
.end method

.method public tryFastConHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 3
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 640
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/nfc/handover/P2PHandover;->procHandoverRequest(Landroid/nfc/NdefMessage;Z)Landroid/nfc/NdefMessage;

    move-result-object v0

    return-object v0
.end method

.method public tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 3
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandover;->mOriginalStateFixed:Z

    if-nez v0, :cond_f

    .line 472
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/handover/P2PHandover;->mWifiOriginalState:Z

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/P2PHandover;->mOriginalStateFixed:Z

    .line 475
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/nfc/handover/P2PHandover;->procHandoverRequest(Landroid/nfc/NdefMessage;Z)Landroid/nfc/NdefMessage;

    move-result-object v0

    return-object v0
.end method
