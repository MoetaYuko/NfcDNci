.class public Lcom/android/nfc/handover/P2PHandoverClientSession;
.super Ljava/lang/Object;
.source "P2PHandoverClientSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectTimerOutTask;,
        Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;,
        Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;
    }
.end annotation


# static fields
.field static final ACTION_CONNECT_STATE_CHANGE:Ljava/lang/String; = "android.net.wifi.p2p.CONNECT_STATE_CHANGE"

.field public static final ARP_FILE_PATH:Ljava/lang/String; = "/proc/net/arp"

.field private static final BEAM_DIR:Ljava/lang/String; = "beam"

.field static final CONNECT_STATE_CHANGE_EXTRA:Ljava/lang/String; = "extraState"

.field static final CONNECT_TIME_OUT:I = 0x7530

.field static final DBG:Z = true

.field static final EVENT_CONNECT_FAIL:I = 0x3

.field static final FAILED_CONNECT_EEEOR:I = 0x3

.field static final FAILED_CONNECT_TIME_OUT:I = 0x2

.field static final FAILED_ERROR:I = 0x4

.field static final FAILED_NONE:I = 0x0

.field static final FAILED_P2P_DISABLE:I = 0x1

.field static final P2P_CONNECTED:I = 0x4

.field static final P2P_CONNECTING:I = 0x3

.field static final P2P_DEAULT_SERVER_IP:Ljava/lang/String; = "192.168.49.1"

.field static final P2P_IDLE:I = 0x1

.field static final P2P_SEARCHING:I = 0x2

.field static final TAG:Ljava/lang/String; = "P2PHandoverClientSession"


# instance fields
.field private P2PconnectState:I

.field private channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private configInfo:Lcom/android/nfc/handover/ConfigInfo;

.field private connectTotalTimer:Ljava/util/Timer;

.field private fastConnectFlag:Z

.field private final intentFilter:Landroid/content/IntentFilter;

.field private isFastConnect:Z

.field private mClientInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

.field private mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

.field private mContext:Landroid/content/Context;

.field private mGoInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

.field private mHandoverReceiver:Landroid/content/BroadcastReceiver;

.field private mP2PConnectListener:Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;

.field private mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

.field private mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

.field private mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private manager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private remoteName:Ljava/lang/String;

.field private final transferFilter:Landroid/content/IntentFilter;

.field private transmitKeyString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;I)V
    .registers 8
    .param p1, "p2pHandover"    # Lcom/android/nfc/handover/P2PHandover;
    .param p2, "remotehandoverdata"    # Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    .param p3, "mTransmiteKey"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 75
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transferFilter:Landroid/content/IntentFilter;

    .line 80
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    .line 84
    iput v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PconnectState:I

    .line 85
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitKeyString:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->remoteName:Ljava/lang/String;

    .line 91
    iput-boolean v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->isFastConnect:Z

    .line 92
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    .line 171
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverClientSession$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverClientSession$1;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2PConnectListener:Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;

    .line 308
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverClientSession$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverClientSession$2;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mGoInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 350
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverClientSession$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverClientSession$3;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mClientInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 416
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverClientSession$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverClientSession$4;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .line 877
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverClientSession$5;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverClientSession$5;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    .line 118
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/P2PHandover;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .line 121
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    iget-object v0, v0, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->remoteName:Ljava/lang/String;

    .line 123
    iget-object v0, p2, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    .line 124
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitKeyString:Ljava/lang/String;

    .line 125
    iput-boolean v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->fastConnectFlag:Z

    .line 126
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V

    .line 127
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 128
    return-void
.end method

.method private P2PFastConnectFailed(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 1030
    const-string v0, "P2PHandoverClientSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fast connect failed reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/handover/HandoverManager;->sendFastConnectResult(II)V

    .line 1032
    return-void
.end method

.method private P2PFastConnectSuccess()V
    .registers 4

    .prologue
    .line 1044
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "fast connect success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopConnectTimer()V

    .line 1046
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 1047
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/handover/HandoverManager;->sendFastConnectResult(II)V

    .line 1048
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopConnect(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/P2PHandoverClientSession;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PFastConnectSuccess()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/TransmitManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/nfc/handover/P2PHandoverClientSession;Lcom/android/nfc/handover/TransmitManager;)Lcom/android/nfc/handover/TransmitManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p1, "x1"    # Lcom/android/nfc/handover/TransmitManager;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/ConfigInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitKeyString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/nfc/handover/P2PHandoverClientSession;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->startTransmitClient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->createConnectToServer()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mGoInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mClientInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->startConnectTimer()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/nfc/handover/P2PHandoverClientSession;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->remoteName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitCancel()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/nfc/handover/P2PHandoverClientSession;Landroid/net/wifi/p2p/WifiP2pManager;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pManager;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/nfc/handover/P2PHandoverClientSession;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/nfc/handover/P2PHandoverClientSession;)Lcom/android/nfc/handover/P2PHandover;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopConnectTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/nfc/handover/P2PHandoverClientSession;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/nfc/handover/P2PHandoverClientSession;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/nfc/handover/P2PHandoverClientSession;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->isFastConnect:Z

    return v0
.end method

.method private addressToReverseBytes(Ljava/lang/String;)[C
    .registers 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 640
    const/16 v5, 0xc

    new-array v2, v5, [C

    .line 642
    .local v2, "result":[C
    const/4 v4, 0x0

    .line 643
    .local v4, "x":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_25

    .line 645
    :try_start_c
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    aget-byte v5, v5, v1

    int-to-char v3, v5

    .line 646
    .local v3, "ss":C
    const/16 v5, 0x3a

    if-eq v3, v5, :cond_1d

    .line 647
    aput-char v3, v2, v4
    :try_end_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_1b} :catch_20

    .line 648
    add-int/lit8 v4, v4, 0x1

    .line 643
    .end local v3    # "ss":C
    :cond_1d
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 650
    :catch_20
    move-exception v0

    .line 652
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1d

    .line 655
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_25
    return-object v2
.end method

.method private createConnectToServer()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 272
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "wifip2p begin createConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v3, v0, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 276
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V

    .line 277
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECT_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2PConnectListener:Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/P2PHandoverClientSession$WiFiDirectBroadcastReceiver;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    .line 284
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 285
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 286
    return-void
.end method

.method private getApLinkedStaList()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 720
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 721
    .local v6, "mLinkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 723
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_6
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    const-string v9, "/proc/net/arp"

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v9, "UTF-8"

    invoke-direct {v3, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 724
    .local v3, "fileReader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_19} :catch_79
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_19} :catch_58
    .catchall {:try_start_6 .. :try_end_19} :catchall_67

    .line 726
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_19
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_47

    .line 728
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    .line 730
    .local v5, "linkedSta":[Ljava/lang/String;
    const-string v8, " +"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 731
    .local v7, "splitted":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x4

    if-lt v8, v9, :cond_38

    .line 733
    const/4 v8, 0x0

    const/4 v9, 0x3

    aget-object v9, v7, v9

    aput-object v9, v5, v8

    .line 734
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, v7, v9

    aput-object v9, v5, v8

    .line 736
    :cond_38
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_3b} :catch_3c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3b} :catch_76
    .catchall {:try_start_19 .. :try_end_3b} :catchall_73

    goto :goto_19

    .line 738
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "linkedSta":[Ljava/lang/String;
    .end local v7    # "splitted":[Ljava/lang/String;
    :catch_3c
    move-exception v2

    move-object v0, v1

    .line 739
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :goto_3e
    :try_start_3e
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_67

    .line 745
    if-eqz v0, :cond_46

    .line 747
    :try_start_43
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_53

    .line 753
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_46
    :goto_46
    return-object v6

    .line 745
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/InputStreamReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_47
    if-eqz v1, :cond_4c

    .line 747
    :try_start_49
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4e

    :cond_4c
    :goto_4c
    move-object v0, v1

    .line 753
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_46

    .line 748
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4e
    move-exception v2

    .line 749
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4c

    .line 748
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :catch_53
    move-exception v2

    .line 749
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_46

    .line 741
    .end local v2    # "e":Ljava/io/IOException;
    :catch_58
    move-exception v2

    .line 742
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_59
    :try_start_59
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_67

    .line 745
    if-eqz v0, :cond_46

    .line 747
    :try_start_5e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_46

    .line 748
    :catch_62
    move-exception v2

    .line 749
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_46

    .line 745
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_67
    move-exception v8

    :goto_68
    if-eqz v0, :cond_6d

    .line 747
    :try_start_6a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 750
    :cond_6d
    :goto_6d
    throw v8

    .line 748
    :catch_6e
    move-exception v2

    .line 749
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6d

    .line 745
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/InputStreamReader;
    :catchall_73
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_68

    .line 741
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_76
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_59

    .line 738
    .end local v3    # "fileReader":Ljava/io/InputStreamReader;
    :catch_79
    move-exception v2

    goto :goto_3e
.end method

.method private getP2PConnectState()I
    .registers 2

    .prologue
    .line 496
    iget v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PconnectState:I

    return v0
.end method

.method private getP2PIpByMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 696
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->getApLinkedStaList()Ljava/util/List;

    move-result-object v3

    .line 697
    .local v3, "mLinkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 698
    .local v0, "IpAddress":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->macIncrease(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, "TIMacString":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 700
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v4, :cond_36

    .line 701
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 702
    :cond_2d
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v0, v5, v6

    .line 706
    :cond_36
    const-string v5, "P2PHandoverClientSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIpByMac IpAddress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-object v0

    .line 700
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f
.end method

.method private initTransfer(Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 230
    const-string v1, "P2PHandoverClientSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initTransfer key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transferFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transferFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.nfc.handover.action.HANDOVER_TRANSFER_PROGRESS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transferFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transferFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.nfc.handover.action.HANDOVER_TRANSFER_FINISH"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transferFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.nfc.p2phandover.action.CLOSE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transferFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v1

    iget-object v1, v1, Lcom/android/nfc/handover/HandoverManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->resetHandoverTimer()V

    .line 240
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v4}, Lcom/android/nfc/handover/HandoverManager;->getOrCreateHandoverTransfer(Ljava/lang/String;ZZ)Lcom/android/nfc/handover/HandoverTransfer;

    move-result-object v0

    .line 242
    .local v0, "mTransfer":Lcom/android/nfc/handover/HandoverTransfer;
    if-eqz v0, :cond_6c

    .line 243
    iget-object v1, v0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->remoteName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFriendlyName(Ljava/lang/String;)V

    .line 244
    iget-object v1, v0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateNotification()V

    .line 248
    :cond_6c
    return-void
.end method

.method private macIncrease(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 611
    const/16 v1, 0xb

    .line 612
    .local v1, "num":I
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->addressToReverseBytes(Ljava/lang/String;)[C

    move-result-object v2

    .line 613
    .local v2, "tempMac":[C
    const/4 v0, 0x0

    .line 614
    .local v0, "macString":Ljava/lang/String;
    :goto_7
    if-ltz v1, :cond_13

    .line 615
    const/16 v3, 0x39

    aget-char v4, v2, v1

    if-ne v3, v4, :cond_18

    .line 616
    const/16 v3, 0x61

    aput-char v3, v2, v1

    .line 626
    :cond_13
    :goto_13
    invoke-direct {p0, v2}, Lcom/android/nfc/handover/P2PHandoverClientSession;->reverseBytesToAddress([C)Ljava/lang/String;

    move-result-object v0

    .line 627
    return-object v0

    .line 618
    :cond_18
    const/16 v3, 0x66

    aget-char v4, v2, v1

    if-ne v3, v4, :cond_25

    .line 619
    const/16 v3, 0x30

    aput-char v3, v2, v1

    .line 620
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 622
    :cond_25
    aget-char v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    aput-char v3, v2, v1

    goto :goto_13
.end method

.method private reverseBytesToAddress([C)Ljava/lang/String;
    .registers 6
    .param p1, "mac"    # [C

    .prologue
    .line 668
    const/4 v0, 0x0

    .line 669
    .local v0, "i":I
    const/4 v2, 0x0

    .line 670
    .local v2, "x":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 671
    .local v1, "resule":Ljava/lang/StringBuffer;
    :goto_7
    array-length v3, p1

    if-ge v0, v3, :cond_1e

    .line 672
    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    .line 673
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 674
    const/4 v2, 0x0

    goto :goto_7

    .line 676
    :cond_14
    aget-char v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 677
    add-int/lit8 v2, v2, 0x1

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 681
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private setP2PConnectState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 480
    const-string v0, "P2PHandoverClientSession"

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

    .line 481
    iput p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PconnectState:I

    .line 482
    iget v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PconnectState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    .line 483
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 485
    :cond_25
    return-void
.end method

.method private startConnectTimer()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1074
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 1075
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1076
    iput-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    .line 1078
    :cond_c
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    .line 1079
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectTimerOutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectTimerOutTask;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;Lcom/android/nfc/handover/P2PHandoverClientSession$1;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1080
    return-void
.end method

.method private startTransmitClient(Ljava/lang/String;)V
    .registers 6
    .param p1, "serverMacAdd"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PIpByMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "serverIPAddress":Ljava/lang/String;
    const-string v1, "P2PHandoverClientSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start transmitClient serverIPAddress= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-nez v0, :cond_20

    .line 301
    const-string v0, "192.168.49.1"

    .line 304
    :cond_20
    new-instance v1, Lcom/android/nfc/handover/TransmitManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/nfc/handover/TransmitManager;-><init>(Lcom/android/nfc/handover/Handover;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    .line 305
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitKeyString:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/nfc/handover/TransmitManager;->getFileUris(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method private stopAll()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 522
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "stopAll()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iget-boolean v0, v0, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    if-nez v0, :cond_45

    .line 525
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 529
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v2, v0, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    .line 530
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v2, v0, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 532
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopConnectTimer()V

    .line 533
    new-instance v0, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    invoke-direct {v0}, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .line 534
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3c

    .line 535
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 536
    iput-object v3, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->receiver:Landroid/content/BroadcastReceiver;

    .line 539
    :cond_3c
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->unregisterFileReceiver()V

    .line 541
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0, v2}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 542
    return-void

    .line 526
    :cond_45
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iget-boolean v0, v0, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    if-nez v0, :cond_1d

    .line 527
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_1d
.end method

.method private stopConnect(I)V
    .registers 6
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x1

    .line 570
    const-string v0, "P2PHandoverClientSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopP2PConnect getP2PConnectState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v0, "P2PHandoverClientSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reason ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    packed-switch p1, :pswitch_data_5e

    .line 598
    :cond_38
    :goto_38
    return-void

    .line 578
    :pswitch_39
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->getP2PConnectState()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_49

    .line 579
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopAll()V

    .line 580
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V

    .line 581
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopTransfer()V

    .line 595
    :cond_49
    :goto_49
    if-eqz p1, :cond_38

    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->fastConnectFlag:Z

    if-eqz v0, :cond_38

    .line 596
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->P2PFastConnectFailed(I)V

    goto :goto_38

    .line 586
    :pswitch_53
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopAll()V

    .line 587
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverClientSession;->setP2PConnectState(I)V

    .line 588
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->stopTransfer()V

    goto :goto_49

    .line 573
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_39
        :pswitch_39
        :pswitch_53
        :pswitch_39
        :pswitch_39
    .end packed-switch
.end method

.method private stopConnectTimer()V
    .registers 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 1092
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1093
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->connectTotalTimer:Ljava/util/Timer;

    .line 1095
    :cond_c
    return-void
.end method

.method private stopTransfer()V
    .registers 4

    .prologue
    .line 553
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 554
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v1, "com.android.nfc.handover.extra.HANDOVER_TRANSFER_STATUS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/P2PHandover;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 557
    return-void
.end method

.method private transmitCancel()V
    .registers 2

    .prologue
    .line 869
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->unregisterFileReceiver()V

    .line 871
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    if-eqz v0, :cond_c

    .line 872
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/TransmitManager;->cancelFileTransmit()V

    .line 874
    :cond_c
    return-void
.end method

.method private transmitComplete()V
    .registers 3

    .prologue
    .line 864
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "transmitComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->unregisterFileReceiver()V

    .line 866
    return-void
.end method

.method private unregisterFileReceiver()V
    .registers 3

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->isFastConnect:Z

    if-eqz v0, :cond_5

    .line 509
    :cond_4
    :goto_4
    return-void

    .line 504
    :cond_5
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 505
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "unregisterReceiver mHandoverReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_4
.end method


# virtual methods
.method public P2PFastConnect()V
    .registers 2

    .prologue
    .line 1016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->isFastConnect:Z

    .line 1017
    invoke-virtual {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->start()V

    .line 1018
    return-void
.end method

.method public getRemoveHandoverData()Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    return-object v0
.end method

.method public start()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 448
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->isFastConnect:Z

    if-nez v0, :cond_a

    .line 449
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->transmitKeyString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->initTransfer(Ljava/lang/String;)V

    .line 452
    :cond_a
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_32

    .line 454
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "wifi is close"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 457
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "soft ap is open"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 460
    :cond_2e
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverClientSession;->createConnectToServer()V

    .line 468
    :goto_31
    return-void

    .line 463
    :cond_32
    const-string v0, "P2PHandoverClientSession"

    const-string v1, "wifi is open"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 465
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 466
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverClientSession;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto :goto_31
.end method
