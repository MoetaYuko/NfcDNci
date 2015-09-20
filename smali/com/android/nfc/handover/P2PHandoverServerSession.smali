.class public Lcom/android/nfc/handover/P2PHandoverServerSession;
.super Ljava/lang/Object;
.source "P2PHandoverServerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectTimerOutTask;,
        Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;,
        Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;
    }
.end annotation


# static fields
.field static final ACTION_CONNECT_STATE_CHANGE:Ljava/lang/String; = "android.net.wifi.p2p.CONNECT_STATE_CHANGE"

.field static final CONNECT_STATE_CHANGE_EXTRA:Ljava/lang/String; = "extraState"

.field static final CONNECT_TIME_OUT:I = 0x7530

.field static final DBG:Z = true

.field static final EVENT_CONNECT_FAIL:I = 0x3

.field static final FAILED_CONNECT_TIME_OUT:I = 0x2

.field static final FAILED_CREATE_GO:I = 0x1

.field static final FAILED_DISCONNECT:I = 0x4

.field static final FAILED_ERROR:I = 0x5

.field static final FAILED_NONE:I = 0x0

.field static final FAILED_P2P_DISABLE:I = 0x3

.field static final MAX_CREATE_GO_TIMES:I = 0x4

.field static final P2P_CONNECTED_CLIENT:I = 0x5

.field static final P2P_GO_CREATED:I = 0x4

.field static final P2P_GO_CREATING:I = 0x3

.field static final P2P_GO_START_CREATE:I = 0x2

.field static final P2P_IDLE:I = 0x1

.field static final TAG:Ljava/lang/String; = "P2PHandoverServerSession"


# instance fields
.field private P2PconnectState:I

.field private channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private connectTotalTimer:Ljava/util/Timer;

.field private createGoTimes:I

.field private fastConnectFlag:Z

.field private final intentFilter:Landroid/content/IntentFilter;

.field private mClientInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

.field private mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

.field private mContext:Landroid/content/Context;

.field private mGoInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

.field private mP2PConnectListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

.field private mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

.field private mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

.field private mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private manager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private validKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/nfc/handover/P2PHandover;Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)V
    .registers 7
    .param p1, "p2pHandover"    # Lcom/android/nfc/handover/P2PHandover;
    .param p2, "remotehandoverdata"    # Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    .line 76
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    .line 77
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PconnectState:I

    .line 82
    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->validKey:Ljava/lang/String;

    .line 83
    iput v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->createGoTimes:I

    .line 158
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverServerSession$1;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2PConnectListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

    .line 280
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverServerSession$2;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mGoInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 301
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverServerSession$3;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mClientInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .line 319
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/P2PHandoverServerSession$4;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .line 94
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    .line 95
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/P2PHandover;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .line 97
    iput-boolean v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->fastConnectFlag:Z

    .line 98
    invoke-direct {p0, p2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->initValidKey(Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)V

    .line 99
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V

    .line 100
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 101
    return-void
.end method

.method private P2PFastConnectFailed(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 775
    const-string v0, "P2PHandoverServerSession"

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

    .line 776
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/handover/HandoverManager;->sendFastConnectResult(II)V

    .line 777
    return-void
.end method

.method private P2PFastConnectSuccess()V
    .registers 4

    .prologue
    .line 789
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "fast connect success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnectTimer()V

    .line 791
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 792
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/handover/HandoverManager;->sendFastConnectResult(II)V

    .line 793
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/P2PHandoverServerSession;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/nfc/handover/P2PHandoverServerSession;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->validKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/nfc/handover/P2PHandoverServerSession;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;
    .param p1, "x1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/nfc/handover/P2PHandoverServerSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PFastConnectSuccess()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/nfc/handover/P2PHandoverServerSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->deviceAlreadyConnectToClient()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/nfc/handover/P2PHandoverServerSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->createConnectToClient()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mGoInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mClientInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/nfc/handover/P2PHandoverServerSession;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->createGoTimes:I

    return v0
.end method

.method static synthetic access$1808(Lcom/android/nfc/handover/P2PHandoverServerSession;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->createGoTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->createGoTimes:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/P2PHandoverServerSession;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->fastConnectFlag:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/nfc/handover/P2PHandoverServerSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->startConnectTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/TransmitManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/nfc/handover/P2PHandoverServerSession;Lcom/android/nfc/handover/TransmitManager;)Lcom/android/nfc/handover/TransmitManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;
    .param p1, "x1"    # Lcom/android/nfc/handover/TransmitManager;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/nfc/handover/P2PHandoverServerSession;)Lcom/android/nfc/handover/P2PHandover;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/nfc/handover/P2PHandoverServerSession;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnect(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/nfc/handover/P2PHandoverServerSession;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnectTimer()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/nfc/handover/P2PHandoverServerSession;Landroid/net/wifi/p2p/WifiP2pManager;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pManager;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/nfc/handover/P2PHandoverServerSession;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/nfc/handover/P2PHandoverServerSession;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/P2PHandoverServerSession;
    .param p1, "x1"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p1
.end method

.method private createConnectToClient()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 225
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "wifip2p begin createConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v2, v0, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 229
    invoke-direct {p0, v2}, Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V

    .line 230
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->registerServerReceiver()V

    .line 231
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 232
    return-void
.end method

.method private deviceAlreadyConnectToClient()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 263
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iget-boolean v0, v0, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    if-nez v0, :cond_f

    .line 264
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v1, v0, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    .line 265
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v1, v0, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 268
    :cond_f
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V

    .line 269
    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->fastConnectFlag:Z

    if-eqz v0, :cond_1b

    .line 270
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PFastConnectSuccess()V

    .line 278
    :cond_1a
    :goto_1a
    return-void

    .line 272
    :cond_1b
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->registerServerReceiver()V

    .line 273
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    if-nez v0, :cond_1a

    .line 274
    new-instance v0, Lcom/android/nfc/handover/TransmitManager;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/handover/TransmitManager;-><init>(Lcom/android/nfc/handover/Handover;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    .line 275
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/TransmitManager;->buildHttpServer(Ljava/lang/String;)V

    goto :goto_1a
.end method

.method private getDottedDecimalIP([B)Ljava/lang/String;
    .registers 5
    .param p1, "ipAddr"    # [B

    .prologue
    .line 722
    if-eqz p1, :cond_21

    .line 723
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 724
    .local v1, "ipAddrStr":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    .line 725
    if-lez v0, :cond_12

    .line 726
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    :cond_12
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 730
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 732
    .end local v0    # "i":I
    .end local v1    # "ipAddrStr":Ljava/lang/StringBuffer;
    :goto_20
    return-object v2

    :cond_21
    const-string v2, "null"

    goto :goto_20
.end method

.method private getLocalIPAddress()Ljava/lang/String;
    .registers 11

    .prologue
    .line 688
    const-string v6, "p2p"

    .line 690
    .local v6, "name":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 691
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 692
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_16
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 693
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 694
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_16

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 695
    instance-of v7, v3, Ljava/net/Inet4Address;

    if-eqz v7, :cond_16

    .line 696
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getDottedDecimalIP([B)Ljava/lang/String;

    move-result-object v5

    .line 698
    .local v5, "localipString":Ljava/lang/String;
    const-string v7, "P2PHandoverServerSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLocalIPAddress localipString = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_56} :catch_57
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_56} :catch_5d

    .line 709
    .end local v0    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "localipString":Ljava/lang/String;
    :goto_56
    return-object v5

    .line 704
    :catch_57
    move-exception v2

    .line 705
    .local v2, "ex":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 709
    .end local v2    # "ex":Ljava/net/SocketException;
    :cond_5b
    :goto_5b
    const/4 v5, 0x0

    goto :goto_56

    .line 706
    :catch_5d
    move-exception v2

    .line 707
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5b
.end method

.method private getP2PConnectState()I
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PconnectState:I

    return v0
.end method

.method private initValidKey(Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;)V
    .registers 5
    .param p1, "remotehandoverdata"    # Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .prologue
    .line 104
    iget-object v0, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    if-nez v0, :cond_23

    .line 106
    const-string v0, "P2PHandoverServerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "white key is name =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->validKey:Ljava/lang/String;

    .line 113
    :goto_22
    return-void

    .line 110
    :cond_23
    const-string v0, "P2PHandoverServerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "white key is dev_addr =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->validKey:Ljava/lang/String;

    goto :goto_22
.end method

.method private registerServerReceiver()V
    .registers 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECT_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    new-instance v0, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2PConnectListener:Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/P2PHandoverServerSession$WiFiDirectBroadcastReceiver;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession;Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectListener;)V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    .line 250
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    return-void
.end method

.method private setP2PConnectState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 394
    const-string v0, "P2PHandoverServerSession"

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

    .line 395
    iput p1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PconnectState:I

    .line 396
    iget v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PconnectState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    .line 397
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 399
    :cond_25
    return-void
.end method

.method private startConnectTimer()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 805
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "startConnectTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_13

    .line 807
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 808
    iput-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    .line 810
    :cond_13
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    .line 811
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectTimerOutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/handover/P2PHandoverServerSession$P2PConnectTimerOutTask;-><init>(Lcom/android/nfc/handover/P2PHandoverServerSession;Lcom/android/nfc/handover/P2PHandoverServerSession$1;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 812
    return-void
.end method

.method private stopAll(Z)V
    .registers 8
    .param p1, "isDeleteFile"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 424
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iget-boolean v1, v1, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    if-nez v1, :cond_f

    .line 425
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 427
    :cond_f
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v5, v1, Lcom/android/nfc/handover/P2PHandover;->mP2pOriginalConnState:Z

    .line 428
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v5, v1, Lcom/android/nfc/handover/P2PHandover;->mOriginalP2pConnStateFixed:Z

    .line 430
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    if-eqz v1, :cond_24

    .line 431
    if-eqz p1, :cond_65

    .line 432
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    invoke-virtual {v1}, Lcom/android/nfc/handover/TransmitManager;->closeServer()Z

    .line 437
    :goto_22
    iput-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    .line 440
    :cond_24
    const-string v1, "P2PHandoverServerSession"

    const-string v2, "stopP2PConnect clear data"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_38

    .line 442
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 443
    iput-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->receiver:Landroid/content/BroadcastReceiver;

    .line 445
    :cond_38
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnectTimer()V

    .line 448
    :try_start_3b
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v3, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->validKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/huawei/android/net/wifi/p2p/NfcWifiP2pManagerEx;->removeP2PValidDevice(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_45
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_3b .. :try_end_45} :catch_6b

    .line 452
    :goto_45
    new-instance v1, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    invoke-direct {v1}, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    .line 453
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    invoke-virtual {v1, v5}, Lcom/android/nfc/handover/P2PHandover;->setDeviceConnected(Z)V

    .line 454
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_60

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iget-boolean v1, v1, Lcom/android/nfc/handover/P2PHandover;->mWifiOriginalState:Z

    if-nez v1, :cond_60

    .line 455
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 457
    :cond_60
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mP2pHandover:Lcom/android/nfc/handover/P2PHandover;

    iput-boolean v5, v1, Lcom/android/nfc/handover/P2PHandover;->mOriginalStateFixed:Z

    .line 458
    return-void

    .line 434
    :cond_65
    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mTransmitManager:Lcom/android/nfc/handover/TransmitManager;

    invoke-virtual {v1}, Lcom/android/nfc/handover/TransmitManager;->stopServer()Z

    goto :goto_22

    .line 449
    :catch_6b
    move-exception v0

    .line 450
    .local v0, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_45
.end method

.method private stopConnect(I)V
    .registers 7
    .param p1, "reason"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 471
    const-string v0, "P2PHandoverServerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopP2PConnect getP2PConnectState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v0, "P2PHandoverServerSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopP2PConnect reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    packed-switch p1, :pswitch_data_6c

    .line 506
    :cond_39
    :goto_39
    return-void

    .line 479
    :pswitch_3a
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I

    move-result v0

    if-lt v0, v4, :cond_46

    .line 480
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopAll(Z)V

    .line 481
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V

    .line 503
    :cond_46
    :goto_46
    if-eqz p1, :cond_39

    iget-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->fastConnectFlag:Z

    if-eqz v0, :cond_39

    .line 504
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverServerSession;->P2PFastConnectFailed(I)V

    goto :goto_39

    .line 486
    :pswitch_50
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I

    move-result v0

    if-lt v0, v4, :cond_46

    .line 487
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopAll(Z)V

    .line 488
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V

    goto :goto_46

    .line 493
    :pswitch_5e
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->getP2PConnectState()I

    move-result v0

    if-le v0, v3, :cond_46

    .line 494
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopAll(Z)V

    .line 495
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/P2PHandoverServerSession;->setP2PConnectState(I)V

    goto :goto_46

    .line 474
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_50
        :pswitch_3a
        :pswitch_5e
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
    .end packed-switch
.end method

.method private stopConnectTimer()V
    .registers 3

    .prologue
    .line 824
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "stopConnectTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_13

    .line 826
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->connectTotalTimer:Ljava/util/Timer;

    .line 829
    :cond_13
    return-void
.end method


# virtual methods
.method public P2PFastConnect()V
    .registers 3

    .prologue
    .line 760
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "P2P P2PFastConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->fastConnectFlag:Z

    .line 762
    invoke-virtual {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->start()V

    .line 763
    return-void
.end method

.method public deviceClose()V
    .registers 2

    .prologue
    .line 381
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnect(I)V

    .line 382
    return-void
.end method

.method public getRemoteHandoverData()Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mRemoteHandoverData:Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;

    return-object v0
.end method

.method public start()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 350
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_29

    .line 352
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "wifi is close"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 355
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "soft ap is open"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 358
    :cond_25
    invoke-direct {p0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->createConnectToClient()V

    .line 366
    :goto_28
    return-void

    .line 361
    :cond_29
    const-string v0, "P2PHandoverServerSession"

    const-string v1, "wifi is open"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 363
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 364
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->manager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/android/nfc/handover/P2PHandoverServerSession;->mConnectionInfoListener:Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto :goto_28
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/P2PHandoverServerSession;->stopConnect(I)V

    .line 378
    return-void
.end method
