.class public Lcom/android/nfc/P2pLinkManager;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/nfc/P2pEventListener$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/P2pLinkManager$SendTask;,
        Lcom/android/nfc/P2pLinkManager$ConnectTask;
    }
.end annotation


# static fields
.field static BT_CONNECT:Ljava/lang/String; = null

.field static final DBG:Z = true

.field static final DISABLE_BEAM_DEFAULT:Ljava/lang/String; = "android.nfc.disable_beam_default"

.field static final ECHOSERVER_ENABLED:Z = false

.field static final HANDOVER_FAILURE:I = 0x1

.field static final HANDOVER_SAP:I = 0x14

.field static final HANDOVER_SUCCESS:I = 0x0

.field static final HANDOVER_UNSUPPORTED:I = 0x2

.field static final LINK_FIRST_PDU_LIMIT_MS:I = 0xc8

.field static final LINK_NOTHING_TO_SEND_DEBOUNCE_MS:I = 0x2ee

.field static final LINK_SEND_COMPLETE_DEBOUNCE_MS:I = 0xfa

.field static final LINK_SEND_CONFIRMED_DEBOUNCE_MS:I = 0x1388

.field static final LINK_SEND_PENDING_DEBOUNCE_MS:I = 0xbb8

.field static final LINK_STATE_DEBOUNCE:I = 0x4

.field static final LINK_STATE_DOWN:I = 0x1

.field static final LINK_STATE_UP:I = 0x3

.field static final LINK_STATE_WAITING_PDU:I = 0x2

.field static final LOWER_TESTER_ECHO_SERVICE_SIMULATION_MODE:Z = false

.field static final MSG_DEBOUNCE_TIMEOUT:I = 0x1

.field static final MSG_HANDOVER_HWBEAM_CONNECTTING:I = 0x14

.field static final MSG_HANDOVER_NOT_SUPPORTED:I = 0x7

.field static final MSG_RECEIVE_COMPLETE:I = 0x2

.field static final MSG_RECEIVE_HANDOVER:I = 0x3

.field static final MSG_SEND_COMPLETE:I = 0x4

.field static final MSG_SHOW_CONFIRMATION_UI:I = 0x8

.field static final MSG_START_ECHOSERVER:I = 0x5

.field static final MSG_START_ECHOSERVER2:I = 0x8

.field static final MSG_START_LT:I = 0xa

.field static final MSG_STOP_ECHOSERVER:I = 0x6

.field static final MSG_STOP_ECHOSERVER2:I = 0x9

.field static final MSG_STOP_LT:I = 0xb

.field static final NDEFPUSH_SAP:I = 0x10

.field static P2P_CONNECT:Ljava/lang/String; = null

.field public static final PREFS_NAME:Ljava/lang/String; = "MyPrefsFile"

.field static final SEND_STATE_NEED_CONFIRMATION:I = 0x2

.field static final SEND_STATE_NOTHING_TO_SEND:I = 0x1

.field static final SEND_STATE_SENDING:I = 0x3

.field static final SEND_STATE_SEND_COMPLETE:I = 0x4

.field static final SNEP_FAILURE:I = 0x1

.field static final SNEP_HANDOVER_HWBEAM_CONNECTTING:I = 0x3

.field static final SNEP_SUCCESS:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcP2pLinkManager"

.field static WIFI_CONNECT:Ljava/lang/String;

.field static WLAN_SHARE:Ljava/lang/String;

.field static connnectType:[Ljava/lang/String;


# instance fields
.field final mActivityManager:Landroid/app/ActivityManager;

.field mCallbackNdef:Landroid/nfc/IAppCallback;

.field mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

.field final mContext:Landroid/content/Context;

.field final mDefaultMiu:I

.field final mDefaultRwSize:I

.field final mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

.field final mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

.field final mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

.field mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

.field final mEventListener:Lcom/android/nfc/P2pEventListener;

.field private mFastConnType:I

.field mFirstBeam:Z

.field final mHandler:Landroid/os/Handler;

.field final mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

.field mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

.field final mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

.field final mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

.field mIsReceiveEnabled:Z

.field mIsSendEnabled:Z

.field mLastLlcpActivationTime:J

.field mLinkState:I

.field mLlcpConnectDelayed:Z

.field mLlcpServicesConnected:Z

.field mLtSimulator:Lcom/android/nfc/echoserver/LowerTesterSimulator;

.field mMessageToSend:Landroid/nfc/NdefMessage;

.field mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field final mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

.field final mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPrefs:Landroid/content/SharedPreferences;

.field mSendFlags:I

.field mSendState:I

.field mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

.field mSnepClient:Lcom/android/nfc/snep/SnepClient;

.field mUrisToSend:[Landroid/net/Uri;

.field mValidCallbackPackages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 264
    const-string v0, "content://huawei/btconnect/1"

    sput-object v0, Lcom/android/nfc/P2pLinkManager;->BT_CONNECT:Ljava/lang/String;

    .line 265
    const-string v0, "content://huawei/wificonnect/2"

    sput-object v0, Lcom/android/nfc/P2pLinkManager;->WIFI_CONNECT:Ljava/lang/String;

    .line 266
    const-string v0, "content://huawei/p2pconnect/3"

    sput-object v0, Lcom/android/nfc/P2pLinkManager;->P2P_CONNECT:Ljava/lang/String;

    .line 267
    const-string v0, "content://huawei/wlanshare/4"

    sput-object v0, Lcom/android/nfc/P2pLinkManager;->WLAN_SHARE:Ljava/lang/String;

    .line 269
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/nfc/P2pLinkManager;->BT_CONNECT:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/nfc/P2pLinkManager;->WIFI_CONNECT:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/nfc/P2pLinkManager;->P2P_CONNECT:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/nfc/P2pLinkManager;->WLAN_SHARE:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/nfc/P2pLinkManager;->connnectType:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;II)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/HandoverManager;
    .param p3, "defaultMiu"    # I
    .param p4, "defaultRwSize"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    new-instance v0, Lcom/android/nfc/P2pLinkManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$1;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    .line 1071
    new-instance v0, Lcom/android/nfc/P2pLinkManager$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$2;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    .line 1078
    new-instance v0, Lcom/android/nfc/P2pLinkManager$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$3;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 273
    new-instance v0, Lcom/android/nfc/ndefpush/NdefPushServer;

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mNppCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/ndefpush/NdefPushServer;-><init>(ILcom/android/nfc/ndefpush/NdefPushServer$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    .line 274
    new-instance v0, Lcom/android/nfc/snep/SnepServer;

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-direct {v0, v1, p3, p4}, Lcom/android/nfc/snep/SnepServer;-><init>(Lcom/android/nfc/snep/SnepServer$Callback;II)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    .line 275
    new-instance v0, Lcom/android/nfc/handover/HandoverServer;

    const/16 v1, 0x14

    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    invoke-direct {v0, v1, p2, v2}, Lcom/android/nfc/handover/HandoverServer;-><init>(ILcom/android/nfc/handover/HandoverManager;Lcom/android/nfc/handover/HandoverServer$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    .line 282
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 284
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    .line 285
    new-instance v0, Lcom/android/nfc/P2pEventManager;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/P2pEventManager;-><init>(Landroid/content/Context;Lcom/android/nfc/P2pEventListener$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    .line 286
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    .line 287
    iput v4, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 288
    iput v4, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 289
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 290
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 291
    const-string v0, "NfcServicePrefs"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 292
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "first_beam"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mFirstBeam:Z

    .line 293
    iput-object p2, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 294
    iput p3, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultMiu:I

    .line 295
    iput p4, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultRwSize:I

    .line 296
    iput-boolean v3, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 297
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/P2pLinkManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/nfc/P2pLinkManager;->setFastConn(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/P2pLinkManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/P2pLinkManager;
    .param p1, "x1"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/nfc/P2pLinkManager;->setSender(Z)V

    return-void
.end method

.method static checkIsFastConnect([Landroid/net/Uri;)Z
    .registers 10
    .param p0, "uris"    # [Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1421
    array-length v6, p0

    if-le v6, v5, :cond_6

    .line 1430
    :cond_5
    :goto_5
    return v4

    .line 1424
    :cond_6
    const-string v6, "NfcP2pLinkManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIsFastConnect uris = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p0, v4

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    sget-object v0, Lcom/android/nfc/P2pLinkManager;->connnectType:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_28
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 1426
    .local v3, "type":Ljava/lang/String;
    aget-object v6, p0, v4

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    move v4, v5

    .line 1427
    goto :goto_5

    .line 1425
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_28
.end method

.method static getFastConnectType([Landroid/net/Uri;)I
    .registers 9
    .param p0, "uris"    # [Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 1442
    const/4 v3, 0x0

    .line 1443
    .local v3, "mode":I
    array-length v6, p0

    const/4 v7, 0x1

    if-le v6, v7, :cond_7

    .line 1453
    :goto_6
    return v5

    .line 1446
    :cond_7
    sget-object v0, Lcom/android/nfc/P2pLinkManager;->connnectType:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_b
    if-ge v1, v2, :cond_22

    aget-object v4, v0, v1

    .line 1448
    .local v4, "type":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 1449
    aget-object v6, p0, v5

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    move v5, v3

    .line 1450
    goto :goto_6

    .line 1446
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .end local v4    # "type":Ljava/lang/String;
    :cond_22
    move v5, v3

    .line 1453
    goto :goto_6
.end method

.method private isWifiConnectedWlan()Z
    .registers 7

    .prologue
    .line 1258
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1259
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1260
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1261
    .local v1, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_47

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ltz v3, :cond_47

    .line 1263
    :try_start_22
    invoke-static {v2}, Lcom/huawei/android/net/wifi/NfcWifiManagerEx;->getWpaSuppConfig(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_27

    .line 1264
    const/4 v3, 0x1

    .line 1271
    .end local v1    # "wi":Landroid/net/wifi/WifiInfo;
    :goto_26
    return v3

    .line 1265
    .restart local v1    # "wi":Landroid/net/wifi/WifiInfo;
    :catch_27
    move-exception v0

    .line 1266
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "NfcP2pLinkManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoSuchMethodException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1271
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "wi":Landroid/net/wifi/WifiInfo;
    :cond_47
    const/4 v3, 0x0

    goto :goto_26
.end method

.method static linkStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 1383
    packed-switch p0, :pswitch_data_12

    .line 1393
    const-string v0, "<error>"

    :goto_5
    return-object v0

    .line 1385
    :pswitch_6
    const-string v0, "LINK_STATE_DOWN"

    goto :goto_5

    .line 1387
    :pswitch_9
    const-string v0, "LINK_STATE_DEBOUNCE"

    goto :goto_5

    .line 1389
    :pswitch_c
    const-string v0, "LINK_STATE_UP"

    goto :goto_5

    .line 1391
    :pswitch_f
    const-string v0, "LINK_STATE_WAITING_PDU"

    goto :goto_5

    .line 1383
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method private onP2pSendConfirmed(Z)V
    .registers 7
    .param p1, "requireConfirmation"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 1339
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendConfirmed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    monitor-enter p0

    .line 1341
    :try_start_b
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v3, :cond_15

    if-eqz p1, :cond_17

    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v0, v4, :cond_17

    .line 1343
    :cond_15
    monitor-exit p0

    .line 1367
    :goto_16
    return-void

    .line 1345
    :cond_17
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1346
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v4, :cond_29

    .line 1351
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 1352
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 1366
    :cond_24
    :goto_24
    monitor-exit p0

    goto :goto_16

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw v0

    .line 1353
    :cond_29
    :try_start_29
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v2, :cond_35

    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    if-eqz v0, :cond_35

    .line 1354
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V

    goto :goto_24

    .line 1355
    :cond_35
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v0, v2, :cond_41

    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpConnectDelayed:Z

    if-eqz v0, :cond_41

    .line 1357
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    goto :goto_24

    .line 1358
    :cond_41
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_24

    .line 1360
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1361
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1364
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V
    :try_end_59
    .catchall {:try_start_29 .. :try_end_59} :catchall_26

    goto :goto_24
.end method

.method static sendStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 1370
    packed-switch p0, :pswitch_data_10

    .line 1378
    const-string v0, "<error>"

    :goto_5
    return-object v0

    .line 1372
    :pswitch_6
    const-string v0, "SEND_STATE_NOTHING_TO_SEND"

    goto :goto_5

    .line 1374
    :pswitch_9
    const-string v0, "SEND_STATE_NEED_CONFIRMATION"

    goto :goto_5

    .line 1376
    :pswitch_c
    const-string v0, "SEND_STATE_SENDING"

    goto :goto_5

    .line 1370
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private setFastConn(Z)V
    .registers 7
    .param p1, "isFastConn"    # Z

    .prologue
    .line 786
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v3, "MyPrefsFile"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 787
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 788
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "isFastConn"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 789
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 790
    return-void
.end method

.method private setSender(Z)V
    .registers 7
    .param p1, "isSender"    # Z

    .prologue
    .line 1057
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v3, "MyPrefsFile"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1058
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1059
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "isSender"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1060
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1061
    return-void
.end method


# virtual methods
.method beamDefaultDisabled(Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 582
    :try_start_2
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 583
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_b} :catch_10

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_13

    .line 589
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_f
    return v2

    .line 586
    :catch_10
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v2, v3

    .line 587
    goto :goto_f

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_13
    move v2, v3

    .line 589
    goto :goto_f
.end method

.method cancelSendNdefMessage()V
    .registers 3

    .prologue
    .line 709
    monitor-enter p0

    .line 710
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    if-eqz v0, :cond_b

    .line 711
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 713
    :cond_b
    monitor-exit p0

    .line 714
    return-void

    .line 713
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method connectLlcpServices()V
    .registers 3

    .prologue
    .line 756
    monitor-enter p0

    .line 757
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_c

    .line 758
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Still had a reference to mConnectTask!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_c
    new-instance v0, Lcom/android/nfc/P2pLinkManager$ConnectTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 761
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 762
    monitor-exit p0

    .line 763
    return-void

    .line 762
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 604
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&feature=beam"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NdefRecord;->createUri(Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 606
    .local v1, "appUri":Landroid/nfc/NdefRecord;
    invoke-static {p1}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 607
    .local v0, "appRecord":Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method disconnectLlcpServices()V
    .registers 3

    .prologue
    .line 611
    monitor-enter p0

    .line 612
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    if-eqz v0, :cond_e

    .line 613
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mConnectTask:Lcom/android/nfc/P2pLinkManager$ConnectTask;

    .line 617
    :cond_e
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v0, :cond_1a

    .line 618
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 621
    :cond_1a
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v0, :cond_26

    .line 622
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 625
    :cond_26
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v0, :cond_32

    .line 626
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 629
    :cond_32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 630
    monitor-exit p0

    .line 631
    return-void

    .line 630
    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1398
    monitor-enter p0

    .line 1399
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsSendEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsReceiveEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    invoke-static {v1}, Lcom/android/nfc/P2pLinkManager;->linkStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSendState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    invoke-static {v1}, Lcom/android/nfc/P2pLinkManager;->sendStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCallbackNdef="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMessageToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUrisToSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1407
    monitor-exit p0

    .line 1408
    return-void

    .line 1407
    :catchall_b3
    move-exception v0

    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_1 .. :try_end_b5} :catchall_b3

    throw v0
.end method

.method public enableDisable(ZZ)V
    .registers 5
    .param p1, "sendEnable"    # Z
    .param p2, "receiveEnable"    # Z

    .prologue
    .line 304
    monitor-enter p0

    .line 305
    :try_start_1
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-nez v0, :cond_2c

    if-eqz p2, :cond_2c

    .line 308
    invoke-static {}, Landroid/nfc/DtaHelper;->in_dta_mode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 309
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->start()V

    .line 312
    :cond_12
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->start()V

    .line 313
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->start()V

    .line 314
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_26

    .line 315
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 330
    :cond_26
    :goto_26
    iput-boolean p1, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    .line 331
    iput-boolean p2, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    .line 332
    monitor-exit p0

    .line 333
    return-void

    .line 317
    :cond_2c
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mIsReceiveEnabled:Z

    if-eqz v0, :cond_26

    if-nez p2, :cond_26

    .line 320
    invoke-static {}, Landroid/nfc/DtaHelper;->in_dta_mode()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 321
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mDefaultSnepServer:Lcom/android/nfc/snep/SnepServer;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer;->stop()V

    .line 324
    :cond_3d
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mNdefPushServer:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer;->stop()V

    .line 325
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverServer:Lcom/android/nfc/handover/HandoverServer;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer;->stop()V

    .line 326
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_26

    .line 327
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_26

    .line 332
    :catchall_52
    move-exception v0

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_52

    throw v0
.end method

.method getMessageAarPresent(Landroid/nfc/NdefMessage;)I
    .registers 10
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x0

    .line 1317
    if-nez p1, :cond_4

    .line 1330
    :cond_3
    :goto_3
    return v5

    .line 1320
    :cond_4
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    .line 1321
    .local v4, "records":[Landroid/nfc/NdefRecord;
    if-eqz v4, :cond_3

    .line 1324
    move-object v0, v4

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_d
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 1325
    .local v3, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_26

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1327
    const/4 v5, 0x1

    goto :goto_3

    .line 1324
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method getMessageSize(Landroid/nfc/NdefMessage;)I
    .registers 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1276
    if-eqz p1, :cond_8

    .line 1277
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    .line 1279
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method getMessageTnf(Landroid/nfc/NdefMessage;)I
    .registers 5
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v1, 0x0

    .line 1284
    if-nez p1, :cond_4

    .line 1291
    :cond_3
    :goto_3
    return v1

    .line 1287
    :cond_4
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1288
    .local v0, "records":[Landroid/nfc/NdefRecord;
    if-eqz v0, :cond_3

    array-length v2, v0

    if-eqz v2, :cond_3

    .line 1291
    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    goto :goto_3
.end method

.method getMessageType(Landroid/nfc/NdefMessage;)Ljava/lang/String;
    .registers 7
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1295
    if-nez p1, :cond_5

    .line 1296
    const-string v2, "null"

    .line 1312
    :goto_4
    return-object v2

    .line 1298
    :cond_5
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 1299
    .local v1, "records":[Landroid/nfc/NdefRecord;
    if-eqz v1, :cond_e

    array-length v2, v1

    if-nez v2, :cond_11

    .line 1300
    :cond_e
    const-string v2, "null"

    goto :goto_4

    .line 1302
    :cond_11
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 1303
    .local v0, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    packed-switch v2, :pswitch_data_2e

    .line 1312
    const-string v2, "unknown"

    goto :goto_4

    .line 1306
    :pswitch_1e
    const-string v2, "uri"

    goto :goto_4

    .line 1310
    :pswitch_21
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_4

    .line 1303
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_21
        :pswitch_21
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v6, 0x1

    .line 1120
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_19c

    .line 1253
    :goto_8
    :pswitch_8
    return v6

    .line 1122
    :pswitch_9
    monitor-enter p0

    .line 1123
    :try_start_a
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer;->start()V

    .line 1124
    monitor-exit p0

    goto :goto_8

    .line 1125
    :catchall_11
    move-exception v2

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw v2

    .line 1127
    :pswitch_14
    monitor-enter p0

    .line 1128
    :try_start_15
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer;->stop()V

    .line 1129
    monitor-exit p0

    goto :goto_8

    .line 1130
    :catchall_1c
    move-exception v2

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v2

    .line 1133
    :pswitch_1f
    monitor-enter p0

    .line 1134
    :try_start_20
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer2;->start()V

    .line 1135
    monitor-exit p0

    goto :goto_8

    .line 1136
    :catchall_27
    move-exception v2

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v2

    .line 1138
    :pswitch_2a
    monitor-enter p0

    .line 1139
    :try_start_2b
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer2;->stop()V

    .line 1140
    monitor-exit p0

    goto :goto_8

    .line 1141
    :catchall_32
    move-exception v2

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_32

    throw v2

    .line 1143
    :pswitch_35
    monitor-enter p0

    .line 1144
    :try_start_36
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mLtSimulator:Lcom/android/nfc/echoserver/LowerTesterSimulator;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer2;->start()V

    .line 1145
    monitor-exit p0

    goto :goto_8

    .line 1146
    :catchall_3d
    move-exception v2

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_3d

    throw v2

    .line 1148
    :pswitch_40
    monitor-enter p0

    .line 1149
    :try_start_41
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mLtSimulator:Lcom/android/nfc/echoserver/LowerTesterSimulator;

    invoke-virtual {v2}, Lcom/android/nfc/echoserver/EchoServer2;->stop()V

    .line 1150
    monitor-exit p0

    goto :goto_8

    .line 1151
    :catchall_48
    move-exception v2

    monitor-exit p0
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_48

    throw v2

    .line 1153
    :pswitch_4b
    monitor-enter p0

    .line 1154
    :try_start_4c
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v4, :cond_55

    .line 1155
    monitor-exit p0

    goto :goto_8

    .line 1169
    :catchall_52
    move-exception v2

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_52

    throw v2

    .line 1157
    :cond_55
    :try_start_55
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v3, :cond_74

    .line 1158
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {p0, v2}, Lcom/android/nfc/P2pLinkManager;->getMessageSize(Landroid/nfc/NdefMessage;)I

    move-result v2

    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {p0, v3}, Lcom/android/nfc/P2pLinkManager;->getMessageTnf(Landroid/nfc/NdefMessage;)I

    move-result v3

    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {p0, v4}, Lcom/android/nfc/P2pLinkManager;->getMessageType(Landroid/nfc/NdefMessage;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {p0, v5}, Lcom/android/nfc/P2pLinkManager;->getMessageAarPresent(Landroid/nfc/NdefMessage;)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/nfc/EventLogTags;->writeNfcShareFail(IILjava/lang/String;I)V

    .line 1162
    :cond_74
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "Debounce timeout"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 1164
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1165
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 1166
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 1167
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pOutOfRange()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pOutOfRange()V

    .line 1169
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_55 .. :try_end_94} :catchall_52

    goto/16 :goto_8

    .line 1173
    :pswitch_96
    monitor-enter p0

    .line 1174
    :try_start_97
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v2, v6, :cond_a1

    .line 1175
    monitor-exit p0

    goto/16 :goto_8

    .line 1183
    :catchall_9e
    move-exception v2

    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_97 .. :try_end_a0} :catchall_9e

    throw v2

    .line 1177
    :cond_a1
    :try_start_a1
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v3, :cond_a8

    .line 1178
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 1180
    :cond_a8
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1181
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pReceiveComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 1183
    monitor-exit p0
    :try_end_b9
    .catchall {:try_start_a1 .. :try_end_b9} :catchall_9e

    goto/16 :goto_8

    .line 1186
    :pswitch_bb
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/nfc/NdefMessage;

    .line 1187
    .local v1, "m":Landroid/nfc/NdefMessage;
    monitor-enter p0

    .line 1188
    :try_start_c0
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-ne v2, v6, :cond_ca

    .line 1189
    monitor-exit p0

    goto/16 :goto_8

    .line 1198
    :catchall_c7
    move-exception v2

    monitor-exit p0
    :try_end_c9
    .catchall {:try_start_c0 .. :try_end_c9} :catchall_c7

    throw v2

    .line 1191
    :cond_ca
    :try_start_ca
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v3, :cond_d1

    .line 1192
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 1194
    :cond_d1
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1195
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pReceiveComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/nfc/P2pEventListener;->onP2pReceiveComplete(Z)V

    .line 1197
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService;->sendMockNdefTag(Landroid/nfc/NdefMessage;)V

    .line 1198
    monitor-exit p0
    :try_end_e9
    .catchall {:try_start_ca .. :try_end_e9} :catchall_c7

    goto/16 :goto_8

    .line 1201
    .end local v1    # "m":Landroid/nfc/NdefMessage;
    :pswitch_eb
    monitor-enter p0

    .line 1202
    const/4 v2, 0x0

    :try_start_ed
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1204
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v6, :cond_f7

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v3, :cond_fd

    .line 1205
    :cond_f7
    monitor-exit p0

    goto/16 :goto_8

    .line 1210
    :catchall_fa
    move-exception v2

    monitor-exit p0
    :try_end_fc
    .catchall {:try_start_ed .. :try_end_fc} :catchall_fa

    throw v2

    .line 1207
    :cond_fd
    const/4 v2, 0x1

    :try_start_fe
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1208
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pHandoverNotSupported()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverNotSupported()V

    .line 1210
    monitor-exit p0
    :try_end_10d
    .catchall {:try_start_fe .. :try_end_10d} :catchall_fa

    goto/16 :goto_8

    .line 1213
    :pswitch_10f
    monitor-enter p0

    .line 1214
    const/4 v2, 0x0

    :try_start_111
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1216
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v6, :cond_11b

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v3, :cond_121

    .line 1217
    :cond_11b
    monitor-exit p0

    goto/16 :goto_8

    .line 1236
    :catchall_11e
    move-exception v2

    monitor-exit p0
    :try_end_120
    .catchall {:try_start_111 .. :try_end_120} :catchall_11e

    throw v2

    .line 1219
    :cond_121
    const/4 v2, 0x4

    :try_start_122
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1220
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1221
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pSendComplete()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pSendComplete()V

    .line 1224
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I

    if-ne v2, v4, :cond_14d

    invoke-direct {p0}, Lcom/android/nfc/P2pLinkManager;->isWifiConnectedWlan()Z

    move-result v2

    if-eqz v2, :cond_14d

    .line 1225
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const v3, 0x7f070011

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1229
    :cond_14d
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;
    :try_end_14f
    .catchall {:try_start_122 .. :try_end_14f} :catchall_11e

    if-eqz v2, :cond_156

    .line 1231
    :try_start_151
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-interface {v2}, Landroid/nfc/IAppCallback;->onNdefPushComplete()V
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_156} :catch_159
    .catchall {:try_start_151 .. :try_end_156} :catchall_11e

    .line 1236
    :cond_156
    :goto_156
    :try_start_156
    monitor-exit p0

    goto/16 :goto_8

    .line 1232
    :catch_159
    move-exception v0

    .line 1233
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NfcP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed NDEF completed callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_176
    .catchall {:try_start_156 .. :try_end_176} :catchall_11e

    goto :goto_156

    .line 1241
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_177
    monitor-enter p0

    .line 1242
    const/4 v2, 0x0

    :try_start_179
    iput-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 1243
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v2, v6, :cond_183

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v3, :cond_189

    .line 1244
    :cond_183
    monitor-exit p0

    goto/16 :goto_8

    .line 1249
    :catchall_186
    move-exception v2

    monitor-exit p0
    :try_end_188
    .catchall {:try_start_179 .. :try_end_188} :catchall_186

    throw v2

    .line 1246
    :cond_189
    const/4 v2, 0x1

    :try_start_18a
    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 1247
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "onP2pHandoverNotSupported()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v2}, Lcom/android/nfc/P2pEventListener;->onP2pHandoverHeBeamConnnectting()V

    .line 1249
    monitor-exit p0
    :try_end_199
    .catchall {:try_start_18a .. :try_end_199} :catchall_186

    goto/16 :goto_8

    .line 1120
    nop

    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_bb
        :pswitch_96
        :pswitch_10f
        :pswitch_9
        :pswitch_14
        :pswitch_eb
        :pswitch_1f
        :pswitch_2a
        :pswitch_35
        :pswitch_40
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_177
    .end packed-switch
.end method

.method public isLlcpActive()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 340
    monitor-enter p0

    .line 341
    :try_start_2
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v1, v0, :cond_8

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 342
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_a

    throw v0
.end method

.method onHandoverHwBeamConnectting()V
    .registers 3

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1413
    return-void
.end method

.method onHandoverUnsupported()V
    .registers 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 686
    return-void
.end method

.method public onLlcpActivated()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 363
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "LLCP activated"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    monitor-enter p0

    .line 366
    :try_start_9
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v0, :cond_12

    .line 367
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpActivated()V

    .line 369
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpConnectDelayed:Z

    .line 371
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    packed-switch v0, :pswitch_data_96

    .line 418
    :cond_20
    :goto_20
    monitor-exit p0

    .line 419
    :goto_21
    return-void

    .line 373
    :pswitch_22
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 374
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 375
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pInRange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pInRange()V

    .line 377
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->prepareMessageToSend()V

    .line 378
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverManager;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 389
    :cond_47
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_58

    .line 390
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed(Z)V

    goto :goto_20

    .line 418
    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_9 .. :try_end_57} :catchall_55

    throw v0

    .line 393
    :cond_58
    const/4 v0, 0x2

    :try_start_59
    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    .line 394
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onP2pSendConfirmationRequested()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I

    invoke-direct {p0}, Lcom/android/nfc/P2pLinkManager;->isWifiConnectedWlan()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/P2pEventListener;->onP2pSendConfirmationRequested(IZ)V

    goto :goto_20

    .line 402
    :pswitch_6e
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Unexpected onLlcpActivated() in LINK_STATE_WAITING_PDU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    monitor-exit p0

    goto :goto_21

    .line 405
    :pswitch_77
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "Duplicate onLlcpActivated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    monitor-exit p0

    goto :goto_21

    .line 408
    :pswitch_80
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v2, :cond_91

    .line 410
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 411
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    .line 415
    :goto_8a
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_20

    .line 413
    :cond_91
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I
    :try_end_94
    .catchall {:try_start_59 .. :try_end_94} :catchall_55

    goto :goto_8a

    .line 371
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_22
        :pswitch_6e
        :pswitch_77
        :pswitch_80
    .end packed-switch
.end method

.method public onLlcpDeactivated()V
    .registers 6

    .prologue
    .line 637
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "LLCP deactivated."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    monitor-enter p0

    .line 639
    :try_start_8
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    if-eqz v1, :cond_11

    .line 640
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer:Lcom/android/nfc/echoserver/EchoServer;

    invoke-virtual {v1}, Lcom/android/nfc/echoserver/EchoServer;->onLlcpDeactivated()V

    .line 643
    :cond_11
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    packed-switch v1, :pswitch_data_56

    .line 681
    :goto_16
    monitor-exit p0

    .line 682
    return-void

    .line 646
    :pswitch_18
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "Duplicate onLlcpDectivated()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 681
    :catchall_20
    move-exception v1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_20

    throw v1

    .line 651
    :pswitch_23
    const/4 v1, 0x4

    :try_start_24
    iput v1, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "debounceTimeout":I
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    packed-switch v1, :pswitch_data_62

    .line 667
    :goto_2c
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 668
    iget v1, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_44

    .line 669
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "onP2pSendDebounce()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v1}, Lcom/android/nfc/P2pEventListener;->onP2pSendDebounce()V

    .line 672
    :cond_44
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 673
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->disconnectLlcpServices()V
    :try_end_4a
    .catchall {:try_start_24 .. :try_end_4a} :catchall_20

    goto :goto_16

    .line 655
    :pswitch_4b
    const/4 v0, 0x0

    .line 656
    goto :goto_2c

    .line 658
    :pswitch_4d
    const/16 v0, 0xbb8

    .line 659
    goto :goto_2c

    .line 661
    :pswitch_50
    const/16 v0, 0x1388

    .line 662
    goto :goto_2c

    .line 664
    :pswitch_53
    const/16 v0, 0xfa

    goto :goto_2c

    .line 643
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_18
        :pswitch_23
        :pswitch_23
        :pswitch_18
    .end packed-switch

    .line 653
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_4d
        :pswitch_50
        :pswitch_53
    .end packed-switch
.end method

.method public onLlcpFirstPacketReceived()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 425
    monitor-enter p0

    .line 426
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/nfc/P2pLinkManager;->mLastLlcpActivationTime:J

    sub-long v0, v2, v4

    .line 427
    .local v0, "totalTime":J
    const-string v2, "NfcP2pLinkManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to get first LLCP PDU"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    packed-switch v2, :pswitch_data_60

    .line 452
    :cond_32
    :goto_32
    monitor-exit p0

    .line 453
    return-void

    .line 430
    :pswitch_34
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "Dropping first LLCP packet received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 452
    .end local v0    # "totalTime":J
    :catchall_3c
    move-exception v2

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v2

    .line 434
    .restart local v0    # "totalTime":J
    :pswitch_3f
    :try_start_3f
    const-string v2, "NfcP2pLinkManager"

    const-string v3, "Unexpected first LLCP packet received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 437
    :pswitch_47
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    .line 438
    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-eq v2, v6, :cond_32

    .line 440
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_58

    iget v2, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v2, v7, :cond_5c

    .line 441
    :cond_58
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->connectLlcpServices()V

    goto :goto_32

    .line 443
    :cond_5c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpConnectDelayed:Z
    :try_end_5f
    .catchall {:try_start_3f .. :try_end_5f} :catchall_3c

    goto :goto_32

    .line 428
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_47
        :pswitch_34
        :pswitch_3f
    .end packed-switch
.end method

.method onLlcpServicesConnected()V
    .registers 4

    .prologue
    const/4 v2, 0x3

    .line 767
    const-string v0, "NfcP2pLinkManager"

    const-string v1, "onLlcpServicesConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    monitor-enter p0

    .line 769
    :try_start_9
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    if-eq v0, v2, :cond_f

    .line 770
    monitor-exit p0

    .line 782
    :goto_e
    return-void

    .line 772
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mLlcpServicesConnected:Z

    .line 773
    iget v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    if-ne v0, v2, :cond_1e

    .line 776
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEventListener:Lcom/android/nfc/P2pEventListener;

    invoke-interface {v0}, Lcom/android/nfc/P2pEventListener;->onP2pResumeSend()V

    .line 777
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->sendNdefMessage()V

    .line 781
    :cond_1e
    monitor-exit p0

    goto :goto_e

    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public onP2pSendConfirmed()V
    .registers 2

    .prologue
    .line 1335
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/nfc/P2pLinkManager;->onP2pSendConfirmed(Z)V

    .line 1336
    return-void
.end method

.method onReceiveComplete(Landroid/nfc/NdefMessage;)V
    .registers 6
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1112
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager;->getMessageSize(Landroid/nfc/NdefMessage;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager;->getMessageTnf(Landroid/nfc/NdefMessage;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager;->getMessageType(Landroid/nfc/NdefMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager;->getMessageAarPresent(Landroid/nfc/NdefMessage;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/nfc/EventLogTags;->writeNfcNdefReceived(IILjava/lang/String;I)V

    .line 1115
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1116
    return-void
.end method

.method onReceiveHandover()V
    .registers 3

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1109
    return-void
.end method

.method onSendComplete(Landroid/nfc/NdefMessage;J)V
    .registers 9
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "elapsedRealtime"    # J

    .prologue
    const/4 v2, 0x0

    .line 689
    iget-boolean v0, p0, Lcom/android/nfc/P2pLinkManager;->mFirstBeam:Z

    if-eqz v0, :cond_19

    .line 690
    invoke-static {}, Lcom/android/nfc/EventLogTags;->writeNfcFirstShare()V

    .line 691
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "first_beam"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 692
    iput-boolean v2, p0, Lcom/android/nfc/P2pLinkManager;->mFirstBeam:Z

    .line 694
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager;->getMessageSize(Landroid/nfc/NdefMessage;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager;->getMessageTnf(Landroid/nfc/NdefMessage;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager;->getMessageType(Landroid/nfc/NdefMessage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager;->getMessageAarPresent(Landroid/nfc/NdefMessage;)I

    move-result v3

    long-to-int v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/nfc/EventLogTags;->writeNfcShare(IILjava/lang/String;II)V

    .line 697
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 698
    return-void
.end method

.method public onUserSwitched()V
    .registers 7

    .prologue
    .line 457
    monitor-enter p0

    .line 459
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_19} :catch_1b
    .catchall {:try_start_1 .. :try_end_19} :catchall_24

    .line 464
    :goto_19
    :try_start_19
    monitor-exit p0

    .line 465
    return-void

    .line 461
    :catch_1b
    move-exception v0

    .line 462
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "NfcP2pLinkManager"

    const-string v2, "Failed to retrieve PackageManager for user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 464
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_24
    move-exception v1

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_24

    throw v1
.end method

.method prepareMessageToSend()V
    .registers 14

    .prologue
    const/4 v10, 0x0

    .line 469
    invoke-direct {p0, v10}, Lcom/android/nfc/P2pLinkManager;->setSender(Z)V

    .line 471
    monitor-enter p0

    .line 473
    const/4 v10, -0x1

    :try_start_6
    iput v10, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I

    .line 475
    iget-boolean v10, p0, Lcom/android/nfc/P2pLinkManager;->mIsSendEnabled:Z

    if-nez v10, :cond_14

    .line 476
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 477
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 478
    monitor-exit p0

    .line 576
    :goto_13
    return-void

    .line 483
    :cond_14
    sget-boolean v10, Lcom/android/nfc/handover/Constants;->supportHWBeam:Z

    if-nez v10, :cond_3c

    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_68

    if-eqz v10, :cond_3c

    .line 486
    :try_start_1c
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-interface {v10}, Landroid/nfc/IAppCallback;->createBeamShareData()Landroid/nfc/BeamShareData;

    move-result-object v2

    .line 487
    .local v2, "data":Landroid/nfc/BeamShareData;
    iget-object v10, v2, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 488
    iget-object v10, v2, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 490
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v10, :cond_3c

    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-static {v10}, Lcom/android/nfc/P2pLinkManager;->checkIsFastConnect([Landroid/net/Uri;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 492
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 493
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_3c} :catch_16f
    .catchall {:try_start_1c .. :try_end_3c} :catchall_68

    .line 500
    .end local v2    # "data":Landroid/nfc/BeamShareData;
    :cond_3c
    :goto_3c
    const/4 v7, 0x0

    .line 501
    .local v7, "runningPackage":Ljava/lang/String;
    :try_start_3d
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    .line 502
    .local v9, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_57

    .line 503
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 506
    :cond_57
    if-nez v7, :cond_6b

    .line 507
    const-string v10, "NfcP2pLinkManager"

    const-string v11, "Could not determine running package."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 509
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 510
    monitor-exit p0

    goto :goto_13

    .line 575
    .end local v7    # "runningPackage":Ljava/lang/String;
    .end local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catchall_68
    move-exception v10

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_3d .. :try_end_6a} :catchall_68

    throw v10

    .line 514
    .restart local v7    # "runningPackage":Ljava/lang/String;
    .restart local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_6b
    :try_start_6b
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    if-eqz v10, :cond_e7

    .line 517
    const/4 v1, 0x0

    .line 519
    .local v1, "callbackValid":Z
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mValidCallbackPackages:[Ljava/lang/String;

    if-eqz v10, :cond_83

    .line 520
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mValidCallbackPackages:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_78
    if-ge v4, v5, :cond_83

    aget-object v6, v0, v4

    .line 521
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7f
    .catchall {:try_start_6b .. :try_end_7f} :catchall_68

    move-result v10

    if-eqz v10, :cond_b2

    .line 522
    const/4 v1, 0x1

    .line 528
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_83
    if-eqz v1, :cond_15d

    .line 530
    :try_start_85
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    invoke-interface {v10}, Landroid/nfc/IAppCallback;->createBeamShareData()Landroid/nfc/BeamShareData;

    move-result-object v8

    .line 531
    .local v8, "shareData":Landroid/nfc/BeamShareData;
    iget-object v10, v8, Landroid/nfc/BeamShareData;->ndefMessage:Landroid/nfc/NdefMessage;

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 532
    iget-object v10, v8, Landroid/nfc/BeamShareData;->uris:[Landroid/net/Uri;

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 533
    iget v10, v8, Landroid/nfc/BeamShareData;->flags:I

    iput v10, p0, Lcom/android/nfc/P2pLinkManager;->mSendFlags:I

    .line 538
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v10, :cond_af

    .line 539
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/nfc/P2pLinkManager;->BT_CONNECT:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b5

    .line 540
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_af} :catch_ca
    .catchall {:try_start_85 .. :try_end_af} :catchall_68

    .line 550
    :cond_af
    :goto_af
    :try_start_af
    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_68

    goto/16 :goto_13

    .line 520
    .end local v8    # "shareData":Landroid/nfc/BeamShareData;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "pkg":Ljava/lang/String;
    :cond_b2
    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    .line 541
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    .restart local v8    # "shareData":Landroid/nfc/BeamShareData;
    :cond_b5
    :try_start_b5
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/nfc/P2pLinkManager;->WIFI_CONNECT:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_131

    .line 542
    const/4 v10, 0x2

    iput v10, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c9} :catch_ca
    .catchall {:try_start_b5 .. :try_end_c9} :catchall_68

    goto :goto_af

    .line 551
    .end local v8    # "shareData":Landroid/nfc/BeamShareData;
    :catch_ca
    move-exception v3

    .line 552
    .local v3, "e":Ljava/lang/Exception;
    :try_start_cb
    const-string v10, "NfcP2pLinkManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed NDEF callback: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .end local v1    # "callbackValid":Z
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_e7
    :goto_e7
    invoke-virtual {p0, v7}, Lcom/android/nfc/P2pLinkManager;->beamDefaultDisabled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_165

    .line 565
    const-string v10, "NfcP2pLinkManager"

    const-string v11, "Disabling default Beam behavior"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 567
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 573
    :goto_fa
    const-string v10, "NfcP2pLinkManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMessageToSend = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string v10, "NfcP2pLinkManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mUrisToSend = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    monitor-exit p0
    :try_end_12f
    .catchall {:try_start_cb .. :try_end_12f} :catchall_68

    goto/16 :goto_13

    .line 543
    .restart local v1    # "callbackValid":Z
    .restart local v8    # "shareData":Landroid/nfc/BeamShareData;
    :cond_131
    :try_start_131
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/nfc/P2pLinkManager;->P2P_CONNECT:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_147

    .line 544
    const/4 v10, 0x3

    iput v10, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I

    goto/16 :goto_af

    .line 545
    :cond_147
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/nfc/P2pLinkManager;->WLAN_SHARE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_af

    .line 546
    const/4 v10, 0x4

    iput v10, p0, Lcom/android/nfc/P2pLinkManager;->mFastConnType:I
    :try_end_15b
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_15b} :catch_ca
    .catchall {:try_start_131 .. :try_end_15b} :catchall_68

    goto/16 :goto_af

    .line 558
    .end local v8    # "shareData":Landroid/nfc/BeamShareData;
    :cond_15d
    :try_start_15d
    const-string v10, "NfcP2pLinkManager"

    const-string v11, "Last registered callback is not running in the foreground."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    .line 569
    .end local v1    # "callbackValid":Z
    :cond_165
    invoke-virtual {p0, v7}, Lcom/android/nfc/P2pLinkManager;->createDefaultNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v10

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 570
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;
    :try_end_16e
    .catchall {:try_start_15d .. :try_end_16e} :catchall_68

    goto :goto_fa

    .line 495
    .end local v7    # "runningPackage":Ljava/lang/String;
    .end local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_16f
    move-exception v10

    goto/16 :goto_3c
.end method

.method sendNdefMessage()V
    .registers 3

    .prologue
    .line 701
    monitor-enter p0

    .line 702
    :try_start_1
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager;->cancelSendNdefMessage()V

    .line 703
    new-instance v0, Lcom/android/nfc/P2pLinkManager$SendTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/P2pLinkManager$SendTask;-><init>(Lcom/android/nfc/P2pLinkManager;)V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    .line 704
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mSendTask:Lcom/android/nfc/P2pLinkManager$SendTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 705
    monitor-exit p0

    .line 706
    return-void

    .line 705
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public setNdefCallback(Landroid/nfc/IAppCallback;I)V
    .registers 4
    .param p1, "callbackNdef"    # Landroid/nfc/IAppCallback;
    .param p2, "callingUid"    # I

    .prologue
    .line 353
    monitor-enter p0

    .line 354
    :try_start_1
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager;->mCallbackNdef:Landroid/nfc/IAppCallback;

    .line 355
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mValidCallbackPackages:[Ljava/lang/String;

    .line 356
    monitor-exit p0

    .line 357
    return-void

    .line 356
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public startLlcpCoEchoServer(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "serviceNameIn"    # Ljava/lang/String;
    .param p2, "serviceNameOut"    # Ljava/lang/String;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    if-nez v0, :cond_b

    .line 727
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer2;

    invoke-direct {v0}, Lcom/android/nfc/echoserver/EchoServer2;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    .line 729
    :cond_b
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/echoserver/EchoServer2;->setCoServiceNames(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 737
    return-void
.end method

.method public stopLlcpCoEchoServer()V
    .registers 3

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mEchoServer2:Lcom/android/nfc/echoserver/EchoServer2;

    if-eqz v0, :cond_b

    .line 744
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 753
    :cond_b
    return-void
.end method
