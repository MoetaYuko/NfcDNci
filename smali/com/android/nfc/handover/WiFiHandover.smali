.class public Lcom/android/nfc/handover/WiFiHandover;
.super Lcom/android/nfc/handover/Handover;
.source "WiFiHandover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/WiFiHandover$ScanAPTimerTask;
    }
.end annotation


# static fields
.field private static final AP_KEYTYPE_INDEX:I = 0x3

.field private static final AP_KEY_INDEX:I = 0x2

.field private static final AP_MAC_INDEX:I = 0x0

.field private static final AP_SSID_INDEX:I = 0x1

.field private static final ARP_FILE_PATH:Ljava/lang/String; = "/proc/net/arp"

.field private static final BEAM_STATE_CONNENTED:I = 0x2

.field private static final BEAM_STATE_CONNENTING:I = 0x1

.field private static final BEAM_STATE_DISCONNENTED:I = 0x4

.field private static final BEAM_STATE_INITIAL:I = -0x1

.field private static final COM_HUAWEI_HWBEAM_SOFTAP:Ljava/lang/String; = "com.huawei.HwBeam.SoftAP"

.field private static final DBG:Z = true

.field private static final DEFAULT_AP_IP_ADDRESS:Ljava/lang/String; = "192.168.43.1"

.field private static final DEFAULT_DHCP_SERVERADDRESS:I = 0x101a8c0

.field public static final HANDLE_MSG_AP_STARTED:I = 0x65

.field public static final HANDLE_MSG_AP_START_RECEIVE_FILE:I = 0x6c

.field public static final HANDLE_MSG_AP_START_SEND_FILE:I = 0x6b

.field public static final HANDLE_MSG_START_AP:I = 0x64

.field public static final HANDLE_MSG_STA_START_RECEIVE_FILE:I = 0x6e

.field public static final HANDLE_MSG_STA_START_SEND_FILE:I = 0x6d

.field public static final HANDLE_MSG_SUPPLICANT_STARTED:I = 0x6f

.field public static final HANDLE_MSG_WIFI_AP_STA_JOIN:I = 0x6a

.field public static final HANDLE_MSG_WIFI_AP_STA_LEAVE:I = 0x70

.field public static final HANDLE_MSG_WIFI_ENABLE:I = 0x67

.field public static final HANDLE_MSG_WIFI_FILTRATE_SCAN_RESULT:I = 0x72

.field public static final HANDLE_MSG_WIFI_SOFT_AP_RESET:I = 0x74

.field public static final HANDLE_MSG_WIFI_START_SCAN:I = 0x71

.field public static final HANDLE_MSG_WIFI_STATION_RESET:I = 0x73

.field public static final HANDLE_MSG_WIFI_STA_CONNECTED:I = 0x68

.field public static final HANDLE_MSG_WIFI_STA_RECONNECTED_AP:I = 0x69

.field public static final HANDLE_MSG_WIFI_STA_START_CONNECT_AP:I = 0x66

.field private static final KEYTYPE_OPEN:I = 0x0

.field private static final KEYTYPE_PSK:I = 0x2

.field private static final KEYTYPE_WEP:I = 0x1

.field private static final LOCAL_IP:I = 0x0

.field private static final MAX_CONNECT_AP:I = 0xa

.field public static final MSG_CONN_TIMEOUT_CHECK:I = 0x75

.field private static final PREFIX_SSID:Ljava/lang/String; = "HWBeam_"

.field private static final REMOTE_IP:I = 0x1

.field private static final SCAN_AP_PERIOD_TIME:I = 0x1770

.field private static final TAG:Ljava/lang/String; = "WiFiHandover"

.field public static final TNF_WIFI_HANDOVER_RECORD:S = 0x2s

.field static final TYPE_WIFI_HANDOVER_RECORD:[B

.field private static final TYPE_WLAN_SHARE_RECORD:[B

.field public static final WIFI_AP_STA_JOIN:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STA_JOIN"

.field public static final WIFI_AP_STA_LEAVE:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STA_LEAVE"

.field private static final WIFI_CONNECTED_SOFTAP:Ljava/lang/String; = "wifi_connected_softap"

.field private static final WIFI_ENABLE:Ljava/lang/String; = "wifi_enable"

.field private static final WIFI_SOFT_AP_STA_JOIN:Ljava/lang/String; = "wifi_soft_ap_sta_join"

.field private static final WLAN_SHARE_FAILURE:Ljava/lang/String; = "wlan_share_failure"

.field private static final WLAN_SHARE_SUCCESS:Ljava/lang/String; = "wlan_share_success"

.field private static final WPA_SUPPLICANT_8_TI_KEYTYPE_OPEN:I = 0x4

.field private static final WPA_SUPPLICANT_8_TI_KEYTYPE_PSK:I = 0x2


# instance fields
.field private connectAPListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private isCreateNewAPConfiguration:Z

.field private isRegisterAPReceiver:Z

.field private isRegisterHandoverReceiver:Z

.field private isRegisterWIFIReceiver:Z

.field private isStaTransmitFiles:Z

.field private isWifiHandoverBeam:Z

.field private volatile mBeamState:I

.field private mConApNum:I

.field private mConfigInfo:Lcom/android/nfc/handover/ConfigInfo;

.field private mContext:Landroid/content/Context;

.field private mDefault_APConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mHandler:Landroid/os/Handler;

.field private mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

.field private mHandoverReceiver:Landroid/content/BroadcastReceiver;

.field private mKey:Ljava/lang/String;

.field private mKeyType:I

.field private mLocalDeviceMac:Ljava/lang/String;

.field private mNetworkId:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mRandom_SSID:J

.field private mRemoteDeviceMac:Ljava/lang/String;

.field private mSSID:Ljava/lang/String;

.field private mSoftApReceiver:Landroid/content/BroadcastReceiver;

.field private mTimer:Ljava/util/Timer;

.field private mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;

.field private mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStaReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 82
    const-string v0, "application/wifi.handover.type"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    .line 83
    const-string v0, "application/wlan.connect.type"

    const-string v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WLAN_SHARE_RECORD:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/HandoverManager;

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/nfc/handover/Handover;-><init>()V

    .line 1240
    new-instance v0, Lcom/android/nfc/handover/WiFiHandover$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/WiFiHandover$1;-><init>(Lcom/android/nfc/handover/WiFiHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    .line 1415
    new-instance v0, Lcom/android/nfc/handover/WiFiHandover$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/WiFiHandover$2;-><init>(Lcom/android/nfc/handover/WiFiHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->connectAPListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 1555
    new-instance v0, Lcom/android/nfc/handover/WiFiHandover$3;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/WiFiHandover$3;-><init>(Lcom/android/nfc/handover/WiFiHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiStaReceiver:Landroid/content/BroadcastReceiver;

    .line 1708
    new-instance v0, Lcom/android/nfc/handover/WiFiHandover$4;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/WiFiHandover$4;-><init>(Lcom/android/nfc/handover/WiFiHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    .line 1813
    new-instance v0, Lcom/android/nfc/handover/WiFiHandover$5;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/WiFiHandover$5;-><init>(Lcom/android/nfc/handover/WiFiHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    .line 256
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    .line 257
    iput-object p2, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 258
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/WiFiHandover;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/ConfigInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mConfigInfo:Lcom/android/nfc/handover/ConfigInfo;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/nfc/handover/WiFiHandover;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/nfc/handover/WiFiHandover;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->unRegisterHandoverReceiver(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/nfc/handover/WiFiHandover;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getWifiAPState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover;->mDefault_APConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/wifi/WifiConfiguration;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->createNewWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "x2"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/handover/WiFiHandover;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/nfc/handover/WiFiHandover;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/nfc/handover/WiFiHandover;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/nfc/handover/WiFiHandover;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getLocalMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/nfc/handover/WiFiHandover;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getApLinkedStaList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/nfc/handover/WiFiHandover;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getIpAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/nfc/handover/WiFiHandover;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getIpByMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/nfc/handover/WiFiHandover;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->setWifiSTAEnabled(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/nfc/handover/WiFiHandover;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->connectToRemoteAp()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/nfc/handover/WiFiHandover;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mConApNum:I

    return v0
.end method

.method static synthetic access$2708(Lcom/android/nfc/handover/WiFiHandover;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mConApNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mConApNum:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/nfc/handover/WiFiHandover;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/nfc/handover/WiFiHandover;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/wifi/WifiManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/nfc/handover/WiFiHandover;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->cancelScanAPTimer()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/nfc/handover/WiFiHandover;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/nfc/handover/WiFiHandover;->mNetworkId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/nfc/handover/WiFiHandover;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isStaTransmitFiles:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/nfc/handover/WiFiHandover;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/nfc/handover/WiFiHandover;->isStaTransmitFiles:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/HandoverManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/WiFiHandover;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    return-object v0
.end method

.method private declared-synchronized cancelScanAPTimer()V
    .registers 3

    .prologue
    .line 1531
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_14

    .line 1533
    const-string v0, "WiFiHandover"

    const-string v1, "mTimer is cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTimer:Ljava/util/Timer;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 1537
    :cond_14
    monitor-exit p0

    return-void

    .line 1531
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized connectToRemoteAp()V
    .registers 6

    .prologue
    .line 1448
    monitor-enter p0

    const/4 v2, 0x2

    :try_start_2
    iget v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    if-ne v2, v3, :cond_12

    .line 1450
    const-string v2, "WiFiHandover"

    const-string v3, "sta has connected RemoteAp"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->cancelScanAPTimer()V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_95

    .line 1488
    :goto_10
    monitor-exit p0

    return-void

    .line 1455
    :cond_12
    const/4 v2, 0x1

    :try_start_13
    iput v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 1458
    const-string v2, "WiFiHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectToRemoteAp,mSSID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mKey ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/WiFiHandover;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mKeyType ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/handover/WiFiHandover;->mKeyType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_55

    .line 1461
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1464
    :cond_55
    invoke-virtual {p0}, Lcom/android/nfc/handover/WiFiHandover;->disConnectCurrentAP()V

    .line 1466
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mKey:Ljava/lang/String;

    iget v4, p0, Lcom/android/nfc/handover/WiFiHandover;->mKeyType:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/nfc/handover/WiFiHandover;->createNewWifiConfiguration(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1467
    .local v1, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_a1

    .line 1470
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1471
    .local v0, "networkID":I
    if-gez v0, :cond_72

    .line 1472
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1474
    :cond_72
    const-string v2, "WiFiHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "networkID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    if-gez v0, :cond_98

    .line 1476
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_93
    .catchall {:try_start_13 .. :try_end_93} :catchall_95

    goto/16 :goto_10

    .line 1448
    .end local v0    # "networkID":I
    .end local v1    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :catchall_95
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1480
    .restart local v0    # "networkID":I
    .restart local v1    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_98
    :try_start_98
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->connectAPListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_10

    .line 1484
    .end local v0    # "networkID":I
    :cond_a1
    const-string v2, "WiFiHandover"

    const-string v3, "wifiConfiguration, = null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_af
    .catchall {:try_start_98 .. :try_end_af} :catchall_95

    goto/16 :goto_10
.end method

.method private createNewWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 5

    .prologue
    .line 986
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 987
    .local v0, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HWBeam_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mRandom_SSID:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 989
    const v1, 0x7fffffff

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 990
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mKey:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 992
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 993
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 995
    return-object v0
.end method

.method private declared-synchronized createNewWifiConfiguration(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;
    .registers 9
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "keyType"    # I

    .prologue
    .line 1357
    monitor-enter p0

    if-nez p1, :cond_d

    .line 1359
    :try_start_3
    const-string v1, "WiFiHandover"

    const-string v2, "the ssid of connect ap is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_59

    .line 1361
    const/4 v0, 0x0

    .line 1409
    :goto_b
    monitor-exit p0

    return-object v0

    .line 1364
    :cond_d
    :try_start_d
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1365
    .local v0, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1368
    packed-switch p3, :pswitch_data_ea

    goto :goto_b

    .line 1370
    :pswitch_31
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1371
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1372
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1373
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1374
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1375
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1376
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_59

    goto :goto_b

    .line 1357
    .end local v0    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :catchall_59
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1381
    .restart local v0    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :pswitch_5c
    const/4 v1, 0x1

    :try_start_5d
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1382
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1383
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1384
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1385
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1386
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1387
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1388
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1389
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto/16 :goto_b

    .line 1393
    :pswitch_a6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1395
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1396
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1397
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1398
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1400
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1401
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1402
    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I
    :try_end_e8
    .catchall {:try_start_5d .. :try_end_e8} :catchall_59

    goto/16 :goto_b

    .line 1368
    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_31
        :pswitch_5c
        :pswitch_a6
    .end packed-switch
.end method

.method private createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;
    .registers 6
    .param p1, "tnf"    # S
    .param p2, "type"    # [B
    .param p3, "id"    # [B
    .param p4, "payload"    # [B

    .prologue
    .line 342
    new-instance v0, Landroid/nfc/NdefRecord;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0
.end method

.method private createWifiAPRecordPayload()[B
    .registers 16

    .prologue
    const/4 v10, 0x0

    const-wide v13, 0x41957529fc000000L    # 8.9999999E7

    const-wide v11, 0x416312d000000000L    # 1.0E7

    .line 441
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v8, :cond_12

    .line 442
    new-array v8, v10, [B

    .line 491
    :goto_11
    return-object v8

    .line 444
    :cond_12
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 445
    .local v0, "apInfo":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getLocalMac()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    .line 446
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 450
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->isCurrentWifiApEnable()Z

    move-result v8

    if-nez v8, :cond_35

    iget-boolean v8, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-nez v8, :cond_d1

    .line 453
    :cond_35
    const-string v8, "WiFiHandover"

    const-string v9, "CurrentWifiApEnable is true or is not WifiHandoverBeam "

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    .line 456
    .local v7, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v7, :cond_7b

    .line 457
    const/4 v4, 0x0

    .line 458
    .local v4, "keyMgmt":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_44
    iget-object v8, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->size()I

    move-result v8

    if-ge v2, v8, :cond_60

    .line 459
    iget-object v8, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 460
    sget-object v8, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_5d

    .line 461
    sget-object v8, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v4, v8, v2

    .line 458
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 465
    :cond_60
    iget-object v8, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, v7, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    .end local v2    # "k":I
    .end local v4    # "keyMgmt":Ljava/lang/String;
    :cond_7b
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getApLinkedStaList()Ljava/util/List;

    move-result-object v5

    .line 468
    .local v5, "linkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_80
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_9a

    .line 469
    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_80

    .line 472
    :cond_9a
    iget-boolean v8, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-nez v8, :cond_ab

    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->isCurrentWifiApEnable()Z

    move-result v8

    if-nez v8, :cond_ab

    .line 473
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 490
    .end local v1    # "i":I
    .end local v5    # "linkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v7    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_ab
    :goto_ab
    const-string v8, "WiFiHandover"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v8

    goto/16 :goto_11

    .line 479
    :cond_d1
    const-string v8, "WiFiHandover"

    const-string v9, "CurrentWifiApEnable is false,we should create a new ap"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    .line 482
    .local v6, "ssid":Ljava/security/SecureRandom;
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 483
    .local v3, "key":Ljava/security/SecureRandom;
    invoke-virtual {v6}, Ljava/util/Random;->nextDouble()D

    move-result-wide v8

    mul-double/2addr v8, v13

    add-double/2addr v8, v11

    double-to-long v8, v8

    iput-wide v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mRandom_SSID:J

    .line 484
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v9

    mul-double/2addr v9, v13

    add-double/2addr v9, v11

    double-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mKey:Ljava/lang/String;

    .line 486
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HWBeam_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/android/nfc/handover/WiFiHandover;->mRandom_SSID:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover;->mKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_ab
.end method

.method private doHandover(Landroid/nfc/NdefMessage;)V
    .registers 11
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 502
    const/4 v1, 0x0

    .line 505
    .local v1, "respone":[Ljava/lang/String;
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getWiFiHandoverRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object v2

    .line 506
    .local v2, "wifiHandoverRecord":Landroid/nfc/NdefRecord;
    if-eqz v2, :cond_1b

    .line 507
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_1a} :catch_1e

    move-result-object v1

    .line 514
    .end local v2    # "wifiHandoverRecord":Landroid/nfc/NdefRecord;
    :cond_1b
    :goto_1b
    if-nez v1, :cond_23

    .line 560
    :cond_1d
    :goto_1d
    return-void

    .line 510
    :catch_1e
    move-exception v0

    .line 511
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1b

    .line 517
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_23
    array-length v3, v1

    if-lt v3, v7, :cond_1d

    .line 521
    const-string v3, "WiFiHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nfc respone is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_8f

    const-string v3, "wifi_connected_softap"

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 524
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/WiFiHandover;->registerWifiStaReceiver(Landroid/content/Context;)V

    .line 525
    iput v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 526
    iget-boolean v3, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-eqz v3, :cond_89

    .line 527
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6d

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 551
    :goto_64
    array-length v3, v1

    if-le v3, v7, :cond_85

    .line 552
    aget-object v3, v1, v7

    iput-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    .line 554
    const-string v3, "WiFiHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRemoteDeviceMac == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_85
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->resetConnTimeout()V

    goto :goto_1d

    .line 529
    :cond_89
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v3, v8, v6}, Lcom/android/nfc/handover/HandoverManager;->sendFastConnectResult(II)V

    goto :goto_64

    .line 532
    :cond_8f
    const-string v3, "wifi_soft_ap_sta_join"

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 534
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/nfc/handover/WiFiHandover;->registerSoftApReceiver(Landroid/content/Context;)V

    .line 535
    iput v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 536
    iget-boolean v3, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-eqz v3, :cond_ac

    .line 537
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6b

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_64

    .line 539
    :cond_ac
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v3, v8, v6}, Lcom/android/nfc/handover/HandoverManager;->sendFastConnectResult(II)V

    goto :goto_64

    .line 544
    :cond_b2
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/nfc/handover/WiFiHandover;->registerSoftApReceiver(Landroid/content/Context;)V

    .line 545
    iput v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 546
    iput-boolean v7, p0, Lcom/android/nfc/handover/WiFiHandover;->isCreateNewAPConfiguration:Z

    .line 547
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_64
.end method

.method private formatByteArray(Ljava/lang/String;)[B
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 334
    if-nez p1, :cond_6

    .line 335
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 337
    :goto_5
    return-object v0

    :cond_6
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_5
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
    .line 1180
    const-string v7, "WiFiHandover"

    const-string v8, "getApLinkedStaList"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    .local v5, "mLinkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1183
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 1186
    .local v4, "linkedSta":[Ljava/lang/String;
    :try_start_e
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    const-string v9, "/proc/net/arp"

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_21} :catch_a8
    .catchall {:try_start_e .. :try_end_21} :catchall_99

    .line 1188
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :goto_21
    :try_start_21
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_87

    .line 1189
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    .line 1190
    const-string v7, " +"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1191
    .local v6, "splitted":[Ljava/lang/String;
    if-eqz v6, :cond_78

    array-length v7, v6

    const/4 v8, 0x4

    if-lt v7, v8, :cond_78

    .line 1193
    const/4 v7, 0x0

    const/4 v8, 0x3

    aget-object v8, v6, v8

    aput-object v8, v4, v7

    .line 1194
    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-object v8, v6, v8

    aput-object v8, v4, v7

    .line 1196
    const-string v7, "WiFiHandover"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mac = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const-string v7, "WiFiHandover"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ip  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_78
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_7b} :catch_7c
    .catchall {:try_start_21 .. :try_end_7b} :catchall_a5

    goto :goto_21

    .line 1204
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "splitted":[Ljava/lang/String;
    :catch_7c
    move-exception v2

    move-object v0, v1

    .line 1205
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_7e
    :try_start_7e
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_99

    .line 1208
    if-eqz v0, :cond_86

    .line 1209
    :try_start_83
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_94

    .line 1214
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_86
    :goto_86
    return-object v5

    .line 1208
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_87
    if-eqz v1, :cond_8c

    .line 1209
    :try_start_89
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8e

    :cond_8c
    move-object v0, v1

    .line 1212
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_86

    .line 1210
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_8e
    move-exception v2

    .line 1211
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 1213
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_86

    .line 1210
    .end local v3    # "line":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    :catch_94
    move-exception v2

    .line 1211
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_86

    .line 1207
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_99
    move-exception v7

    .line 1208
    :goto_9a
    if-eqz v0, :cond_9f

    .line 1209
    :try_start_9c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    .line 1212
    :cond_9f
    :goto_9f
    throw v7

    .line 1210
    :catch_a0
    move-exception v2

    .line 1211
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9f

    .line 1207
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_a5
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_9a

    .line 1204
    :catch_a8
    move-exception v2

    goto :goto_7e
.end method

.method private getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_6

    .line 1035
    const/4 v0, 0x0

    .line 1037
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_5
.end method

.method private getIpAddress(I)Ljava/lang/String;
    .registers 13
    .param p1, "type"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 892
    iget-object v4, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 893
    .local v1, "dhcpinfo":Landroid/net/DhcpInfo;
    if-nez v1, :cond_15

    .line 895
    const-string v4, "WiFiHandover"

    const-string v5, "dhcpinfo is null;"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v4, 0x0

    .line 946
    :goto_14
    return-object v4

    .line 898
    :cond_15
    const/4 v2, 0x0

    .line 899
    .local v2, "ip":I
    if-nez p1, :cond_cc

    .line 900
    iget-object v4, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 901
    iget v2, v1, Landroid/net/DhcpInfo;->ipAddress:I

    .line 936
    :cond_22
    :goto_22
    const/4 v4, 0x4

    new-array v0, v4, [I

    .line 937
    .local v0, "b":[I
    shr-int/lit8 v4, v2, 0x18

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v8

    .line 938
    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v7

    .line 939
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v9

    .line 940
    and-int/lit16 v4, v2, 0xff

    aput v4, v0, v10

    .line 942
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 943
    .local v3, "ipAddress":Ljava/lang/StringBuffer;
    aget v4, v0, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget v5, v0, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget v5, v0, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget v5, v0, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 945
    const-string v4, "WiFiHandover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "type is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ip =="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    .line 902
    .end local v0    # "b":[I
    .end local v3    # "ipAddress":Ljava/lang/StringBuffer;
    :cond_94
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->isCurrentWifiApEnable()Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 904
    iget v2, v1, Landroid/net/DhcpInfo;->serverAddress:I

    .line 906
    const-string v4, "WiFiHandover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get Loacl AP ip , ip = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    if-nez v2, :cond_ba

    .line 908
    const-string v4, "192.168.43.1"

    goto/16 :goto_14

    .line 911
    :cond_ba
    const v4, 0x101a8c0

    if-ne v2, v4, :cond_22

    .line 912
    const-string v4, "192.168.43.1"

    goto/16 :goto_14

    .line 916
    :cond_c3
    const-string v4, "WiFiHandover"

    const-string v5, "ip is error"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 919
    :cond_cc
    if-ne p1, v7, :cond_22

    .line 920
    iget-object v4, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 921
    iget v2, v1, Landroid/net/DhcpInfo;->serverAddress:I

    .line 923
    const-string v4, "WiFiHandover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get remote AP ip , ip = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    if-nez v2, :cond_22

    .line 925
    const-string v4, "192.168.43.1"

    goto/16 :goto_14

    .line 930
    :cond_f6
    const-string v4, "WiFiHandover"

    const-string v5, "get remote STA ip , ip = "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v4, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/nfc/handover/WiFiHandover;->getIpByMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_14
.end method

.method private getIpByMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 1159
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getApLinkedStaList()Ljava/util/List;

    move-result-object v2

    .line 1160
    .local v2, "mLinkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1161
    .local v0, "IpAddress":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1162
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v3, :cond_27

    .line 1163
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1165
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v0, v4, v5

    .line 1162
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1169
    :cond_27
    return-object v0
.end method

.method private getKeyMgmtType(Ljava/lang/String;)I
    .registers 5
    .param p1, "KeyMgmt"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 1500
    if-nez p1, :cond_5

    .line 1513
    :cond_4
    :goto_4
    return v0

    .line 1503
    :cond_5
    const-string v2, "WPA2_PSK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v0, v1

    .line 1504
    goto :goto_4

    .line 1506
    :cond_f
    const-string v2, "WPA_PSK"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    move v0, v1

    .line 1507
    goto :goto_4

    .line 1509
    :cond_19
    const-string v1, "WPA_EAP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1510
    const/4 v0, 0x1

    goto :goto_4
.end method

.method private getLocalMac()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1135
    const/4 v0, 0x0

    .line 1136
    .local v0, "mac":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_f

    .line 1137
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 1139
    :cond_f
    return-object v0
.end method

.method private getSSID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_f

    .line 1145
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 1147
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private getWiFiHandoverRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;
    .registers 8
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 621
    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2b

    .line 622
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_10
    if-ge v1, v2, :cond_2b

    aget-object v3, v0, v1

    .line 623
    .local v3, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v4

    sget-object v5, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 629
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :goto_27
    return-object v3

    .line 622
    .restart local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 629
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_2b
    const/4 v3, 0x0

    goto :goto_27
.end method

.method private getWifiAPState()I
    .registers 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_b

    .line 965
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 967
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method private getWlanShareRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;
    .registers 8
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 641
    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2b

    .line 642
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_10
    if-ge v1, v2, :cond_2b

    aget-object v3, v0, v1

    .line 643
    .local v3, "record":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v4

    sget-object v5, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WLAN_SHARE_RECORD:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 649
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :goto_27
    return-object v3

    .line 642
    .restart local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 649
    .end local v0    # "arr$":[Landroid/nfc/NdefRecord;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_2b
    const/4 v3, 0x0

    goto :goto_27
.end method

.method private getWpaSuppConfig()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1659
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1660
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 1662
    .local v1, "ssid_tep":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 1663
    .local v2, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_49

    if-eqz v2, :cond_49

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ltz v3, :cond_49

    .line 1667
    :try_start_22
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v3}, Lcom/huawei/android/net/wifi/NfcWifiManagerEx;->getWpaSuppConfig(Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_29

    move-result-object v3

    .line 1678
    .end local v1    # "ssid_tep":Ljava/lang/String;
    .end local v2    # "wi":Landroid/net/wifi/WifiInfo;
    :goto_28
    return-object v3

    .line 1668
    .restart local v1    # "ssid_tep":Ljava/lang/String;
    .restart local v2    # "wi":Landroid/net/wifi/WifiInfo;
    :catch_29
    move-exception v0

    .line 1669
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WiFiHandover"

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

    .line 1670
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1677
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ssid_tep":Ljava/lang/String;
    .end local v2    # "wi":Landroid/net/wifi/WifiInfo;
    :cond_49
    const-string v3, "WiFiHandover"

    const-string v4, "getWpaSuppConfig :: wifi is not connect a ap ,so we can not share  wlan  info"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    const/4 v3, 0x0

    goto :goto_28
.end method

.method private initianTransmitManager()V
    .registers 3

    .prologue
    .line 357
    const-string v0, "WiFiHandover"

    const-string v1, "initianTransmitManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;

    if-nez v0, :cond_14

    .line 359
    new-instance v0, Lcom/android/nfc/handover/TransmitManager;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/TransmitManager;-><init>(Lcom/android/nfc/handover/Handover;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;

    .line 361
    :cond_14
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;

    if-nez v0, :cond_21

    .line 362
    new-instance v0, Lcom/android/nfc/handover/TransmitManager;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/TransmitManager;-><init>(Lcom/android/nfc/handover/Handover;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;

    .line 364
    :cond_21
    return-void
.end method

.method private isCurrentWifiApEnable()Z
    .registers 3

    .prologue
    .line 972
    const/16 v0, 0xd

    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getWifiAPState()I

    move-result v1

    if-eq v0, v1, :cond_10

    const/16 v0, 0xc

    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getWifiAPState()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 973
    :cond_10
    const/4 v0, 0x1

    .line 975
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private isRemoteSTAConnectAP(Ljava/lang/String;)Z
    .registers 7
    .param p1, "remotestamac"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1006
    if-nez p1, :cond_5

    move v3, v4

    .line 1016
    :goto_4
    return v3

    .line 1009
    :cond_5
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getApLinkedStaList()Ljava/util/List;

    move-result-object v1

    .line 1010
    .local v1, "mLinkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1011
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v2, :cond_23

    .line 1012
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1013
    const/4 v3, 0x1

    goto :goto_4

    .line 1011
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_23
    move v3, v4

    .line 1016
    goto :goto_4
.end method

.method private isSTAConnectRemoteAP([Ljava/lang/String;)Z
    .registers 9
    .param p1, "ip"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1631
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getLocalMac()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    .line 1632
    iget-object v5, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    if-nez v5, :cond_13

    .line 1634
    const-string v5, "WiFiHandover"

    const-string v6, "mLocalDeviceMac is null"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_12
    :goto_12
    return v4

    .line 1637
    :cond_13
    iget-object v5, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 1638
    .local v3, "wi":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_12

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ltz v5, :cond_12

    .line 1639
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 1640
    .local v2, "ssid":Ljava/lang/String;
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_2c
    array-length v5, p1

    if-ge v0, v5, :cond_12

    .line 1641
    iget-object v5, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    aget-object v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 1642
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3a
    array-length v5, p1

    if-ge v1, v5, :cond_4c

    .line 1643
    if-eqz v2, :cond_49

    aget-object v5, p1, v1

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 1644
    const/4 v4, 0x1

    goto :goto_12

    .line 1642
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 1640
    .end local v1    # "j":I
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c
.end method

.method private parseNdefRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;
    .registers 15
    .param p1, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v12, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v7, 0x0

    .line 663
    const/4 v5, 0x0

    .line 664
    .local v5, "response":Landroid/nfc/NdefRecord;
    const/4 v2, 0x0

    .line 667
    .local v2, "payload":Ljava/lang/String;
    if-eqz p1, :cond_14

    .line 668
    :try_start_8
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v3, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_13} :catch_17

    .end local v2    # "payload":Ljava/lang/String;
    .local v3, "payload":Ljava/lang/String;
    move-object v2, v3

    .line 675
    .end local v3    # "payload":Ljava/lang/String;
    .restart local v2    # "payload":Ljava/lang/String;
    :cond_14
    :goto_14
    if-nez v2, :cond_1c

    .line 763
    :cond_16
    :goto_16
    return-object v7

    .line 671
    :catch_17
    move-exception v0

    .line 672
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14

    .line 678
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1c
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 679
    .local v4, "remoteAPInfo":[Ljava/lang/String;
    array-length v1, v4

    .line 680
    .local v1, "length":I
    if-eqz v1, :cond_16

    .line 683
    const/4 v8, 0x0

    aget-object v8, v4, v8

    iput-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    .line 684
    if-lt v1, v12, :cond_16

    .line 687
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getLocalMac()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    .line 688
    aget-object v8, v4, v10

    iput-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    .line 690
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    if-eqz v8, :cond_16

    .line 695
    const-string v8, "WiFiHandover"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSSID == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v8, "WiFiHandover"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mRemoteMac == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-boolean v8, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-eqz v8, :cond_ea

    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_ea

    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v8

    if-eqz v8, :cond_ea

    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/nfc/handover/WiFiHandover;->isRemoteSTAConnectAP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ea

    .line 700
    iput v11, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 701
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/android/nfc/handover/WiFiHandover;->registerSoftApReceiver(Landroid/content/Context;)V

    .line 702
    sget-object v8, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wifi_connected_softap\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {p0, v11, v8, v7, v9}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v5

    .line 705
    const-string v7, "WiFiHandover"

    const-string v8, "remote device wifi sta has connected this ap"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x6c

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 749
    :cond_be
    :goto_be
    iget-boolean v7, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-eqz v7, :cond_e7

    .line 750
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    monitor-enter v8

    .line 752
    :try_start_c5
    iget-object v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-object v7, v7, Lcom/android/nfc/handover/HandoverManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    invoke-virtual {v7}, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->resetHandoverTimer()V

    .line 753
    iget-object v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover;->mRemoteDeviceMac:Ljava/lang/String;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/nfc/handover/HandoverManager;->getOrCreateHandoverTransfer(Ljava/lang/String;ZZ)Lcom/android/nfc/handover/HandoverTransfer;

    move-result-object v6

    .line 755
    .local v6, "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    if-eqz v6, :cond_e6

    .line 756
    iget-object v7, v6, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    iget-object v9, p0, Lcom/android/nfc/handover/WiFiHandover;->mConfigInfo:Lcom/android/nfc/handover/ConfigInfo;

    invoke-static {v9}, Lcom/android/nfc/handover/TransmitClient;->getFileName(Lcom/android/nfc/handover/ConfigInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v6}, Lcom/android/nfc/handover/HandoverTransfer;->updateNotification()V

    .line 760
    :cond_e6
    monitor-exit v8
    :try_end_e7
    .catchall {:try_start_c5 .. :try_end_e7} :catchall_1a7

    .end local v6    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_e7
    move-object v7, v5

    .line 763
    goto/16 :goto_16

    .line 709
    :cond_ea
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/WiFiHandover;->registerWifiStaReceiver(Landroid/content/Context;)V

    .line 710
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_131

    invoke-direct {p0, v4}, Lcom/android/nfc/handover/WiFiHandover;->isSTAConnectRemoteAP([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_131

    .line 712
    iput v11, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 713
    sget-object v8, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wifi_soft_ap_sta_join\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {p0, v11, v8, v7, v9}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v5

    .line 716
    const-string v7, "WiFiHandover"

    const-string v8, "this device wifi sta has connected remote soft ap"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-boolean v7, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-eqz v7, :cond_be

    .line 718
    iget-object v7, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x6e

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_be

    .line 722
    :cond_131
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 724
    const/4 v8, 0x4

    if-lt v1, v8, :cond_16

    .line 727
    aget-object v8, v4, v11

    iput-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mKey:Ljava/lang/String;

    .line 728
    aget-object v8, v4, v12

    invoke-direct {p0, v8}, Lcom/android/nfc/handover/WiFiHandover;->getKeyMgmtType(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mKeyType:I

    .line 730
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_198

    .line 733
    const-string v8, "WiFiHandover"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wifi has enabled,but not connceted "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "we start conncete this ap"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 735
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x71

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 744
    :goto_177
    sget-object v8, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wifi_enable\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/handover/WiFiHandover;->mLocalDeviceMac:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {p0, v11, v8, v7, v9}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v5

    goto/16 :goto_be

    .line 740
    :cond_198
    const-string v8, "WiFiHandover"

    const-string v9, "open  wifi ,and conncete ap"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v8, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x67

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_177

    .line 760
    :catchall_1a7
    move-exception v7

    :try_start_1a8
    monitor-exit v8
    :try_end_1a9
    .catchall {:try_start_1a8 .. :try_end_1a9} :catchall_1a7

    throw v7
.end method

.method private parseWlanShareRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;
    .registers 24
    .param p1, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->registerWifiStaReceiver(Landroid/content/Context;)V

    .line 776
    if-eqz p1, :cond_226

    .line 778
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 780
    const/4 v14, 0x0

    .line 782
    .local v14, "wlanInfo":Ljava/lang/String;
    :try_start_18
    new-instance v15, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v18

    const-string v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_27
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_27} :catch_55

    .end local v14    # "wlanInfo":Ljava/lang/String;
    .local v15, "wlanInfo":Ljava/lang/String;
    move-object v14, v15

    .line 788
    .end local v15    # "wlanInfo":Ljava/lang/String;
    .restart local v14    # "wlanInfo":Ljava/lang/String;
    :goto_28
    if-eqz v14, :cond_36

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5a

    .line 789
    :cond_36
    const/16 v18, 0x2

    sget-object v19, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WLAN_SHARE_RECORD:[B

    const/16 v20, 0x0

    const-string v21, "wlan_share_failure"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v18

    .line 870
    .end local v14    # "wlanInfo":Ljava/lang/String;
    :goto_54
    return-object v18

    .line 783
    .restart local v14    # "wlanInfo":Ljava/lang/String;
    :catch_55
    move-exception v5

    .line 784
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_28

    .line 793
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_5a
    const-string v18, "WiFiHandover"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "parseWlanShareRecord,wlanInfo = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v18, ":"

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v16

    .line 796
    .local v16, "wlaninfos":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_226

    .line 797
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 799
    .local v12, "ssid_length":I
    const/4 v13, 0x0

    .line 800
    .local v13, "wifimsg":[B
    const/4 v11, 0x0

    .line 801
    .local v11, "ssid":[B
    const/4 v6, 0x0

    .line 802
    .local v6, "key":[B
    const/4 v9, 0x0

    .line 803
    .local v9, "msid":Ljava/lang/String;
    const/4 v7, 0x0

    .line 809
    .local v7, "mkey":Ljava/lang/String;
    const/16 v18, 0x4

    const/16 v19, 0x1

    aget-object v19, v16, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_198

    .line 810
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/handover/WiFiHandover;->mKeyType:I

    .line 823
    :goto_b2
    const/16 v18, 0x2

    :try_start_b4
    aget-object v18, v16, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    move-object/from16 v19, v0

    const-string v19, "UTF-8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 824
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v13, v0, v12}, Lcom/android/nfc/handover/WiFiHandover;->subBytes([BII)[B

    move-result-object v11

    .line 825
    array-length v0, v13

    move/from16 v18, v0

    sub-int v18, v18, v12

    move/from16 v0, v18

    invoke-static {v13, v12, v0}, Lcom/android/nfc/handover/WiFiHandover;->subBytes([BII)[B

    move-result-object v6

    .line 826
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    move-object/from16 v18, v0

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v10, v11, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_e4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b4 .. :try_end_e4} :catch_1d2

    .line 827
    .end local v9    # "msid":Ljava/lang/String;
    .local v10, "msid":Ljava/lang/String;
    :try_start_e4
    new-instance v8, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    move-object/from16 v18, v0

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v8, v6, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_f3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e4 .. :try_end_f3} :catch_25a

    .end local v7    # "mkey":Ljava/lang/String;
    .local v8, "mkey":Ljava/lang/String;
    move-object v7, v8

    .end local v8    # "mkey":Ljava/lang/String;
    .restart local v7    # "mkey":Ljava/lang/String;
    move-object v9, v10

    .line 833
    .end local v10    # "msid":Ljava/lang/String;
    .restart local v9    # "msid":Ljava/lang/String;
    :goto_f5
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    .line 834
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/handover/WiFiHandover;->mKeyType:I

    move/from16 v18, v0

    if-eqz v18, :cond_105

    .line 836
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/nfc/handover/WiFiHandover;->mKey:Ljava/lang/String;

    .line 841
    :cond_105
    const-string v18, "WiFiHandover"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mSSID = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "keyType = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/handover/WiFiHandover;->mKeyType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "mKey = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/WiFiHandover;->mKey:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v18

    if-eqz v18, :cond_212

    .line 845
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/handover/WiFiHandover;->getWpaSuppConfig()Ljava/lang/String;

    move-result-object v17

    .line 846
    .local v17, "wpaSuppConfig":Ljava/lang/String;
    if-eqz v17, :cond_1d8

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d8

    .line 848
    const-string v18, "WiFiHandover"

    const-string v19, "Wifi already connected the network, network share success."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 862
    .end local v17    # "wpaSuppConfig":Ljava/lang/String;
    :goto_178
    const/16 v18, 0x2

    sget-object v19, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WLAN_SHARE_RECORD:[B

    const/16 v20, 0x0

    const-string v21, "wlan_share_success"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v18

    goto/16 :goto_54

    .line 812
    :cond_198
    const/16 v18, 0x2

    const/16 v19, 0x1

    aget-object v19, v16, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1b2

    .line 813
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/handover/WiFiHandover;->mKeyType:I

    goto/16 :goto_b2

    .line 816
    :cond_1b2
    const/16 v18, 0x2

    sget-object v19, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WLAN_SHARE_RECORD:[B

    const/16 v20, 0x0

    const-string v21, "wlan_share_failure"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v18

    goto/16 :goto_54

    .line 828
    :catch_1d2
    move-exception v5

    .line 830
    .restart local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1d3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_f5

    .line 852
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v17    # "wpaSuppConfig":Ljava/lang/String;
    :cond_1d8
    const-string v18, "WiFiHandover"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wifi has enabled,but not connceted "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/WiFiHandover;->mSSID:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "we start this ap"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x71

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_178

    .line 859
    .end local v17    # "wpaSuppConfig":Ljava/lang/String;
    :cond_212
    const-string v18, "WiFiHandover"

    const-string v19, "WlanShare : open  wifi sta,and connect ap"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x67

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_178

    .line 868
    .end local v6    # "key":[B
    .end local v7    # "mkey":Ljava/lang/String;
    .end local v9    # "msid":Ljava/lang/String;
    .end local v11    # "ssid":[B
    .end local v12    # "ssid_length":I
    .end local v13    # "wifimsg":[B
    .end local v14    # "wlanInfo":Ljava/lang/String;
    .end local v16    # "wlaninfos":[Ljava/lang/String;
    :cond_226
    const-string v18, "WiFiHandover"

    const-string v19, "parseWlanShareRecord is error"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    const/16 v20, -0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/nfc/handover/HandoverManager;->sendFastConnectResult(II)V

    .line 870
    const/16 v18, 0x2

    sget-object v19, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WLAN_SHARE_RECORD:[B

    const/16 v20, 0x0

    const-string v21, "wlan_share_failure"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v18

    goto/16 :goto_54

    .line 828
    .restart local v6    # "key":[B
    .restart local v7    # "mkey":Ljava/lang/String;
    .restart local v10    # "msid":Ljava/lang/String;
    .restart local v11    # "ssid":[B
    .restart local v12    # "ssid_length":I
    .restart local v13    # "wifimsg":[B
    .restart local v14    # "wlanInfo":Ljava/lang/String;
    .restart local v16    # "wlaninfos":[Ljava/lang/String;
    :catch_25a
    move-exception v5

    move-object v9, v10

    .end local v10    # "msid":Ljava/lang/String;
    .restart local v9    # "msid":Ljava/lang/String;
    goto/16 :goto_1d3
.end method

.method private registerHandoverReceiver(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1689
    iget-boolean v1, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterHandoverReceiver:Z

    if-eqz v1, :cond_5

    .line 1699
    :goto_4
    return-void

    .line 1692
    :cond_5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1693
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1694
    const-string v1, "com.android.nfc.handover.action.HANDOVER_TRANSFER_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1695
    const-string v1, "com.android.nfc.handover.action.HANDOVER_TRANSFER_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1696
    const-string v1, "com.android.nfc.handover.action.HANDOVER_TRANSFER_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1697
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1698
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterHandoverReceiver:Z

    goto :goto_4
.end method

.method private declared-synchronized registerSoftApReceiver(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1225
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterAPReceiver:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2b

    if-eqz v1, :cond_7

    .line 1238
    :goto_5
    monitor-exit p0

    return-void

    .line 1228
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1229
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1230
    const-string v1, "android.net.wifi.WIFI_AP_STA_JOIN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1231
    const-string v1, "android.net.wifi.WIFI_AP_STA_LEAVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1233
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1234
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterAPReceiver:Z

    .line 1236
    const-string v1, "WiFiHandover"

    const-string v2, "mSoftApReceiver isRegisterAPReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2b

    goto :goto_5

    .line 1225
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private resetConnTimeout()V
    .registers 5

    .prologue
    const/16 v3, 0x75

    .line 418
    const-string v0, "WiFiHandover"

    const-string v1, "resetConnTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 420
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 422
    :cond_16
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 423
    return-void
.end method

.method private setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .registers 5
    .param p1, "apconfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enable"    # Z

    .prologue
    .line 1043
    if-eqz p2, :cond_21

    .line 1044
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1046
    const-string v0, "WiFiHandover"

    const-string v1, "we should close wifi to open soft ap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/WiFiHandover;->setWifiSTAEnabled(Z)V

    .line 1049
    :cond_15
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1053
    :goto_1a
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v0

    return v0

    .line 1051
    :cond_21
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->stopApAll()V

    goto :goto_1a
.end method

.method private setWifiSTAEnabled(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_5

    .line 1314
    :goto_4
    return-void

    .line 1304
    :cond_5
    if-eqz p1, :cond_1f

    .line 1305
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->isCurrentWifiApEnable()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1307
    const-string v0, "WiFiHandover"

    const-string v1, "we should close Soft ap to open wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1313
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_4

    .line 1311
    :cond_1f
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->stopStaAll()V

    goto :goto_19
.end method

.method private stopApAll()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1057
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 1059
    const-string v0, "WiFiHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegisterAPReceiver is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterAPReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterAPReceiver:Z

    if-eqz v0, :cond_37

    .line 1061
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mSoftApReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1062
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterAPReceiver:Z

    .line 1064
    const-string v0, "WiFiHandover"

    const-string v1, "mSoftApReceiver is unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_37
    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-eqz v0, :cond_51

    .line 1067
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;

    if-eqz v0, :cond_46

    .line 1068
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/TransmitManager;->closeServer()Z

    .line 1069
    iput-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForSoftAP:Lcom/android/nfc/handover/TransmitManager;

    .line 1071
    :cond_46
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    if-eqz v0, :cond_51

    .line 1072
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->stopMonitoring()V

    .line 1075
    :cond_51
    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isCreateNewAPConfiguration:Z

    if-eqz v0, :cond_5d

    .line 1076
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mDefault_APConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1080
    :goto_5c
    return-void

    .line 1078
    :cond_5d
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_5c
.end method

.method private stopStaAll()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1318
    const-string v0, "WiFiHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegisterWIFIReceiver is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterWIFIReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiStaReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterWIFIReceiver:Z

    if-eqz v0, :cond_33

    .line 1320
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiStaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1322
    const-string v0, "WiFiHandover"

    const-string v1, "mWifiStaReceiver is unregisterReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    iput-boolean v3, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterWIFIReceiver:Z

    .line 1325
    :cond_33
    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    if-eqz v0, :cond_4e

    .line 1326
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;

    if-eqz v0, :cond_43

    .line 1327
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/TransmitManager;->closeServer()Z

    .line 1328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mTransmitManagerForWifiSTA:Lcom/android/nfc/handover/TransmitManager;

    .line 1330
    :cond_43
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    if-eqz v0, :cond_4e

    .line 1331
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->stopMonitoring()V

    .line 1334
    :cond_4e
    iput-boolean v3, p0, Lcom/android/nfc/handover/WiFiHandover;->isStaTransmitFiles:Z

    .line 1335
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mBeamState:I

    .line 1336
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->cancelScanAPTimer()V

    .line 1337
    return-void
.end method

.method public static subBytes([BII)[B
    .registers 7
    .param p0, "src"    # [B
    .param p1, "begin"    # I
    .param p2, "count"    # I

    .prologue
    .line 875
    new-array v1, p2, [B

    .line 876
    .local v1, "sub":[B
    move v0, p1

    .local v0, "i":I
    :goto_3
    add-int v2, p1, p2

    if-ge v0, v2, :cond_10

    .line 877
    sub-int v2, v0, p1

    aget-byte v3, p0, v0

    aput-byte v3, v1, v2

    .line 876
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 879
    :cond_10
    return-object v1
.end method

.method private unRegisterHandoverReceiver(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1702
    iget-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterHandoverReceiver:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_10

    .line 1703
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterHandoverReceiver:Z

    .line 1706
    :cond_10
    return-void
.end method


# virtual methods
.method public complete()V
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 348
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverReceiver:Landroid/content/BroadcastReceiver;

    .line 352
    :cond_e
    return-void
.end method

.method public createDataRecord()Landroid/nfc/NdefRecord;
    .registers 5

    .prologue
    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    .line 381
    const/4 v0, 0x2

    sget-object v1, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->createWifiAPRecordPayload()[B

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method public createFastConDataRecord()Landroid/nfc/NdefRecord;
    .registers 5

    .prologue
    .line 387
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    .line 388
    const/4 v0, 0x2

    sget-object v1, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WIFI_HANDOVER_RECORD:[B

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->createWifiAPRecordPayload()[B

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method public createWlanDataRecord()Landroid/nfc/NdefRecord;
    .registers 5

    .prologue
    .line 393
    const/4 v0, 0x2

    sget-object v1, Lcom/android/nfc/handover/WiFiHandover;->TYPE_WLAN_SHARE_RECORD:[B

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->getWpaSuppConfig()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/nfc/handover/WiFiHandover;->formatByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/nfc/handover/WiFiHandover;->createTextRecord(S[B[B[B)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method public disConnectCurrentAP()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1340
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v2, :cond_6

    .line 1353
    :cond_5
    :goto_5
    return-void

    .line 1342
    :cond_6
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1343
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1344
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 1345
    .local v1, "networkId":I
    if-ltz v1, :cond_2a

    .line 1346
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 1347
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 1348
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_5

    .line 1350
    :cond_2a
    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mNetworkId:I

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_5
.end method

.method public disableDevice()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 272
    const-string v0, "WiFiHandover"

    const-string v1, "wifi handover disableDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->stopStaAll()V

    .line 276
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->stopApAll()V

    .line 278
    invoke-virtual {p0}, Lcom/android/nfc/handover/WiFiHandover;->disConnectCurrentAP()V

    .line 299
    invoke-direct {p0, v2}, Lcom/android/nfc/handover/WiFiHandover;->setWifiSTAEnabled(Z)V

    .line 300
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/nfc/handover/WiFiHandover;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method public doFastConHandover(Landroid/nfc/NdefMessage;)V
    .registers 3
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    .line 430
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->doHandover(Landroid/nfc/NdefMessage;)V

    .line 431
    return-void
.end method

.method public doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V
    .registers 5
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    .line 408
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->initianTransmitManager()V

    .line 409
    invoke-direct {p0, p2}, Lcom/android/nfc/handover/WiFiHandover;->doHandover(Landroid/nfc/NdefMessage;)V

    .line 410
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    monitor-enter v1

    .line 411
    :try_start_c
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverManager;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->stopMonitoring()V

    .line 412
    monitor-exit v1

    .line 414
    return-void

    .line 412
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v0
.end method

.method public enableDevice()Z
    .registers 2

    .prologue
    .line 264
    invoke-super {p0}, Lcom/android/nfc/handover/Handover;->enableDevice()Z

    move-result v0

    return v0
.end method

.method public isDeviceEnabled()Z
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public isFastConnectHandoverSupported()Z
    .registers 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_6

    .line 326
    const/4 v0, 0x1

    .line 329
    :goto_5
    return v0

    .line 328
    :cond_6
    const-string v0, "WiFiHandover"

    const-string v1, "mWifiManager is null, is not support wifi handover"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isHandoverSupported()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 314
    const-string v3, "ro.config.hw_nfc_softap_beam"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 315
    .local v0, "supportSoftAPforHWBeam":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v1, v3, :cond_17

    .line 316
    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_17

    .line 321
    :goto_16
    return v1

    .line 320
    :cond_17
    const-string v1, "WiFiHandover"

    const-string v3, "mWifiManager is null, is not support wifi handover"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 321
    goto :goto_16
.end method

.method public declared-synchronized registerWifiStaReceiver(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1541
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterWIFIReceiver:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2b

    if-eqz v1, :cond_7

    .line 1553
    :goto_5
    monitor-exit p0

    return-void

    .line 1544
    :cond_7
    :try_start_7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1545
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1546
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1547
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1548
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mWifiStaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1549
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/handover/WiFiHandover;->isRegisterWIFIReceiver:Z

    .line 1552
    const-string v1, "WiFiHandover"

    const-string v2, "mWifiStaReceiver is registerWifiStaReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_2b

    goto :goto_5

    .line 1541
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public tryFastConHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 7
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 601
    iput-boolean v4, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    .line 602
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getWiFiHandoverRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 603
    new-instance v0, Landroid/nfc/NdefMessage;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v1, v4}, Lcom/android/nfc/handover/HandoverManager;->createHandoverSelectRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getWiFiHandoverRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/nfc/handover/WiFiHandover;->parseNdefRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 609
    :goto_21
    return-object v0

    .line 605
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getWlanShareRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 606
    new-instance v0, Landroid/nfc/NdefMessage;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v1, v4}, Lcom/android/nfc/handover/HandoverManager;->createHandoverSelectRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getWlanShareRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/nfc/handover/WiFiHandover;->parseWlanShareRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto :goto_21

    .line 609
    :cond_40
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 8
    .param p1, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 583
    const-string v1, "WiFiHandover"

    const-string v2, "tryHandoverRequest record  is running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/nfc/handover/WiFiHandover;->registerHandoverReceiver(Landroid/content/Context;)V

    .line 585
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 586
    .local v0, "filerecord":Landroid/nfc/NdefRecord;
    invoke-virtual {p0}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/handover/HandoverManager;->parseConfigInfoRecord(Landroid/nfc/NdefRecord;)Lcom/android/nfc/handover/ConfigInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/WiFiHandover;->mConfigInfo:Lcom/android/nfc/handover/ConfigInfo;

    .line 587
    iput-boolean v3, p0, Lcom/android/nfc/handover/WiFiHandover;->isWifiHandoverBeam:Z

    .line 588
    invoke-direct {p0}, Lcom/android/nfc/handover/WiFiHandover;->initianTransmitManager()V

    .line 589
    new-instance v1, Landroid/nfc/NdefMessage;

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v2, v5}, Lcom/android/nfc/handover/HandoverManager;->createHandoverSelectRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v2

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {p0, p1}, Lcom/android/nfc/handover/WiFiHandover;->getWiFiHandoverRecord(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefRecord;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/nfc/handover/WiFiHandover;->parseNdefRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v1
.end method
