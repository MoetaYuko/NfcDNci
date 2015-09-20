.class public Lcom/android/nfc/handover/HandoverManager;
.super Ljava/lang/Object;
.source "HandoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverManager$FileInfoXMLThread;,
        Lcom/android/nfc/handover/HandoverManager$MessageHandler;,
        Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;,
        Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    }
.end annotation


# static fields
.field static final ACTION_FAST_CONNECTION_FAILED:Ljava/lang/String; = "ACTION_FAST_CONNECTION_FAILED"

.field static final ACTION_FAST_CONNECTION_SUCCESS:Ljava/lang/String; = "ACTION_FAST_CONNECTION_SUCCESS"

.field public static final ACTION_HANDOVER_TRANSFER_DONE:Ljava/lang/String; = "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

.field public static final ACTION_HANDOVER_TRANSFER_FINISH:Ljava/lang/String; = "com.android.nfc.handover.action.HANDOVER_TRANSFER_FINISH"

.field public static final ACTION_HANDOVER_TRANSFER_PROGRESS:Ljava/lang/String; = "com.android.nfc.handover.action.HANDOVER_TRANSFER_PROGRESS"

.field static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field static final CARRIER_POWER_STATE_ACTIVATING:I = 0x2

.field static final CARRIER_POWER_STATE_ACTIVE:I = 0x1

.field static final CARRIER_POWER_STATE_INACTIVE:I = 0x0

.field static final CARRIER_POWER_STATE_UNKNOWN:I = 0x3

.field public static final CHARSETNAME:Ljava/lang/String; = "UTF-8"

.field static final CONFIG_FILENAME_STRING:Ljava/lang/String; = "filename"

.field static final CONFIG_FILEPATH_STRING:Ljava/lang/String; = "filepath"

.field static final CONFIG_SEVERPORT_STRING:Ljava/lang/String; = "serverport"

.field static final CON_HANDOVER_REQUEST:[B

.field static final DBG:Z = true

.field static final DEV_CAPABILITY_BT:I = 0x1

.field static final DEV_CAPABILITY_P2P:I = 0x4

.field static final DEV_CAPABILITY_P2P_BT:I = 0x5

.field static final DEV_CAPABILITY_P2P_SOFTAP:I = 0x6

.field static final DEV_CAPABILITY_P2P_SOFTAP_BT:I = 0x7

.field static final DEV_CAPABILITY_SOFTAP:I = 0x2

.field static final DEV_CAPABILITY_SOFTAP_BT:I = 0x3

.field public static final EXTRA_HANDOVER_TRANSFER_STATUS:Ljava/lang/String; = "com.android.nfc.handover.extra.HANDOVER_TRANSFER_STATUS"

.field public static final EXTRA_HANDOVER_TRANSFER_URI:Ljava/lang/String; = "com.android.nfc.handover.extra.HANDOVER_TRANSFER_URI"

.field public static final EXTRA_TRANSFER_PROGRESS:Ljava/lang/String; = "extra_progress"

.field public static final FAST_CONNECT_BT:I = 0x1

.field public static final FAST_CONNECT_FAILURE:I = -0x1

.field public static final FAST_CONNECT_P2P:I = 0x3

.field public static final FAST_CONNECT_SUCCESS:I = 0x0

.field public static final FAST_CONNECT_WIFI:I = 0x2

.field static final HTTP_SOCKET_PORT:I = 0x231c

.field static final MSG_HANDOVER_COMPLETE:I = 0x0

.field static final MSG_HANDOVER_POWER_CHECK:I = 0x0

.field static final MSG_HEADSET_CONNECTED:I = 0x1

.field static final MSG_HEADSET_NOT_CONNECTED:I = 0x2

.field public static final NOT_FAST_CONNECT:I = -0x1

.field static final POWER_CHECK_MS:I = 0x7530

.field static final RTD_COLLISION_RESOLUTION:[B

.field static final SERVER_RETRY_COUNT:I = 0xa

.field static final TAG:Ljava/lang/String; = "NfcHandover"

.field static final TNF_BEAM_CONFIG_RECORD:S = 0x1s

.field static final TYPE_BEAM_CONFIG_RECORD:[B

.field static final TYPE_BT_OOB:[B

.field static final TYPE_HWBEAM_CONNECTTING:[B

.field static final TYPE_NOKIA:[B

.field public static final WLAN_SHARE_WIFI:I = 0x4

.field static final defaultFileInfoDir:Ljava/lang/String; = "fileInfo"

.field static final defaultFileName:Ljava/lang/String; = "fileInfo"

.field static final defaultPostfix:Ljava/lang/String; = ".xml"

.field public static final sMimeCheckList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isHwBeam:Z

.field private mBTHandover:Lcom/android/nfc/handover/BTHandover;

.field mBinding:Z

.field final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothEnabledByNfc:Z

.field mBluetoothHeadsetConnected:Z

.field mBluetoothHeadsetPending:Z

.field mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field mEnabled:Z

.field final mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

.field mHandoverTransferId:I

.field mLocalBluetoothAddress:Ljava/lang/String;

.field final mLock:Ljava/lang/Object;

.field final mMessenger:Landroid/os/Messenger;

.field private mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

.field mPendingServiceMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mPendingTransfers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/handover/PendingHandoverTransfer;",
            ">;"
        }
    .end annotation
.end field

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServerPort:I

.field mService:Landroid/os/Messenger;

.field final mTransfers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/nfc/handover/HandoverTransfer;",
            ">;"
        }
    .end annotation
.end field

.field private mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

.field private selectHandover:Lcom/android/nfc/handover/Handover;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    .line 86
    const-string v0, "nokia.com:bt"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverManager;->TYPE_NOKIA:[B

    .line 87
    const-string v0, "application/vnd.bluetooth.ep.oob"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverManager;->TYPE_BT_OOB:[B

    .line 90
    new-array v0, v2, [B

    fill-array-data v0, :array_86

    sput-object v0, Lcom/android/nfc/handover/HandoverManager;->RTD_COLLISION_RESOLUTION:[B

    .line 130
    const-string v0, "application/hwbeam/connectting"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverManager;->TYPE_HWBEAM_CONNECTTING:[B

    .line 153
    new-array v0, v2, [B

    fill-array-data v0, :array_8c

    sput-object v0, Lcom/android/nfc/handover/HandoverManager;->CON_HANDOVER_REQUEST:[B

    .line 165
    const-string v0, "application/beam.conference.type"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverManager;->TYPE_BEAM_CONFIG_RECORD:[B

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/HandoverManager;->sMimeCheckList:Ljava/util/HashMap;

    .line 173
    sget-object v0, Lcom/android/nfc/handover/HandoverManager;->sMimeCheckList:Ljava/util/HashMap;

    const-string v1, "webp"

    const-string v2, "image/vnd.wap.wbmp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/nfc/handover/HandoverManager;->sMimeCheckList:Ljava/util/HashMap;

    const-string v1, "mkv"

    const-string v2, "video/x-matroska"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/nfc/handover/HandoverManager;->sMimeCheckList:Ljava/util/HashMap;

    const-string v1, "webm"

    const-string v2, "video/webm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/android/nfc/handover/HandoverManager;->sMimeCheckList:Ljava/util/HashMap;

    const-string v1, "rm"

    const-string v2, "video/x-pn-realvideo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/nfc/handover/HandoverManager;->sMimeCheckList:Ljava/util/HashMap;

    const-string v1, "rv"

    const-string v2, "video/x-pn-realvideo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/nfc/handover/HandoverManager;->sMimeCheckList:Ljava/util/HashMap;

    const-string v1, "rmvb"

    const-string v2, "video/x-pn-realvideo"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void

    .line 90
    nop

    :array_86
    .array-data 1
        0x63t
        0x72t
    .end array-data

    .line 153
    nop

    :array_8c
    .array-data 1
        0x66t
        0x63t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Lcom/android/nfc/handover/HandoverManager$MessageHandler;

    invoke-direct {v2, p0}, Lcom/android/nfc/handover/HandoverManager$MessageHandler;-><init>(Lcom/android/nfc/handover/HandoverManager;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mMessenger:Landroid/os/Messenger;

    .line 105
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    .line 113
    iput-object v3, p0, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;

    .line 114
    iput-boolean v4, p0, Lcom/android/nfc/handover/HandoverManager;->mBinding:Z

    .line 182
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/handover/HandoverManager;->mServerPort:I

    .line 187
    iput-boolean v4, p0, Lcom/android/nfc/handover/HandoverManager;->isHwBeam:Z

    .line 309
    new-instance v1, Lcom/android/nfc/handover/HandoverManager$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/HandoverManager$1;-><init>(Lcom/android/nfc/handover/HandoverManager;)V

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mConnection:Landroid/content/ServiceConnection;

    .line 420
    new-instance v1, Lcom/android/nfc/handover/HandoverManager$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/HandoverManager$2;-><init>(Lcom/android/nfc/handover/HandoverManager;)V

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 404
    iput-object v3, p0, Lcom/android/nfc/handover/HandoverManager;->mTransfers:Ljava/util/HashMap;

    .line 405
    iput-object v3, p0, Lcom/android/nfc/handover/HandoverManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    .line 407
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    .line 408
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 410
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    .line 411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingServiceMessages:Ljava/util/ArrayList;

    .line 413
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 416
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/handover/HandoverManager;->mEnabled:Z

    .line 417
    iput-boolean v4, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothEnabledByNfc:Z

    .line 418
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flag"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/nfc/handover/HandoverManager$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/HandoverManager$MessageHandler;-><init>(Lcom/android/nfc/handover/HandoverManager;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mMessenger:Landroid/os/Messenger;

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;

    .line 114
    iput-boolean v2, p0, Lcom/android/nfc/handover/HandoverManager;->mBinding:Z

    .line 182
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverManager;->mServerPort:I

    .line 187
    iput-boolean v2, p0, Lcom/android/nfc/handover/HandoverManager;->isHwBeam:Z

    .line 309
    new-instance v0, Lcom/android/nfc/handover/HandoverManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/HandoverManager$1;-><init>(Lcom/android/nfc/handover/HandoverManager;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mConnection:Landroid/content/ServiceConnection;

    .line 420
    new-instance v0, Lcom/android/nfc/handover/HandoverManager$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/HandoverManager$2;-><init>(Lcom/android/nfc/handover/HandoverManager;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 892
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    .line 893
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    .line 894
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 895
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverManager;->isHwBeam:Z

    .line 896
    new-instance v0, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    invoke-direct {v0, p0, p1}, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;-><init>(Lcom/android/nfc/handover/HandoverManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    .line 897
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mTransfers:Ljava/util/HashMap;

    .line 898
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/nfc/handover/Handover;->createHandover(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;I)Lcom/android/nfc/handover/Handover;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/handover/P2PHandover;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    .line 900
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lcom/android/nfc/handover/Handover;->createHandover(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;I)Lcom/android/nfc/handover/Handover;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/handover/WiFiHandover;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    .line 902
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, p0, v1}, Lcom/android/nfc/handover/Handover;->createHandover(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;I)Lcom/android/nfc/handover/Handover;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/handover/BTHandover;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    .line 904
    const-string v0, "NfcHandover"

    const-string v1, "HandoverManager is runing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/HandoverManager;)Lcom/android/nfc/handover/Handover;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverManager;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/HandoverManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverManager;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverManager;->getIsHwBeamFlag()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/HandoverManager;Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/nfc/handover/HandoverManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/handover/HandoverManager;->saveFileInfosToXML(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static addressToReverseBytes(Ljava/lang/String;)[B
    .registers 7
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 879
    const-string v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 880
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [B

    .line 882
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v3, v2

    if-ge v0, v3, :cond_1f

    .line 884
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-object v4, v2, v0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 882
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 887
    :cond_1f
    return-object v1
.end method

.method private confirmFastConHandover(I)Lcom/android/nfc/handover/Handover;
    .registers 4
    .param p1, "remoteMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 1455
    packed-switch p1, :pswitch_data_82

    .line 1494
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1497
    :goto_6
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    return-object v0

    .line 1457
    :pswitch_9
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BTHandover;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1458
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1459
    const-string v0, "NfcHandover"

    const-string v1, "fast con selectHandover is mBTHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1461
    :cond_1d
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1462
    const-string v0, "NfcHandover"

    const-string v1, "fast con not support mBTHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1466
    :pswitch_27
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/WiFiHandover;->isFastConnectHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1467
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1468
    const-string v0, "NfcHandover"

    const-string v1, "fast con selectHandover is mWiFiHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1470
    :cond_3b
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1471
    const-string v0, "NfcHandover"

    const-string v1, "fast con not support  mWiFiHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1476
    :pswitch_45
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/WiFiHandover;->isFastConnectHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1477
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1478
    const-string v0, "NfcHandover"

    const-string v1, "wlan share selectHandover is mWiFiHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1480
    :cond_59
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1481
    const-string v0, "NfcHandover"

    const-string v1, "wlan share not support  mWiFiHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1485
    :pswitch_63
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/P2PHandover;->isHandoverSupported()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 1486
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1487
    const-string v0, "NfcHandover"

    const-string v1, "fast con selectHandover is mP2PHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1489
    :cond_77
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1490
    const-string v0, "NfcHandover"

    const-string v1, "fast con not support  mP2PHandover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1455
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_9
        :pswitch_27
        :pswitch_63
        :pswitch_45
    .end packed-switch
.end method

.method private confirmHandover(II)Lcom/android/nfc/handover/Handover;
    .registers 7
    .param p1, "remoteAbility"    # I
    .param p2, "localAbility"    # I

    .prologue
    .line 1424
    const-string v1, "NfcHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmHandover() : remoteAbility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    const-string v1, "NfcHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmHandover() : localAbility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    and-int v0, p1, p2

    .line 1428
    .local v0, "mode":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_40

    .line 1430
    const-string v1, "NfcHandover"

    const-string v2, "confirmHandover() : select is p2p"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    .line 1441
    :goto_3f
    return-object v1

    .line 1432
    :cond_40
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_4e

    .line 1434
    const-string v1, "NfcHandover"

    const-string v2, "confirmHandover() : select is softap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    goto :goto_3f

    .line 1436
    :cond_4e
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_5c

    .line 1438
    const-string v1, "NfcHandover"

    const-string v2, "confirmHandover() : select is bt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    goto :goto_3f

    .line 1441
    :cond_5c
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method static createCollisionRecord()Landroid/nfc/NdefRecord;
    .registers 5

    .prologue
    .line 462
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 463
    .local v0, "random":[B
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 464
    new-instance v1, Landroid/nfc/NdefRecord;

    const/4 v2, 0x1

    sget-object v3, Lcom/android/nfc/handover/HandoverManager;->RTD_COLLISION_RESOLUTION:[B

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1
.end method

.method private createConfigInfoRecord([Landroid/net/Uri;)Landroid/nfc/NdefRecord;
    .registers 11
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 1056
    const-string v4, "NfcHandover"

    const-string v5, "createConfigInfoRecord() in"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->getServerPort()I

    move-result v3

    .line 1058
    .local v3, "serverPort":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->getLocalDeviceCapability()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "US_ASCII"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 1060
    .local v1, "id":[B
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverManager;->createSendFileInfoXML()Ljava/io/File;

    move-result-object v0

    .line 1061
    .local v0, "configFile":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1062
    .local v2, "recordSrting":Ljava/lang/StringBuffer;
    array-length v4, p1

    if-lez v4, :cond_3d

    if-eqz v0, :cond_3d

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3f

    .line 1063
    :cond_3d
    const/4 v4, 0x0

    .line 1077
    :goto_3e
    return-object v4

    .line 1066
    :cond_3f
    const-string v4, "NfcHandover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createConfigInfoRecord() serverPort = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    const-string v4, "NfcHandover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createConfigInfoRecord(): path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\"filename\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1072
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\"filepath\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1074
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\"serverport\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1076
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/android/nfc/handover/HandoverManager;->initFileInfoXML(Ljava/lang/String;[Landroid/net/Uri;)V

    .line 1077
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x1

    sget-object v6, Lcom/android/nfc/handover/HandoverManager;->TYPE_BEAM_CONFIG_RECORD:[B

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "US_ASCII"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-direct {v4, v5, v6, v1, v7}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    goto/16 :goto_3e
.end method

.method private createSendFileInfoXML()Ljava/io/File;
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 1542
    const/4 v6, 0x0

    .line 1543
    .local v6, "filepath":Ljava/lang/String;
    const-string v1, "fileInfo"

    .line 1544
    .local v1, "defaultName":Ljava/lang/String;
    const-string v8, ".xml"

    .line 1545
    .local v8, "postfix":Ljava/lang/String;
    const-string v4, "fileInfo"

    .line 1546
    .local v4, "fileInfoDir":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1549
    .local v5, "fileInfoDirPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1550
    .local v0, "XMLfile":Ljava/io/File;
    const/4 v2, 0x0

    .line 1551
    .local v2, "dirFile":Ljava/io/File;
    const/4 v7, 0x1

    .line 1553
    .local v7, "i":I
    new-instance v2, Ljava/io/File;

    .end local v2    # "dirFile":Ljava/io/File;
    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1554
    .restart local v2    # "dirFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_48

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v10

    if-nez v10, :cond_48

    .line 1577
    :goto_47
    return-object v9

    .line 1558
    :cond_48
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1559
    new-instance v0, Ljava/io/File;

    .end local v0    # "XMLfile":Ljava/io/File;
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1560
    .restart local v0    # "XMLfile":Ljava/io/File;
    const-string v10, "NfcHandover"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createSendFileInfoXML() filepath = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :goto_7a
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_b9

    .line 1562
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1563
    const-string v10, "NfcHandover"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createSendFileInfoXML() new filepath = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    new-instance v0, Ljava/io/File;

    .end local v0    # "XMLfile":Ljava/io/File;
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1565
    .restart local v0    # "XMLfile":Ljava/io/File;
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a

    .line 1569
    :cond_b9
    :try_start_b9
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v10

    if-nez v10, :cond_c6

    .line 1570
    const-string v10, "NfcHandover"

    const-string v11, "create file faild"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c6} :catch_c8

    :cond_c6
    move-object v9, v0

    .line 1577
    goto :goto_47

    .line 1572
    :catch_c8
    move-exception v3

    .line 1574
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_47
.end method

.method private getCapabilityNdefRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;
    .registers 9
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v6, 0x1

    .line 1399
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    array-length v4, v4

    if-le v4, v6, :cond_2a

    .line 1400
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_10
    if-ge v1, v2, :cond_2a

    aget-object v3, v0, v1

    .line 1401
    .local v3, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    if-ne v4, v6, :cond_27

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v4

    sget-object v5, Lcom/android/nfc/handover/HandoverManager;->TYPE_BEAM_CONFIG_RECORD:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1408
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :goto_26
    return-object v3

    .line 1400
    .restart local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1408
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_2a
    const/4 v3, 0x0

    goto :goto_26
.end method

.method private getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1743
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1744
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1745
    .local v2, "filenamePos":I
    if-ltz v2, :cond_29

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1750
    .local v1, "filename":Ljava/lang/String;
    :goto_14
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1751
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1752
    .local v0, "dotPos":I
    if-ltz v0, :cond_2b

    .line 1753
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1757
    .end local v0    # "dotPos":I
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "filenamePos":I
    :goto_28
    return-object v3

    .restart local v2    # "filenamePos":I
    :cond_29
    move-object v1, p1

    .line 1745
    goto :goto_14

    .line 1757
    .end local v2    # "filenamePos":I
    :cond_2b
    const/4 v3, 0x0

    goto :goto_28
.end method

.method private getIsHwBeamFlag()Z
    .registers 2

    .prologue
    .line 1738
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverManager;->isHwBeam:Z

    return v0
.end method

.method private getUsefullPort()I
    .registers 2

    .prologue
    .line 1083
    const/16 v0, 0x231c

    return v0
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "payload"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 1033
    const/4 v2, 0x0

    .line 1034
    .local v2, "value":Ljava/lang/String;
    const/4 v0, -0x1

    .line 1035
    .local v0, "begin":I
    const/4 v1, -0x1

    .line 1036
    .local v1, "end":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1037
    if-ne v0, v6, :cond_c

    .line 1052
    :cond_b
    :goto_b
    return-object v3

    .line 1040
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "\":\""

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 1041
    const-string v4, "\","

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1042
    if-ne v1, v6, :cond_26

    .line 1043
    const-string v4, "\"\n"

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1045
    :cond_26
    if-eq v1, v6, :cond_b

    .line 1048
    if-eq v0, v1, :cond_b

    .line 1051
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 1052
    goto :goto_b
.end method

.method private initFileInfoXML(Ljava/lang/String;[Landroid/net/Uri;)V
    .registers 11
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 1695
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1696
    .local v2, "fileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    const/4 v3, 0x0

    .line 1697
    .local v3, "filePathString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1698
    .local v1, "fileInfo":Lcom/android/nfc/handover/FileInfo;
    const/4 v4, 0x0

    .line 1700
    .local v4, "i":I
    if-nez p1, :cond_b

    .line 1724
    :goto_a
    return-void

    .line 1703
    :cond_b
    :goto_b
    array-length v5, p2

    if-ge v4, v5, :cond_79

    .line 1704
    new-instance v1, Lcom/android/nfc/handover/FileInfo;

    .end local v1    # "fileInfo":Lcom/android/nfc/handover/FileInfo;
    invoke-direct {v1}, Lcom/android/nfc/handover/FileInfo;-><init>()V

    .line 1705
    .restart local v1    # "fileInfo":Lcom/android/nfc/handover/FileInfo;
    aget-object v5, p2, v4

    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/HandoverManager;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 1706
    if-eqz v1, :cond_76

    if-eqz v3, :cond_76

    .line 1707
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1708
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/android/nfc/handover/FileInfo;->setFileLen(J)V

    .line 1709
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/nfc/handover/FileInfo;->setFileName(Ljava/lang/String;)V

    .line 1710
    aget-object v5, p2, v4

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/nfc/handover/FileInfo;->setFilePath(Ljava/lang/String;)V

    .line 1711
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1713
    const-string v5, "NfcHandover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileInfoXMLThread file.getName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    const-string v5, "NfcHandover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileInfoXMLThread uris[i] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v4

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    .end local v0    # "file":Ljava/io/File;
    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1720
    :cond_79
    invoke-direct {p0, p1, v2}, Lcom/android/nfc/handover/HandoverManager;->saveFileInfosToXML(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_a
.end method

.method private parseResponseMessage(Landroid/nfc/NdefMessage;)V
    .registers 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1510
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    if-ne v2, v4, :cond_4a

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1513
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    .line 1514
    .local v0, "tnf":S
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v1

    .line 1515
    .local v1, "type":[B
    if-ne v5, v0, :cond_4b

    sget-object v2, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 1518
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1520
    const-string v2, "NfcHandover"

    const-string v3, "selectHandover is mWiFiHandover"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    .end local v0    # "tnf":S
    .end local v1    # "type":[B
    :cond_4a
    :goto_4a
    return-void

    .line 1521
    .restart local v0    # "tnf":S
    .restart local v1    # "type":[B
    :cond_4b
    if-ne v5, v0, :cond_61

    sget-object v2, Lcom/android/nfc/handover/P2PHandover;->TYPE_WIFI_DIRECT:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1523
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1525
    const-string v2, "NfcHandover"

    const-string v3, "selectHandover is mP2PHandover"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1526
    :cond_61
    if-ne v5, v0, :cond_77

    sget-object v2, Lcom/android/nfc/handover/HandoverManager;->TYPE_BT_OOB:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 1528
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1530
    const-string v2, "NfcHandover"

    const-string v3, "selectHandover is mBTHandover"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 1532
    :cond_77
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    goto :goto_4a
.end method

.method private saveFileInfosToXML(Ljava/lang/String;Ljava/util/List;)V
    .registers 14
    .param p1, "filepath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/handover/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1618
    .local p2, "fileInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1619
    .local v8, "xmlFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_18

    .line 1621
    :try_start_b
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-nez v9, :cond_18

    .line 1622
    const-string v9, "NfcHandover"

    const-string v10, "create file faild"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_18} :catch_4c

    .line 1629
    :cond_18
    :goto_18
    const/4 v2, 0x0

    .line 1630
    .local v2, "outStream":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 1631
    .local v4, "outStreamWriter":Ljava/io/OutputStreamWriter;
    const/4 v6, 0x0

    .line 1633
    .local v6, "writer":Ljava/io/BufferedWriter;
    :try_start_1b
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_20} :catch_59
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_20} :catch_72
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_8b
    .catchall {:try_start_1b .. :try_end_20} :catchall_a4

    .line 1634
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .local v3, "outStream":Ljava/io/FileOutputStream;
    :try_start_20
    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v9, "UTF-8"

    invoke-direct {v5, v3, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_27} :catch_de
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_27} :catch_d2
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_27} :catch_c6
    .catchall {:try_start_20 .. :try_end_27} :catchall_ba

    .line 1635
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .local v5, "outStreamWriter":Ljava/io/OutputStreamWriter;
    :try_start_27
    new-instance v7, Ljava/io/BufferedWriter;

    invoke-direct {v7, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2c} :catch_e2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_27 .. :try_end_2c} :catch_d5
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_c9
    .catchall {:try_start_27 .. :try_end_2c} :catchall_bd

    .line 1636
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .local v7, "writer":Ljava/io/BufferedWriter;
    :try_start_2c
    invoke-direct {p0, p2, v7}, Lcom/android/nfc/handover/HandoverManager;->writeXML(Ljava/util/List;Ljava/io/BufferedWriter;)Ljava/lang/String;

    .line 1637
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->flush()V
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_32} :catch_e7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2c .. :try_end_32} :catch_d9
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_32} :catch_cd
    .catchall {:try_start_2c .. :try_end_32} :catchall_c1

    .line 1646
    if-eqz v3, :cond_37

    .line 1647
    :try_start_34
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1649
    :cond_37
    if-eqz v5, :cond_3c

    .line 1650
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 1652
    :cond_3c
    if-eqz v7, :cond_41

    .line 1653
    invoke-virtual {v7}, Ljava/io/BufferedWriter;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_41} :catch_51

    :cond_41
    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .line 1661
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    :cond_44
    :goto_44
    const-string v9, "NfcHandover"

    const-string v10, "saveFileInfosToXML comple"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    return-void

    .line 1624
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    :catch_4c
    move-exception v1

    .line 1625
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_18

    .line 1654
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_51
    move-exception v0

    .line 1656
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .line 1658
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_44

    .line 1638
    .end local v0    # "e":Ljava/io/IOException;
    :catch_59
    move-exception v0

    .line 1639
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_5a
    :try_start_5a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_a4

    .line 1646
    if-eqz v2, :cond_62

    .line 1647
    :try_start_5f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1649
    :cond_62
    if-eqz v4, :cond_67

    .line 1650
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 1652
    :cond_67
    if-eqz v6, :cond_44

    .line 1653
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_6c} :catch_6d

    goto :goto_44

    .line 1654
    :catch_6d
    move-exception v0

    .line 1656
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_44

    .line 1640
    .end local v0    # "e":Ljava/io/IOException;
    :catch_72
    move-exception v0

    .line 1641
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_73
    :try_start_73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_a4

    .line 1646
    if-eqz v2, :cond_7b

    .line 1647
    :try_start_78
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1649
    :cond_7b
    if-eqz v4, :cond_80

    .line 1650
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 1652
    :cond_80
    if-eqz v6, :cond_44

    .line 1653
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_85} :catch_86

    goto :goto_44

    .line 1654
    :catch_86
    move-exception v0

    .line 1656
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_44

    .line 1642
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8b
    move-exception v0

    .line 1643
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_8c
    :try_start_8c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_a4

    .line 1646
    if-eqz v2, :cond_94

    .line 1647
    :try_start_91
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1649
    :cond_94
    if-eqz v4, :cond_99

    .line 1650
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 1652
    :cond_99
    if-eqz v6, :cond_44

    .line 1653
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_9e} :catch_9f

    goto :goto_44

    .line 1654
    :catch_9f
    move-exception v0

    .line 1656
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_44

    .line 1645
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_a4
    move-exception v9

    .line 1646
    :goto_a5
    if-eqz v2, :cond_aa

    .line 1647
    :try_start_a7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1649
    :cond_aa
    if-eqz v4, :cond_af

    .line 1650
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V

    .line 1652
    :cond_af
    if-eqz v6, :cond_b4

    .line 1653
    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_b4} :catch_b5

    .line 1657
    :cond_b4
    :goto_b4
    throw v9

    .line 1654
    :catch_b5
    move-exception v0

    .line 1656
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_b4

    .line 1645
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    :catchall_ba
    move-exception v9

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_a5

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    :catchall_bd
    move-exception v9

    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_a5

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catchall_c1
    move-exception v9

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_a5

    .line 1642
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    :catch_c6
    move-exception v0

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_8c

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    :catch_c9
    move-exception v0

    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_8c

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_cd
    move-exception v0

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_8c

    .line 1640
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    :catch_d2
    move-exception v0

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_73

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    :catch_d5
    move-exception v0

    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_73

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_d9
    move-exception v0

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_73

    .line 1638
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    :catch_de
    move-exception v0

    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_5a

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    :catch_e2
    move-exception v0

    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_5a

    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .end local v6    # "writer":Ljava/io/BufferedWriter;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/BufferedWriter;
    :catch_e7
    move-exception v0

    move-object v6, v7

    .end local v7    # "writer":Ljava/io/BufferedWriter;
    .restart local v6    # "writer":Ljava/io/BufferedWriter;
    move-object v4, v5

    .end local v5    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    .restart local v4    # "outStreamWriter":Ljava/io/OutputStreamWriter;
    move-object v2, v3

    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outStream":Ljava/io/FileOutputStream;
    goto/16 :goto_5a
.end method

.method private writeXML(Ljava/util/List;Ljava/io/BufferedWriter;)Ljava/lang/String;
    .registers 9
    .param p2, "writer"    # Ljava/io/BufferedWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/handover/FileInfo;",
            ">;",
            "Ljava/io/BufferedWriter;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1665
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/handover/FileInfo;>;"
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 1667
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_4
    invoke-interface {v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 1668
    const-string v4, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1670
    const-string v4, ""

    const-string v5, "files"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1671
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/handover/FileInfo;

    .line 1672
    .local v1, "file":Lcom/android/nfc/handover/FileInfo;
    const-string v4, ""

    const-string v5, "file"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1673
    const-string v4, ""

    const-string v5, "fileName"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1674
    invoke-virtual {v1}, Lcom/android/nfc/handover/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1675
    const-string v4, ""

    const-string v5, "fileName"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1676
    const-string v4, ""

    const-string v5, "fileLen"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1677
    invoke-virtual {v1}, Lcom/android/nfc/handover/FileInfo;->getFileLen()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1678
    const-string v4, ""

    const-string v5, "fileLen"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1679
    const-string v4, ""

    const-string v5, "filePath"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1680
    invoke-virtual {v1}, Lcom/android/nfc/handover/FileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1681
    const-string v4, ""

    const-string v5, "filePath"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1682
    const-string v4, ""

    const-string v5, "file"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_79} :catch_7a

    goto :goto_1c

    .line 1687
    .end local v1    # "file":Lcom/android/nfc/handover/FileInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_7a
    move-exception v0

    .line 1688
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1690
    const/4 v4, 0x0

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7f
    return-object v4

    .line 1684
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_80
    :try_start_80
    const-string v4, ""

    const-string v5, "files"

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1685
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1686
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8d} :catch_7a

    move-result-object v4

    goto :goto_7f
.end method


# virtual methods
.method bindServiceIfNeededLocked()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 435
    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverManager;->mBinding:Z

    if-nez v1, :cond_21

    .line 436
    const-string v1, "NfcHandover"

    const-string v2, "Binding to handover service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/nfc/handover/HandoverService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager;->mConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 440
    .local v0, "bindSuccess":Z
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverManager;->mBinding:Z

    .line 444
    .end local v0    # "bindSuccess":Z
    :cond_21
    return v0
.end method

.method cleanupTransfers()V
    .registers 6

    .prologue
    .line 389
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 390
    :try_start_3
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 391
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;Lcom/android/nfc/handover/HandoverTransfer;>;>;"
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2a

    .line 392
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 393
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 394
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;Lcom/android/nfc/handover/HandoverTransfer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/handover/HandoverTransfer;

    .line 395
    .local v2, "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    invoke-virtual {v2}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v3

    if-nez v3, :cond_e

    .line 396
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_e

    .line 391
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;Lcom/android/nfc/handover/HandoverTransfer;>;>;"
    .end local v1    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;Lcom/android/nfc/handover/HandoverTransfer;>;"
    .end local v2    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :catchall_2a
    move-exception v3

    :try_start_2b
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v3

    .line 399
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;Lcom/android/nfc/handover/HandoverTransfer;>;>;"
    :cond_2d
    return-void
.end method

.method createAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;
    .registers 7
    .param p1, "activating"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 908
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 909
    .local v0, "payload":[B
    if-eqz p1, :cond_1e

    move v1, v2

    :goto_9
    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 912
    aput-byte v3, v0, v3

    .line 913
    const/16 v1, 0x62

    aput-byte v1, v0, v2

    .line 915
    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 916
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1

    :cond_1e
    move v1, v3

    .line 909
    goto :goto_9
.end method

.method createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;
    .registers 7
    .param p1, "activating"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 468
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 469
    .local v0, "payload":[B
    if-eqz p1, :cond_1e

    move v1, v2

    :goto_9
    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 471
    aput-byte v3, v0, v3

    .line 472
    const/16 v1, 0x62

    aput-byte v1, v0, v2

    .line 473
    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 474
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1

    :cond_1e
    move v1, v3

    .line 469
    goto :goto_9
.end method

.method createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 478
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 483
    .local v1, "payload":[B
    array-length v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 484
    array-length v2, v1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 486
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 487
    :try_start_18
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v2, :cond_24

    .line 488
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 491
    :cond_24
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/nfc/handover/HandoverManager;->addressToReverseBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 492
    .local v0, "addressBytes":[B
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_18 .. :try_end_31} :catchall_3f

    .line 495
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v3, Lcom/android/nfc/handover/HandoverManager;->TYPE_BT_OOB:[B

    new-array v4, v7, [B

    const/16 v5, 0x62

    aput-byte v5, v4, v6

    invoke-direct {v2, v8, v3, v4, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2

    .line 493
    .end local v0    # "addressBytes":[B
    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v2
.end method

.method public createFastConHandoverRequest(I)Landroid/nfc/NdefMessage;
    .registers 7
    .param p1, "mode"    # I

    .prologue
    .line 1196
    const-string v2, "NfcHandover"

    const-string v3, "Enter createFastConHandoverRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/4 v0, 0x0

    .line 1200
    .local v0, "records":Landroid/nfc/NdefRecord;
    const-string v2, "NfcHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createHandoverRequestMessage(): mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    packed-switch p1, :pswitch_data_8e

    .line 1219
    const-string v2, "NfcHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "none fast connection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    :goto_3b
    if-nez v0, :cond_77

    .line 1224
    const/4 v1, 0x0

    .line 1230
    :goto_3e
    return-object v1

    .line 1203
    :pswitch_3f
    const-string v2, "NfcHandover"

    const-string v3, "bluetooth fast connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v2}, Lcom/android/nfc/handover/BTHandover;->createFastConDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1205
    goto :goto_3b

    .line 1207
    :pswitch_4d
    const-string v2, "NfcHandover"

    const-string v3, "wifi fast connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v2}, Lcom/android/nfc/handover/WiFiHandover;->createFastConDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1209
    goto :goto_3b

    .line 1211
    :pswitch_5b
    const-string v2, "NfcHandover"

    const-string v3, "p2p fast connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v2}, Lcom/android/nfc/handover/P2PHandover;->createFastConDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1213
    goto :goto_3b

    .line 1215
    :pswitch_69
    const-string v2, "NfcHandover"

    const-string v3, "wlan share handover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v2}, Lcom/android/nfc/handover/WiFiHandover;->createWlanDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1217
    goto :goto_3b

    .line 1227
    :cond_77
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->createFastHandoverRequestRecord(I)Landroid/nfc/NdefRecord;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 1229
    .local v1, "resultMessage":Landroid/nfc/NdefMessage;
    const-string v2, "NfcHandover"

    const-string v3, "Leave createFastConHandoverRequest"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 1201
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_4d
        :pswitch_5b
        :pswitch_69
    .end packed-switch
.end method

.method createFastHandoverRequestRecord(I)Landroid/nfc/NdefRecord;
    .registers 12
    .param p1, "mode"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1241
    const-string v5, "NfcHandover"

    const-string v6, "Enter  createFastHandoverRequestRecord"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-static {}, Lcom/android/nfc/handover/HandoverManager;->createCollisionRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    new-array v6, v9, [Landroid/nfc/NdefRecord;

    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/HandoverManager;->createAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-direct {v1, v5, v6}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 1245
    .local v1, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    .line 1246
    .local v2, "nestedPayload":[B
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 1247
    .local v3, "payload":Ljava/nio/ByteBuffer;
    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1248
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1250
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v5

    new-array v4, v5, [B

    .line 1251
    .local v4, "payloadBytes":[B
    invoke-virtual {v3, v8}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1252
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "US_ASCII"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1254
    .local v0, "id":[B
    const-string v5, "NfcHandover"

    const-string v6, "Leave  createFastHandoverRequestRecord"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    new-instance v5, Landroid/nfc/NdefRecord;

    sget-object v6, Lcom/android/nfc/handover/HandoverManager;->CON_HANDOVER_REQUEST:[B

    invoke-direct {v5, v9, v6, v0, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v5
.end method

.method public createHandoverRequestMessage()Landroid/nfc/NdefMessage;
    .registers 6

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 516
    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->createHandoverRequestRecord()Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto :goto_5
.end method

.method public declared-synchronized createHandoverRequestMessage([Landroid/net/Uri;)Landroid/nfc/NdefMessage;
    .registers 10
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 1126
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->getLocalDeviceCapability()I

    move-result v1

    .line 1127
    .local v1, "mode":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1130
    .local v2, "ndefRecordList":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    const-string v5, "NfcHandover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createHandoverRequestMessage(): mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_51

    .line 1131
    packed-switch v1, :pswitch_data_ca

    .line 1184
    :goto_26
    monitor-exit p0

    return-object v4

    .line 1134
    :pswitch_28
    :try_start_28
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/P2PHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1135
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/WiFiHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/BTHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    :goto_43
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->createConfigInfoRecord([Landroid/net/Uri;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1173
    .local v0, "configRecord":Landroid/nfc/NdefRecord;
    if-nez v0, :cond_ab

    .line 1175
    const-string v5, "NfcHandover"

    const-string v6, "configRecord == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_28 .. :try_end_50} :catchall_51

    goto :goto_26

    .line 1126
    .end local v0    # "configRecord":Landroid/nfc/NdefRecord;
    .end local v1    # "mode":I
    .end local v2    # "ndefRecordList":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    :catchall_51
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1140
    .restart local v1    # "mode":I
    .restart local v2    # "ndefRecordList":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/NdefRecord;>;"
    :pswitch_54
    :try_start_54
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/P2PHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/WiFiHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 1145
    :pswitch_67
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/P2PHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/BTHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 1150
    :pswitch_7a
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/P2PHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 1155
    :pswitch_84
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/WiFiHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/BTHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 1161
    :pswitch_97
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/WiFiHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 1165
    :pswitch_a1
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v5}, Lcom/android/nfc/handover/BTHandover;->createDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 1178
    .restart local v0    # "configRecord":Landroid/nfc/NdefRecord;
    :cond_ab
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [Landroid/nfc/NdefRecord;

    .line 1180
    .local v3, "records":[Landroid/nfc/NdefRecord;
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1181
    new-instance v4, Landroid/nfc/NdefMessage;

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->createHandoverRequestRecord()Landroid/nfc/NdefRecord;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 1183
    .local v4, "resultMessage":Landroid/nfc/NdefMessage;
    const-string v5, "NfcHandover"

    const-string v6, "createHandoverRequestMessage is succese "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_54 .. :try_end_c7} :catchall_51

    goto/16 :goto_26

    .line 1131
    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_97
        :pswitch_84
        :pswitch_7a
        :pswitch_67
        :pswitch_54
        :pswitch_28
    .end packed-switch
.end method

.method createHandoverRequestRecord()Landroid/nfc/NdefRecord;
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 539
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-static {}, Lcom/android/nfc/handover/HandoverManager;->createCollisionRecord()Landroid/nfc/NdefRecord;

    move-result-object v4

    new-array v5, v8, [Landroid/nfc/NdefRecord;

    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/HandoverManager;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {v0, v4, v5}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 541
    .local v0, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 543
    .local v1, "nestedPayload":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 544
    .local v2, "payload":Ljava/nio/ByteBuffer;
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 545
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 547
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v4

    new-array v3, v4, [B

    .line 548
    .local v3, "payloadBytes":[B
    invoke-virtual {v2, v7}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 549
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 550
    new-instance v4, Landroid/nfc/NdefRecord;

    sget-object v5, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    const/4 v6, 0x0

    invoke-direct {v4, v8, v5, v6, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v4
.end method

.method createHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;
    .registers 7
    .param p1, "activating"    # Z

    .prologue
    .line 520
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->createHandoverSelectRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v0
.end method

.method createHandoverSelectRecord(Z)Landroid/nfc/NdefRecord;
    .registers 10
    .param p1, "activating"    # Z

    .prologue
    const/4 v6, 0x0

    .line 524
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v4

    new-array v5, v6, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v4, v5}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 525
    .local v0, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 527
    .local v1, "nestedPayload":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 528
    .local v2, "payload":Ljava/nio/ByteBuffer;
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 529
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 531
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v4

    new-array v3, v4, [B

    .line 532
    .local v3, "payloadBytes":[B
    invoke-virtual {v2, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 533
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 534
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x1

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v4
.end method

.method public createHwBeamConnecttingRecord(Z)Landroid/nfc/NdefRecord;
    .registers 10
    .param p1, "activating"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1791
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v4

    new-array v5, v6, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, v4, v5}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 1793
    .local v0, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 1794
    .local v1, "nestedPayload":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1795
    .local v2, "payload":Ljava/nio/ByteBuffer;
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1796
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1797
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v4

    new-array v3, v4, [B

    .line 1798
    .local v3, "payloadBytes":[B
    invoke-virtual {v2, v6}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1799
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1800
    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x2

    sget-object v6, Lcom/android/nfc/handover/HandoverManager;->TYPE_HWBEAM_CONNECTTING:[B

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v4
.end method

.method public doFastConHandover(Landroid/nfc/NdefMessage;)V
    .registers 3
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1341
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->parseResponseMessage(Landroid/nfc/NdefMessage;)V

    .line 1342
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    if-eqz v0, :cond_c

    .line 1343
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    invoke-virtual {v0, p1}, Lcom/android/nfc/handover/Handover;->doFastConHandover(Landroid/nfc/NdefMessage;)V

    .line 1345
    :cond_c
    return-void
.end method

.method public doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V
    .registers 12
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverManager;->getIsHwBeamFlag()Z

    move-result v4

    if-nez v4, :cond_69

    .line 682
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v4, :cond_b

    .line 702
    :cond_a
    :goto_a
    return-void

    .line 684
    :cond_b
    invoke-virtual {p0, p2}, Lcom/android/nfc/handover/HandoverManager;->parse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v0

    .line 685
    .local v0, "data":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    if-eqz v0, :cond_a

    iget-boolean v4, v0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    if-eqz v4, :cond_a

    .line 687
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 688
    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_1c
    invoke-static {v4, v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 689
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/handover/HandoverManager;->registerOutTransferLocked(Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;[Landroid/net/Uri;)Lcom/android/nfc/handover/PendingHandoverTransfer;

    move-result-object v2

    .line 690
    .local v2, "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 691
    .local v3, "transferData":Landroid/os/Bundle;
    const-string v4, "transfer"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 692
    invoke-virtual {v1, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 693
    const-string v4, "NfcHandover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initiating outgoing transfer, ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/handover/HandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]->["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverManager;->sendOrQueueMessageLocked(Landroid/os/Message;)Z

    .line 696
    monitor-exit v5

    goto :goto_a

    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    .end local v3    # "transferData":Landroid/os/Bundle;
    :catchall_66
    move-exception v4

    monitor-exit v5
    :try_end_68
    .catchall {:try_start_1c .. :try_end_68} :catchall_66

    throw v4

    .line 699
    .end local v0    # "data":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    :cond_69
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/handover/HandoverManager;->doHwBeamHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V

    goto :goto_a
.end method

.method public doHwBeamHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V
    .registers 4
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 1327
    invoke-direct {p0, p2}, Lcom/android/nfc/handover/HandoverManager;->parseResponseMessage(Landroid/nfc/NdefMessage;)V

    .line 1328
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    if-eqz v0, :cond_c

    .line 1329
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/handover/Handover;->doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V

    .line 1331
    :cond_c
    return-void
.end method

.method public getConfigInfo(Ljava/lang/String;)Lcom/android/nfc/handover/ConfigInfo;
    .registers 9
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 981
    const/4 v1, 0x0

    .line 982
    .local v1, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 983
    .local v2, "filePath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 984
    .local v5, "serverPortString":Ljava/lang/String;
    const/4 v4, -0x1

    .line 985
    .local v4, "serverPort":I
    new-instance v3, Lcom/android/nfc/handover/FileInfo;

    invoke-direct {v3}, Lcom/android/nfc/handover/FileInfo;-><init>()V

    .line 986
    .local v3, "mFileInfo":Lcom/android/nfc/handover/FileInfo;
    const-string v6, "filename"

    invoke-direct {p0, p1, v6}, Lcom/android/nfc/handover/HandoverManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 987
    const-string v6, "filepath"

    invoke-direct {p0, p1, v6}, Lcom/android/nfc/handover/HandoverManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 988
    const-string v6, "serverport"

    invoke-direct {p0, p1, v6}, Lcom/android/nfc/handover/HandoverManager;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 990
    if-eqz v1, :cond_1f

    if-nez v2, :cond_21

    .line 991
    :cond_1f
    const/4 v0, 0x0

    .line 1006
    :goto_20
    return-object v0

    .line 994
    :cond_21
    if-nez v5, :cond_37

    .line 995
    const/16 v4, 0x231c

    .line 1000
    :goto_25
    invoke-virtual {v3, v1}, Lcom/android/nfc/handover/FileInfo;->setFileName(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v3, v2}, Lcom/android/nfc/handover/FileInfo;->setFilePath(Ljava/lang/String;)V

    .line 1003
    new-instance v0, Lcom/android/nfc/handover/ConfigInfo;

    invoke-direct {v0, v3, v4}, Lcom/android/nfc/handover/ConfigInfo;-><init>(Lcom/android/nfc/handover/FileInfo;I)V

    .line 1004
    .local v0, "configInfo":Lcom/android/nfc/handover/ConfigInfo;
    invoke-virtual {v0, v3}, Lcom/android/nfc/handover/ConfigInfo;->setmFileInfo(Lcom/android/nfc/handover/FileInfo;)V

    .line 1005
    invoke-virtual {v0, v4}, Lcom/android/nfc/handover/ConfigInfo;->setmServerPort(I)V

    goto :goto_20

    .line 997
    .end local v0    # "configInfo":Lcom/android/nfc/handover/ConfigInfo;
    :cond_37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_25
.end method

.method public getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 926
    const-string v7, "file"

    .line 927
    .local v7, "FILE_SCHEME":Ljava/lang/String;
    const-string v6, "content"

    .line 929
    .local v6, "CONTENT_SCHEME":Ljava/lang/String;
    const/4 v10, 0x0

    .line 930
    .local v10, "tempFilePath":Ljava/lang/String;
    if-nez p1, :cond_9

    .line 976
    :goto_8
    return-object v0

    .line 934
    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 950
    :try_start_13
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_28} :catch_53

    move-result-object v9

    .line 957
    .local v9, "metadataCursor":Landroid/database/Cursor;
    :goto_29
    if-eqz v9, :cond_51

    .line 959
    :try_start_2b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 960
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 962
    const-string v0, "NfcHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONTENT_SCHEME tempFilePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_2b .. :try_end_4e} :catchall_5d

    .line 966
    :cond_4e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .end local v9    # "metadataCursor":Landroid/database/Cursor;
    :cond_51
    :goto_51
    move-object v0, v10

    .line 976
    goto :goto_8

    .line 952
    :catch_53
    move-exception v8

    .line 953
    .local v8, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 954
    .restart local v9    # "metadataCursor":Landroid/database/Cursor;
    const-string v0, "NfcHandover"

    const-string v1, "Exception e: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_29

    .line 966
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_5d
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 969
    .end local v9    # "metadataCursor":Landroid/database/Cursor;
    :cond_62
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 971
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 973
    const-string v0, "NfcHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FILE_SCHEME tempFilePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method

.method public getLocalDeviceCapability()I
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1383
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1384
    .local v0, "ability":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mP2PHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/P2PHandover;->isHandoverSupported()Z

    move-result v1

    if-eqz v1, :cond_36

    move v1, v2

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mWiFiHandover:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/WiFiHandover;->isHandoverSupported()Z

    move-result v1

    if-eqz v1, :cond_38

    move v1, v2

    :goto_1d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v4}, Lcom/android/nfc/handover/BTHandover;->isHandoverSupported()Z

    move-result v4

    if-eqz v4, :cond_3a

    :goto_29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1387
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_36
    move v1, v3

    .line 1384
    goto :goto_10

    :cond_38
    move v1, v3

    goto :goto_1d

    :cond_3a
    move v2, v3

    goto :goto_29
.end method

.method public getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1761
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    .line 1786
    :cond_7
    :goto_7
    return-object v2

    .line 1765
    :cond_8
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1766
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1767
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 1768
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1d
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1769
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/nfc/handover/HandoverManager;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1770
    .local v3, "tempExtension":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 1772
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1773
    .local v1, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1775
    .local v2, "mMimeType":Ljava/lang/String;
    if-nez v2, :cond_7

    .line 1778
    sget-object v4, Lcom/android/nfc/handover/HandoverManager;->sMimeCheckList:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    goto :goto_7

    .line 1785
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "mMimeType":Ljava/lang/String;
    .end local v3    # "tempExtension":Ljava/lang/String;
    :cond_4d
    const-string v4, "NfcHandover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not determine mime type for Uri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method declared-synchronized getOrCreateHandoverTransfer(Ljava/lang/String;ZZ)Lcom/android/nfc/handover/HandoverTransfer;
    .registers 12
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "incoming"    # Z
    .param p3, "create"    # Z

    .prologue
    .line 363
    monitor-enter p0

    :try_start_1
    new-instance v7, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v7, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 365
    .local v7, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 366
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/handover/HandoverTransfer;

    .line 367
    .local v0, "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_48

    move-result v1

    if-eqz v1, :cond_24

    .line 382
    .end local v0    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :goto_22
    monitor-exit p0

    return-object v0

    .line 370
    .restart local v0    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_24
    if-eqz p3, :cond_2b

    .line 371
    :try_start_26
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .end local v0    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_2b
    if-eqz p3, :cond_4b

    .line 375
    new-instance v0, Lcom/android/nfc/handover/HandoverTransfer;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/nfc/handover/HandoverManager;->mHandoverTransferId:I

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lcom/android/nfc/handover/HandoverManager;->mHandoverTransferId:I

    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverManager;->getIsHwBeamFlag()Z

    move-result v5

    iget-object v6, p0, Lcom/android/nfc/handover/HandoverManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/nfc/handover/HandoverTransfer;-><init>(Landroid/content/Context;Ljava/lang/String;ZIZLcom/android/nfc/handover/HandoverManager$HandoverPowerManager;)V

    .line 378
    .restart local v0    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_26 .. :try_end_47} :catchall_48

    goto :goto_22

    .line 363
    .end local v0    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    .end local v7    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :catchall_48
    move-exception v1

    monitor-exit p0

    throw v1

    .line 382
    .restart local v7    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_4b
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public getSelectHandover()Lcom/android/nfc/handover/Handover;
    .registers 2

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    return-object v0
.end method

.method public getServerPort()I
    .registers 3

    .prologue
    .line 1727
    iget v0, p0, Lcom/android/nfc/handover/HandoverManager;->mServerPort:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 1728
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverManager;->getUsefullPort()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/handover/HandoverManager;->mServerPort:I

    .line 1730
    :cond_b
    iget v0, p0, Lcom/android/nfc/handover/HandoverManager;->mServerPort:I

    return v0
.end method

.method isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z
    .registers 20
    .param p1, "handoverRec"    # Landroid/nfc/NdefRecord;
    .param p2, "carrierId"    # [B

    .prologue
    .line 732
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v12

    .line 733
    .local v12, "payload":[B
    if-eqz v12, :cond_a

    array-length v14, v12

    const/4 v15, 0x1

    if-gt v14, v15, :cond_c

    :cond_a
    const/4 v14, 0x0

    .line 761
    :goto_b
    return v14

    .line 735
    :cond_c
    array-length v14, v12

    add-int/lit8 v14, v14, -0x1

    new-array v13, v14, [B

    .line 736
    .local v13, "payloadNdef":[B
    const/4 v14, 0x1

    const/4 v15, 0x0

    array-length v0, v12

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-static {v12, v14, v13, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    :try_start_1d
    new-instance v11, Landroid/nfc/NdefMessage;

    invoke-direct {v11, v13}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_22
    .catch Landroid/nfc/FormatException; {:try_start_1d .. :try_end_22} :catch_49

    .line 744
    .local v11, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {v11}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    .local v3, "arr$":[Landroid/nfc/NdefRecord;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_28
    if-ge v9, v10, :cond_63

    aget-object v2, v3, v9

    .line 745
    .local v2, "alt":Landroid/nfc/NdefRecord;
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    .line 746
    .local v1, "acPayload":[B
    if-eqz v1, :cond_60

    .line 747
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 748
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit8 v7, v14, 0x3

    .line 749
    .local v7, "cps":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v6, v14, 0xff

    .line 750
    .local v6, "carrierRefLength":I
    move-object/from16 v0, p2

    array-length v14, v0

    if-eq v6, v14, :cond_4c

    const/4 v14, 0x0

    goto :goto_b

    .line 740
    .end local v1    # "acPayload":[B
    .end local v2    # "alt":Landroid/nfc/NdefRecord;
    .end local v3    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "carrierRefLength":I
    .end local v7    # "cps":I
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "msg":Landroid/nfc/NdefMessage;
    :catch_49
    move-exception v8

    .line 741
    .local v8, "e":Landroid/nfc/FormatException;
    const/4 v14, 0x0

    goto :goto_b

    .line 752
    .end local v8    # "e":Landroid/nfc/FormatException;
    .restart local v1    # "acPayload":[B
    .restart local v2    # "alt":Landroid/nfc/NdefRecord;
    .restart local v3    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    .restart local v6    # "carrierRefLength":I
    .restart local v7    # "cps":I
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v11    # "msg":Landroid/nfc/NdefMessage;
    :cond_4c
    new-array v5, v6, [B

    .line 753
    .local v5, "carrierRefId":[B
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 754
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_60

    .line 756
    const/4 v14, 0x2

    if-ne v7, v14, :cond_5e

    const/4 v14, 0x1

    goto :goto_b

    :cond_5e
    const/4 v14, 0x0

    goto :goto_b

    .line 744
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "carrierRefId":[B
    .end local v6    # "carrierRefLength":I
    .end local v7    # "cps":I
    :cond_60
    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    .line 761
    .end local v1    # "acPayload":[B
    .end local v2    # "alt":Landroid/nfc/NdefRecord;
    :cond_63
    const/4 v14, 0x1

    goto :goto_b
.end method

.method public isHandoverSupported()Z
    .registers 2

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverManager;->getIsHwBeamFlag()Z

    move-result v0

    if-nez v0, :cond_e

    .line 506
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 508
    :goto_b
    return v0

    .line 506
    :cond_c
    const/4 v0, 0x0

    goto :goto_b

    .line 508
    :cond_e
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->isHwBeamHandoverSupported()Z

    move-result v0

    goto :goto_b
.end method

.method public isHwBeamConnectting(Landroid/nfc/NdefMessage;)Z
    .registers 6
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v1, 0x0

    .line 1805
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v0, v2, v1

    .line 1806
    .local v0, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_22

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    sget-object v3, Lcom/android/nfc/handover/HandoverManager;->TYPE_HWBEAM_CONNECTTING:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1809
    const-string v1, "NfcHandover"

    const-string v2, "isP2PHandoverConnectting P2PHandover is connectting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const/4 v1, 0x1

    .line 1813
    :cond_22
    return v1
.end method

.method public isHwBeamHandoverSupported()Z
    .registers 2

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->getLocalDeviceCapability()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method parse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    .registers 7
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 783
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 784
    .local v0, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    .line 785
    .local v1, "tnf":S
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    .line 788
    .local v2, "type":[B
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2f

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/HandoverManager;->TYPE_BT_OOB:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 789
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverManager;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v3

    .line 803
    :goto_2e
    return-object v3

    .line 793
    :cond_2f
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3f

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 795
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->parseHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v3

    goto :goto_2e

    .line 799
    :cond_3f
    const/4 v3, 0x4

    if-ne v1, v3, :cond_57

    sget-object v3, Lcom/android/nfc/handover/HandoverManager;->TYPE_NOKIA:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 800
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverManager;->parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v3

    goto :goto_2e

    .line 803
    :cond_57
    const/4 v3, 0x0

    goto :goto_2e
.end method

.method parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    .registers 12
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 831
    new-instance v5, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    invoke-direct {v5}, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;-><init>()V

    .line 832
    .local v5, "result":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    .line 835
    const/4 v8, 0x2

    :try_start_9
    invoke-virtual {p1, v8}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 836
    const/4 v8, 0x6

    new-array v0, v8, [B

    .line 837
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 840
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    const/4 v8, 0x3

    if-ge v2, v8, :cond_25

    .line 841
    aget-byte v6, v0, v2

    .line 842
    .local v6, "temp":B
    rsub-int/lit8 v8, v2, 0x5

    aget-byte v8, v0, v8

    aput-byte v8, v0, v2

    .line 843
    rsub-int/lit8 v8, v2, 0x5

    aput-byte v6, v0, v8

    .line 840
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 845
    .end local v6    # "temp":B
    :cond_25
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    iput-object v8, v5, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 846
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    .line 848
    :cond_30
    :goto_30
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v8

    if-lez v8, :cond_54

    .line 850
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 851
    .local v3, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 852
    .local v7, "type":I
    packed-switch v7, :pswitch_data_98

    .line 865
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v8}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;
    :try_end_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_4b} :catch_4c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_9 .. :try_end_4b} :catch_76

    goto :goto_30

    .line 869
    .end local v0    # "address":[B
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v7    # "type":I
    :catch_4c
    move-exception v1

    .line 870
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "NfcHandover"

    const-string v9, "BT OOB: invalid BT address"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_54
    :goto_54
    iget-boolean v8, v5, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    if-eqz v8, :cond_60

    iget-object v8, v5, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v8, :cond_60

    const-string v8, ""

    iput-object v8, v5, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 875
    :cond_60
    return-object v5

    .line 854
    .restart local v0    # "address":[B
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v7    # "type":I
    :pswitch_61
    add-int/lit8 v8, v3, -0x1

    :try_start_63
    new-array v4, v8, [B

    .line 855
    .local v4, "nameBytes":[B
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 856
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v8, v5, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_75} :catch_4c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_63 .. :try_end_75} :catch_76

    goto :goto_30

    .line 871
    .end local v0    # "address":[B
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "nameBytes":[B
    .end local v7    # "type":I
    :catch_76
    move-exception v1

    .line 872
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v8, "NfcHandover"

    const-string v9, "BT OOB: payload shorter than expected"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 859
    .end local v1    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v0    # "address":[B
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    .restart local v7    # "type":I
    :pswitch_7f
    :try_start_7f
    iget-object v8, v5, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v8, :cond_30

    .line 860
    add-int/lit8 v8, v3, -0x1

    new-array v4, v8, [B

    .line 861
    .restart local v4    # "nameBytes":[B
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 862
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v8, v5, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_97
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_97} :catch_4c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_7f .. :try_end_97} :catch_76

    goto :goto_30

    .line 852
    :pswitch_data_98
    .packed-switch 0x8
        :pswitch_61
        :pswitch_7f
    .end packed-switch
.end method

.method public parseConfigInfoRecord(Landroid/nfc/NdefRecord;)Lcom/android/nfc/handover/ConfigInfo;
    .registers 8
    .param p1, "fileInfoRecord"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v3, 0x0

    .line 1010
    const/4 v0, 0x0

    .line 1012
    .local v0, "configInfo":Lcom/android/nfc/handover/ConfigInfo;
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v4

    sget-object v5, Lcom/android/nfc/handover/HandoverManager;->TYPE_BEAM_CONFIG_RECORD:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1027
    :cond_15
    :goto_15
    return-object v3

    .line 1020
    :cond_16
    :try_start_16
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1022
    .local v2, "payloadString":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverManager;->getConfigInfo(Ljava/lang/String;)Lcom/android/nfc/handover/ConfigInfo;
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_24} :catch_27

    move-result-object v0

    move-object v3, v0

    .line 1023
    goto :goto_15

    .line 1024
    .end local v2    # "payloadString":Ljava/lang/String;
    :catch_27
    move-exception v1

    .line 1026
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15
.end method

.method parseHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    .registers 9
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 768
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_6
    if-ge v2, v3, :cond_43

    aget-object v4, v0, v2

    .line 769
    .local v4, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_40

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Lcom/android/nfc/handover/HandoverManager;->TYPE_BT_OOB:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 771
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/HandoverManager;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v1

    .line 772
    .local v1, "data":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    if-eqz v1, :cond_3f

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/nfc/handover/HandoverManager;->isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 773
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->carrierActivating:Z

    .line 779
    .end local v1    # "data":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    .end local v4    # "oob":Landroid/nfc/NdefRecord;
    :cond_3f
    :goto_3f
    return-object v1

    .line 768
    .restart local v4    # "oob":Landroid/nfc/NdefRecord;
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 779
    .end local v4    # "oob":Landroid/nfc/NdefRecord;
    :cond_43
    const/4 v1, 0x0

    goto :goto_3f
.end method

.method parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    .registers 9
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 807
    new-instance v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    invoke-direct {v4}, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;-><init>()V

    .line 808
    .local v4, "result":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    .line 811
    const/4 v5, 0x1

    :try_start_9
    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 812
    const/4 v5, 0x6

    new-array v0, v5, [B

    .line 813
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 814
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    iput-object v5, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 815
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    .line 816
    const/16 v5, 0xe

    invoke-virtual {p1, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 817
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 818
    .local v3, "nameLength":I
    new-array v2, v3, [B

    .line 819
    .local v2, "nameBytes":[B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 820
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_38} :catch_45
    .catch Ljava/nio/BufferUnderflowException; {:try_start_9 .. :try_end_38} :catch_4e

    .line 826
    .end local v0    # "address":[B
    .end local v2    # "nameBytes":[B
    .end local v3    # "nameLength":I
    :goto_38
    iget-boolean v5, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    if-eqz v5, :cond_44

    iget-object v5, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v5, :cond_44

    const-string v5, ""

    iput-object v5, v4, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 827
    :cond_44
    return-object v4

    .line 821
    :catch_45
    move-exception v1

    .line 822
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "NfcHandover"

    const-string v6, "nokia: invalid BT address"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 823
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4e
    move-exception v1

    .line 824
    .local v1, "e":Ljava/nio/BufferUnderflowException;
    const-string v5, "NfcHandover"

    const-string v6, "nokia: payload shorter than expected"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method registerInTransferLocked(Landroid/bluetooth/BluetoothDevice;)Lcom/android/nfc/handover/PendingHandoverTransfer;
    .registers 8
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 705
    new-instance v0, Lcom/android/nfc/handover/PendingHandoverTransfer;

    iget v1, p0, Lcom/android/nfc/handover/HandoverManager;->mHandoverTransferId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/nfc/handover/HandoverManager;->mHandoverTransferId:I

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/handover/PendingHandoverTransfer;-><init>(IZLandroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V

    .line 707
    .local v0, "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    iget v2, v0, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    return-object v0
.end method

.method registerOutTransferLocked(Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;[Landroid/net/Uri;)Lcom/android/nfc/handover/PendingHandoverTransfer;
    .registers 9
    .param p1, "data"    # Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    .param p2, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 714
    new-instance v0, Lcom/android/nfc/handover/PendingHandoverTransfer;

    iget v1, p0, Lcom/android/nfc/handover/HandoverManager;->mHandoverTransferId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/nfc/handover/HandoverManager;->mHandoverTransferId:I

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v4, p1, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->carrierActivating:Z

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/handover/PendingHandoverTransfer;-><init>(IZLandroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V

    .line 716
    .local v0, "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    iget v2, v0, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    return-object v0
.end method

.method removeTransferLocked(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    return-void
.end method

.method public sendFastConnectResult(II)V
    .registers 5
    .param p1, "mode"    # I
    .param p2, "result"    # I

    .prologue
    .line 1358
    if-nez p2, :cond_14

    .line 1359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_FAST_CONNECTION_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1360
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1361
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1369
    :goto_13
    return-void

    .line 1363
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_14
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_FAST_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1364
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1365
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1366
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_13
.end method

.method public sendOrQueueMessageLocked(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 619
    iget-boolean v2, p0, Lcom/android/nfc/handover/HandoverManager;->mBound:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;

    if-nez v2, :cond_1e

    .line 621
    :cond_9
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->bindServiceIfNeededLocked()Z

    move-result v2

    if-nez v2, :cond_17

    .line 622
    const-string v2, "NfcHandover"

    const-string v3, "Could not start service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_16
    return v1

    .line 626
    :cond_17
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingServiceMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    :goto_1c
    const/4 v1, 0x1

    goto :goto_16

    .line 629
    :cond_1e
    :try_start_1e
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverManager;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_1c

    .line 630
    :catch_24
    move-exception v0

    .line 631
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "NfcHandover"

    const-string v3, "Could not connect to handover service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 499
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 500
    :try_start_3
    iput-boolean p1, p0, Lcom/android/nfc/handover/HandoverManager;->mEnabled:Z

    .line 501
    monitor-exit v1

    .line 502
    return-void

    .line 501
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setServerPort(I)V
    .registers 2
    .param p1, "port"    # I

    .prologue
    .line 1734
    iput p1, p0, Lcom/android/nfc/handover/HandoverManager;->mServerPort:I

    .line 1735
    return-void
.end method

.method public tryHandover(Landroid/nfc/NdefMessage;)Z
    .registers 10
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 640
    sget-boolean v5, Lcom/android/nfc/handover/Constants;->supportHWBeam:Z

    if-ne v4, v5, :cond_d

    .line 641
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverManager;->mBTHandover:Lcom/android/nfc/handover/BTHandover;

    invoke-virtual {v3, p1}, Lcom/android/nfc/handover/BTHandover;->tryHandover(Landroid/nfc/NdefMessage;)Z

    move-result v3

    .line 671
    :cond_c
    :goto_c
    return v3

    .line 644
    :cond_d
    if-eqz p1, :cond_c

    .line 645
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_c

    .line 647
    const-string v5, "NfcHandover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tryHandover(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->parse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v0

    .line 650
    .local v0, "handover":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    if-eqz v0, :cond_c

    .line 651
    iget-boolean v5, v0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    if-nez v5, :cond_3b

    move v3, v4

    goto :goto_c

    .line 653
    :cond_3b
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 654
    :try_start_3e
    iget-boolean v5, p0, Lcom/android/nfc/handover/HandoverManager;->mEnabled:Z

    if-nez v5, :cond_47

    monitor-exit v4

    goto :goto_c

    .line 672
    :catchall_44
    move-exception v3

    monitor-exit v4
    :try_end_46
    .catchall {:try_start_3e .. :try_end_46} :catchall_44

    throw v3

    .line 666
    :cond_47
    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_4b
    invoke-static {v3, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 667
    .local v2, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 668
    .local v1, "headsetData":Landroid/os/Bundle;
    const-string v3, "device"

    iget-object v5, v0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 669
    const-string v3, "headsetname"

    iget-object v5, v0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 671
    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverManager;->sendOrQueueMessageLocked(Landroid/os/Message;)Z

    move-result v3

    monitor-exit v4
    :try_end_6a
    .catchall {:try_start_4b .. :try_end_6a} :catchall_44

    goto :goto_c
.end method

.method public tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 16
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverManager;->getIsHwBeamFlag()Z

    move-result v11

    if-nez v11, :cond_f8

    .line 561
    if-nez p1, :cond_a

    const/4 v8, 0x0

    .line 613
    :goto_9
    return-object v8

    .line 562
    :cond_a
    iget-object v11, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v11, :cond_10

    const/4 v8, 0x0

    goto :goto_9

    .line 564
    :cond_10
    const-string v11, "NfcHandover"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tryHandoverRequest():"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v7, v11, v12

    .line 567
    .local v7, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v7}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_3c

    const/4 v8, 0x0

    goto :goto_9

    .line 568
    :cond_3c
    invoke-virtual {v7}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v11

    sget-object v12, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-nez v11, :cond_4a

    const/4 v8, 0x0

    goto :goto_9

    .line 571
    :cond_4a
    const/4 v2, 0x0

    .line 572
    .local v2, "bluetoothData":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_51
    if-ge v3, v4, :cond_74

    aget-object v6, v0, v3

    .line 573
    .local v6, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_78

    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v11

    sget-object v12, Lcom/android/nfc/handover/HandoverManager;->TYPE_BT_OOB:[B

    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_78

    .line 575
    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v11

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/nfc/handover/HandoverManager;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v2

    .line 579
    .end local v6    # "oob":Landroid/nfc/NdefRecord;
    :cond_74
    if-nez v2, :cond_7b

    const/4 v8, 0x0

    goto :goto_9

    .line 572
    .restart local v6    # "oob":Landroid/nfc/NdefRecord;
    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 588
    .end local v6    # "oob":Landroid/nfc/NdefRecord;
    :cond_7b
    iget-object v11, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_92

    const/4 v1, 0x1

    .line 589
    .local v1, "bluetoothActivating":Z
    :goto_84
    iget-object v12, p0, Lcom/android/nfc/handover/HandoverManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 590
    :try_start_87
    iget-boolean v11, p0, Lcom/android/nfc/handover/HandoverManager;->mEnabled:Z

    if-nez v11, :cond_94

    const/4 v8, 0x0

    monitor-exit v12

    goto/16 :goto_9

    .line 602
    :catchall_8f
    move-exception v11

    monitor-exit v12
    :try_end_91
    .catchall {:try_start_87 .. :try_end_91} :catchall_8f

    throw v11

    .line 588
    .end local v1    # "bluetoothActivating":Z
    :cond_92
    const/4 v1, 0x0

    goto :goto_84

    .line 592
    .restart local v1    # "bluetoothActivating":Z
    :cond_94
    const/4 v11, 0x0

    const/4 v13, 0x2

    :try_start_96
    invoke-static {v11, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    .line 593
    .local v5, "msg":Landroid/os/Message;
    iget-object v11, v2, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v11}, Lcom/android/nfc/handover/HandoverManager;->registerInTransferLocked(Landroid/bluetooth/BluetoothDevice;)Lcom/android/nfc/handover/PendingHandoverTransfer;

    move-result-object v9

    .line 594
    .local v9, "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 595
    .local v10, "transferData":Landroid/os/Bundle;
    const-string v11, "transfer"

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 596
    invoke-virtual {v5, v10}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 598
    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/HandoverManager;->sendOrQueueMessageLocked(Landroid/os/Message;)Z

    move-result v11

    if-nez v11, :cond_bc

    .line 599
    iget v11, v9, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-virtual {p0, v11}, Lcom/android/nfc/handover/HandoverManager;->removeTransferLocked(I)V

    .line 600
    const/4 v8, 0x0

    monitor-exit v12

    goto/16 :goto_9

    .line 602
    :cond_bc
    monitor-exit v12
    :try_end_bd
    .catchall {:try_start_96 .. :try_end_bd} :catchall_8f

    .line 604
    iget-object v11, v2, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v11}, Lcom/android/nfc/handover/HandoverManager;->whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 607
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverManager;->createHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;

    move-result-object v8

    .line 608
    .local v8, "selectMessage":Landroid/nfc/NdefMessage;
    const-string v11, "NfcHandover"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Waiting for incoming transfer, ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v2, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v13}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]->["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/nfc/handover/HandoverManager;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 613
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v1    # "bluetoothActivating":Z
    .end local v2    # "bluetoothData":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v7    # "r":Landroid/nfc/NdefRecord;
    .end local v8    # "selectMessage":Landroid/nfc/NdefMessage;
    .end local v9    # "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    .end local v10    # "transferData":Landroid/os/Bundle;
    :cond_f8
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->tryHwBeamHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v8

    goto/16 :goto_9
.end method

.method public tryHwBeamHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 11
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1265
    if-nez p1, :cond_5

    .line 1322
    :cond_4
    :goto_4
    return-object v4

    .line 1270
    :cond_5
    const-string v5, "NfcHandover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tryHwBeamHandoverRequest():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v3, v5, v6

    .line 1273
    .local v3, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    if-ne v5, v8, :cond_4

    .line 1277
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Lcom/android/nfc/handover/HandoverManager;->CON_HANDOVER_REQUEST:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 1280
    :try_start_3a
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/nfc/handover/HandoverManager;->confirmFastConHandover(I)Lcom/android/nfc/handover/Handover;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_4f} :catch_5a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3a .. :try_end_4f} :catch_61

    .line 1292
    :goto_4f
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    if-eqz v5, :cond_4

    .line 1293
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    invoke-virtual {v4, p1}, Lcom/android/nfc/handover/Handover;->tryFastConHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v4

    goto :goto_4

    .line 1282
    :catch_5a
    move-exception v1

    .line 1284
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1285
    iput-object v4, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    goto :goto_4f

    .line 1286
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_61
    move-exception v1

    .line 1288
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1289
    iput-object v4, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    goto :goto_4f

    .line 1296
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_68
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1299
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverManager;->getCapabilityNdefRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 1300
    .local v0, "configNdefRecord":Landroid/nfc/NdefRecord;
    if-nez v0, :cond_97

    .line 1302
    const-string v5, "NfcHandover"

    const-string v6, "R.getid is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->getLocalDeviceCapability()I

    move-result v5

    invoke-direct {p0, v8, v5}, Lcom/android/nfc/handover/HandoverManager;->confirmHandover(II)Lcom/android/nfc/handover/Handover;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    .line 1319
    :goto_8b
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    if-eqz v5, :cond_4

    .line 1320
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;

    invoke-virtual {v4, p1}, Lcom/android/nfc/handover/Handover;->tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v4

    goto/16 :goto_4

    .line 1307
    :cond_97
    :try_start_97
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1309
    .local v2, "idString":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverManager;->getLocalDeviceCapability()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/nfc/handover/HandoverManager;->confirmHandover(II)Lcom/android/nfc/handover/Handover;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/handover/HandoverManager;->selectHandover:Lcom/android/nfc/handover/Handover;
    :try_end_b0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_97 .. :try_end_b0} :catch_b1

    goto :goto_8b

    .line 1311
    .end local v2    # "idString":Ljava/lang/String;
    :catch_b1
    move-exception v1

    .line 1313
    .restart local v1    # "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4
.end method

.method unbindServiceIfNeededLocked(Z)V
    .registers 5
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x0

    .line 450
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverManager;->mBound:Z

    if-eqz v0, :cond_2f

    if-nez p1, :cond_13

    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetPending:Z

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 451
    :cond_13
    const-string v0, "NfcHandover"

    const-string v1, "Unbinding from service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 453
    iput-boolean v2, p0, Lcom/android/nfc/handover/HandoverManager;->mBound:Z

    .line 454
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingServiceMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 455
    iput-boolean v2, p0, Lcom/android/nfc/handover/HandoverManager;->mBluetoothHeadsetPending:Z

    .line 456
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverManager;->mPendingTransfers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 458
    :cond_2f
    return-void
.end method

.method whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 725
    const-string v1, "NfcHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Whitelisting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for BT OPP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 728
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 729
    return-void
.end method
