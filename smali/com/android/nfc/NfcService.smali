.class public Lcom/android/nfc/NfcService;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$DeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcService$InfoService;,
        Lcom/android/nfc/NfcService$NfcThread;,
        Lcom/android/nfc/NfcService$ApplyRoutingTask;,
        Lcom/android/nfc/NfcService$NfcServiceHandler;,
        Lcom/android/nfc/NfcService$WatchDogThread;,
        Lcom/android/nfc/NfcService$OpenSecureElement;,
        Lcom/android/nfc/NfcService$NfcQcomAdapterService;,
        Lcom/android/nfc/NfcService$NfcAdapterExtrasService;,
        Lcom/android/nfc/NfcService$TagService;,
        Lcom/android/nfc/NfcService$CardEmulationService;,
        Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;,
        Lcom/android/nfc/NfcService$NfcAdapterService;,
        Lcom/android/nfc/NfcService$EnableDisableTask;,
        Lcom/android/nfc/NfcService$ReaderModeParams;
    }
.end annotation


# static fields
.field public static final ACTION_AID_SELECTED:Ljava/lang/String; = "com.android.nfc_extras.action.AID_SELECTED"

.field public static final ACTION_APDU_RECEIVED:Ljava/lang/String; = "com.android.nfc_extras.action.APDU_RECEIVED"

.field public static final ACTION_EMV_CARD_REMOVAL:Ljava/lang/String; = "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

.field public static final ACTION_LLCP_DOWN:Ljava/lang/String; = "com.android.nfc.action.LLCP_DOWN"

.field public static final ACTION_LLCP_UP:Ljava/lang/String; = "com.android.nfc.action.LLCP_UP"

.field private static final ACTION_MASTER_CLEAR_NOTIFICATION:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR_NOTIFICATION"

.field public static final ACTION_MIFARE_ACCESS_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

.field public static final ACTION_RF_FIELD_OFF_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

.field public static final ACTION_RF_FIELD_ON_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

.field public static final ACTION_SE_LISTEN_ACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

.field public static final ACTION_SE_LISTEN_DEACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

.field private static final ADMIN_PERM:Ljava/lang/String; = "android.permission.WRITE_SECURE_SETTINGS"

.field private static final ADMIN_PERM_ERROR:Ljava/lang/String; = "WRITE_SECURE_SETTINGS permission required"

.field private static final CAT_ACTIVATE_NOTIFY_ACTION:Ljava/lang/String; = "org.codeaurora.intent.action.stk.activate_notify"

.field private static final CAT_HCI_CONNECTIVITY_ACTION:Ljava/lang/String; = "org.codeaurora.intent.action.stk.hci_connectivity"

.field static final DBG:Z = false

.field static final DEFAULT_PRESENCE_CHECK_DELAY:I = 0x7d

.field private static final DTA_PATTERN:Ljava/lang/String; = "sys.dtapattern"

.field static final EE_ERROR_ALREADY_OPEN:I = -0x2

.field static final EE_ERROR_EXT_FIELD:I = -0x5

.field static final EE_ERROR_INIT:I = -0x3

.field static final EE_ERROR_IO:I = -0x1

.field static final EE_ERROR_LISTEN_MODE:I = -0x4

.field static final EE_ERROR_NFC_DISABLED:I = -0x6

.field public static final EXTRA_AID:Ljava/lang/String; = "com.android.nfc_extras.extra.AID"

.field public static final EXTRA_APDU_BYTES:Ljava/lang/String; = "com.android.nfc_extras.extra.APDU_BYTES"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.android.nfc_extras.extra.DATA"

.field public static final EXTRA_MIFARE_BLOCK:Ljava/lang/String; = "com.android.nfc_extras.extra.MIFARE_BLOCK"

.field public static final EXTRA_SE_NAME:Ljava/lang/String; = "com.android.nfc_extras.extra.SE_NAME"

.field static final HCI_UI_STATE_AVAILABLE:I = 0x1

.field static final HCI_UI_STATE_LOCKED_NOTIFIABLE:I = 0x3

.field static final HCI_UI_STATE_LOCKED_NOT_NOTIFIABLE:I = 0x2

.field static final HCI_UI_STATE_UNKNOWN:I = 0x0

.field static final HCI_UI_STATE_UNLOCKED_NOT_NOTIFIABLE:I = 0x4

.field static final INIT_WATCHDOG_MS:I = 0x15f90

.field private static final KEY_NFC_ENABLE:Ljava/lang/String; = "nfc_enable"

.field static final MIFARE_CLASSIC_PRESENCE_CHECK_DELAY_MS:I = 0x1f4

.field static final MSG_CARD_EMULATION:I = 0x1

.field static final MSG_COMMIT_ROUTING:I = 0x12

.field static final MSG_DISABLE_CARD_EMULATION_MODE:I = 0x17

.field static final MSG_ENABLE_CARD_EMULATION_MODE:I = 0x16

.field static final MSG_ENABLE_NFC_ADAPTER:I = 0x14

.field static final MSG_HCI_EVT_CONNECTIVITY:I = 0x19

.field static final MSG_LLCP_LINK_ACTIVATION:I = 0x2

.field static final MSG_LLCP_LINK_DEACTIVATED:I = 0x3

.field static final MSG_LLCP_LINK_FIRST_PACKET:I = 0xf

.field static final MSG_MOCK_NDEF:I = 0x7

.field static final MSG_NDEF_TAG:I = 0x0

.field static final MSG_ROUTE_AID:I = 0x10

.field static final MSG_SET_ACTIVE_SECURE_ELEMENT:I = 0x18

.field static final MSG_SE_APDU_RECEIVED:I = 0xa

.field static final MSG_SE_DELIVER_INTENT:I = 0x13

.field static final MSG_SE_EMV_CARD_REMOVAL:I = 0xb

.field static final MSG_SE_FIELD_ACTIVATED:I = 0x8

.field static final MSG_SE_FIELD_DEACTIVATED:I = 0x9

.field static final MSG_SE_LISTEN_ACTIVATED:I = 0xd

.field static final MSG_SE_LISTEN_DEACTIVATED:I = 0xe

.field static final MSG_SE_MIFARE_ACCESS:I = 0xc

.field static final MSG_START_ACTIVITYE:I = 0x1b

.field static final MSG_TARGET_DESELECTED:I = 0x4

.field static final MSG_UNROUTE_AID:I = 0x11

.field static final MSG_UPDATE_CARD_EMULATION_ROUTE:I = 0x15

.field static final NDEF_PUSH_ON_DEFAULT:Z = true

.field static final NFCC_UI_STATE_LOCKED:I = 0x2

.field static final NFCC_UI_STATE_OFF:I = 0x0

.field static final NFCC_UI_STATE_UNLOCKED:I = 0x1

.field static final NFC_DISABLED_BY_AIRPLANEMODE:I = 0x2

.field static final NFC_DISABLED_BY_SYSTEM:I = 0x0

.field static final NFC_DISABLED_BY_USER:I = 0x1

.field static final NFC_ON:I = 0x3

.field static NFC_ON_DEFAULT:Z = false

.field private static final NFC_PERM:Ljava/lang/String; = "android.permission.NFC"

.field private static final NFC_PERM_ERROR:Ljava/lang/String; = "NFC permission required"

.field static final POLLING_MODE:I = 0x2

.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field static final PREF_ACTIVE_SECURE_ELEMENT:Ljava/lang/String; = "active_secure_element"

.field static final PREF_AIRPLANE_OVERRIDE:Ljava/lang/String; = "airplane_override"

.field static final PREF_EE_ROUTING_STATE:Ljava/lang/String; = "ee_routing_state"

.field static final PREF_FIRST_BEAM:Ljava/lang/String; = "first_beam"

.field static final PREF_FIRST_BOOT:Ljava/lang/String; = "first_boot"

.field static final PREF_NDEF_PUSH_ON:Ljava/lang/String; = "ndef_push_on"

.field static final PREF_NFC_ON:Ljava/lang/String; = "nfc_on"

.field static final ROUTE_OFF:I = 0x1

.field static final ROUTE_ON_ALLWAYS:I = 0x4

.field static final ROUTE_ON_WHEN_SCREEN_ON:I = 0x3

.field static final ROUTE_ON_WHEN_SCREEN_ON_UNLOCKED:I = 0x2

.field static final ROUTING_WATCHDOG_MS:I = 0x2710

.field static final SCREEN_STATE_OFF:I = 0x4

.field static final SCREEN_STATE_ON_LOCKED:I = 0x3

.field static final SCREEN_STATE_ON_UNLOCKED:I = 0x2

.field static final SCREEN_STATE_UNKNOWN:I = 0x5

.field public static final SERVICE_NAME:Ljava/lang/String; = "nfc"

.field static final SE_BROADCASTS_WITH_HCE:Z = true

.field static final SIM_NFC_FUNCTION:I = 0x2

.field static final SIM_RECEIVE_DEFAULT:Z

.field private static final SLOT_ID_KEY_STRING:Ljava/lang/String; = "slot_id"

.field public static final SOUND_END:I = 0x1

.field public static final SOUND_ERROR:I = 0x2

.field public static final SOUND_START:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcService"

.field static final TASK_BOOT:I = 0x3

.field static final TASK_DISABLE:I = 0x2

.field static final TASK_EE_WIPE:I = 0x4

.field static final TASK_ENABLE:I = 0x1

.field static final WAIT_FOR_NFCEE_OPERATIONS_MS:I = 0x1388

.field static final WAIT_FOR_NFCEE_POLL_MS:I = 0x64

.field public static final sIsMultiSimEnabled:Z

.field private static sService:Lcom/android/nfc/NfcService;


# instance fields
.field airPlaneMode:Z

.field imsi:Ljava/lang/String;

.field mActiveSecureElement:Ljava/lang/String;

.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field private mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

.field mCardEmulationService:Lcom/android/nfc/NfcService$CardEmulationService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private mDeviceHost:Lcom/android/nfc/DeviceHost;

.field private mEeRoutingState:I

.field private mEeWakeLock:Landroid/os/PowerManager$WakeLock;

.field mEndSound:I

.field mErrorSound:I

.field mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

.field private mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

.field private mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

.field mHciUiState:I

.field private mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

.field mHostRouteEnabled:Z

.field mInProvisionMode:Z

.field mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIsAirplaneSensitive:Z

.field mIsAirplaneToggleable:Z

.field mIsBoot:Ljava/lang/String;

.field mIsDebugBuild:Z

.field mIsHceCapable:Z

.field mIsNdefPushEnabled:Z

.field mIsNfcDisabledReason:I

.field mIsSentUnicastReception:Z

.field mIsSimReady:Z

.field mIsUpdatingDiscoveryDuringShuttingDown:Z

.field private mKeyguard:Landroid/app/KeyguardManager;

.field final mMultiReceptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

.field private mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

.field mNfcPollingEnabled:Z

.field mNfcQcomAdapterService:Lcom/android/nfc/NfcService$NfcQcomAdapterService;

.field mNfcSecureElementDisabled:Z

.field mNfcTagService:Lcom/android/nfc/NfcService$TagService;

.field mNfccUiState:I

.field mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

.field mNfceeRouteEnabled:Z

.field final mObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mOldScreenState:I

.field private mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

.field mP2pStarted:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private final mProactiveReceiver:Landroid/content/BroadcastReceiver;

.field private final mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

.field mReaderModeEnabled:Z

.field mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mSEToOpenAPDUGateMap:Ljava/util/HashMap;
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

.field private mScreenOffCmdWakeLock:Landroid/os/PowerManager$WakeLock;

.field mScreenState:I

.field mSePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

.field private mSimStateReciver:Landroid/content/BroadcastReceiver;

.field private mSnepClientHandleCounter:I

.field private final mSnepClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/snep/SnepClient;",
            ">;"
        }
    .end annotation
.end field

.field private mSnepServerHandleCounter:I

.field private final mSnepServers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/snep/SnepServer;",
            ">;"
        }
    .end annotation
.end field

.field mSoundPool:Landroid/media/SoundPool;

.field mStartSound:I

.field mState:I

.field private mTempEnable:Z

.field manager:Landroid/telephony/TelephonyManager;

.field nfcc_info:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 146
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/NfcService;->NFC_ON_DEFAULT:Z

    .line 419
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsMultiSimEnabled:Z

    .line 420
    const-string v0, "true"

    const-string v1, "ro.config.sim_receive_on"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcService;->SIM_RECEIVE_DEFAULT:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .registers 19
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .prologue
    .line 594
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mTempEnable:Z

    .line 307
    new-instance v2, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    .line 312
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mP2pStarted:Z

    .line 315
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    .line 318
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mSePackages:Ljava/util/HashSet;

    .line 326
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    .line 334
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mMultiReceptionMap:Ljava/util/HashMap;

    .line 336
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsSentUnicastReception:Z

    .line 339
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mSEToOpenAPDUGateMap:Ljava/util/HashMap;

    .line 348
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mIsNfcDisabledReason:I

    .line 350
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsUpdatingDiscoveryDuringShuttingDown:Z

    .line 357
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->airPlaneMode:Z

    .line 404
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mSnepClients:Ljava/util/HashMap;

    .line 405
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mSnepServers:Ljava/util/HashMap;

    .line 406
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mSnepClientHandleCounter:I

    .line 407
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mSnepServerHandleCounter:I

    .line 414
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsSimReady:Z

    .line 3758
    new-instance v2, Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 3792
    new-instance v2, Lcom/android/nfc/NfcService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$1;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 3903
    new-instance v2, Lcom/android/nfc/NfcService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$2;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mSimStateReciver:Landroid/content/BroadcastReceiver;

    .line 3958
    new-instance v2, Lcom/android/nfc/NfcService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$3;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mProactiveReceiver:Landroid/content/BroadcastReceiver;

    .line 3974
    new-instance v2, Lcom/android/nfc/NfcService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$4;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 596
    new-instance v2, Lcom/android/nfc/NfcService$TagService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$TagService;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 597
    new-instance v2, Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 598
    new-instance v2, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    .line 599
    new-instance v2, Lcom/android/nfc/NfcService$NfcQcomAdapterService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$NfcQcomAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcQcomAdapterService:Lcom/android/nfc/NfcService$NfcQcomAdapterService;

    .line 600
    new-instance v2, Lcom/android/nfc/NfcService$CardEmulationService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$CardEmulationService;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mCardEmulationService:Lcom/android/nfc/NfcService$CardEmulationService;

    .line 602
    const-string v2, "NfcService"

    const-string v3, "Starting NFC service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    sput-object p0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    .line 606
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 608
    new-instance v2, Lcom/android/nfc/dhimpl/NativeNfcManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->dta_get_pattern_number()I

    move-result v13

    .line 613
    .local v13, "last_pattern":I
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NFC service start: setting pattern number to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v2, "sys.dtapattern"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2, v13}, Lcom/android/nfc/DeviceHost;->dta_set_pattern_number(I)V

    .line 620
    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/nfc/handover/Constants;->supportHWBeam:Z

    if-ne v2, v3, :cond_3a5

    .line 622
    new-instance v2, Lcom/android/nfc/handover/HandoverManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/nfc/handover/HandoverManager;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 627
    :goto_155
    const/4 v12, 0x0

    .line 629
    .local v12, "isNfcProvisioningEnabled":Z
    :try_start_156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f050000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_163
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_156 .. :try_end_163} :catch_3c4

    move-result v12

    .line 634
    :goto_164
    if-eqz v12, :cond_3b7

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "device_provisioned"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3b4

    const/4 v2, 0x1

    :goto_174
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 641
    :goto_178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-nez v2, :cond_3be

    const/4 v2, 0x1

    :goto_183
    invoke-virtual {v3, v2}, Lcom/android/nfc/handover/HandoverManager;->setEnabled(Z)V

    .line 642
    new-instance v2, Lcom/android/nfc/NfcDispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    invoke-direct {v2, v3, v4, v6}, Lcom/android/nfc/NfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 643
    new-instance v2, Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpMiu()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpRwSize()I

    move-result v7

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/android/nfc/P2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    .line 646
    new-instance v2, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    .line 647
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    .line 649
    new-instance v2, Lcom/android/nfc/NfceeAccessControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/nfc/NfceeAccessControl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v3, "NfcServicePrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 654
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mState:I

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "ndef_push_on"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 657
    const-string v2, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21e

    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c1

    :cond_21e
    const/4 v2, 0x1

    :goto_21f
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "NfcService:mRoutingWakeLock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "NfcService:mEeWakeLock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "NfcService:mScreenOffCmdWakeLock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mScreenOffCmdWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 670
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService;->checkScreenState()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 672
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    .line 673
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mHciUiState:I

    .line 674
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    .line 676
    const-string v2, "nfc"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 679
    new-instance v5, Landroid/content/IntentFilter;

    const-string v2, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    invoke-direct {v5, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 680
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/nfc/NfcService;->registerForAirplaneMode(Landroid/content/IntentFilter;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 686
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 687
    .local v14, "mProactiveFilter":Landroid/content/IntentFilter;
    const-string v2, "org.codeaurora.intent.action.stk.activate_notify"

    invoke-virtual {v14, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mProactiveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 690
    .local v16, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.hardware.nfc.hce"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 691
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_31c

    .line 692
    new-instance v2, Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {v2}, Lcom/android/nfc/cardemulation/AidRoutingManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 693
    new-instance v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {v2, v3, v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 694
    new-instance v2, Lcom/android/nfc/cardemulation/HostEmulationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v2, v3, v4}, Lcom/android/nfc/cardemulation/HostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 696
    :cond_31c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_322

    .line 697
    :cond_322
    new-instance v15, Landroid/content/IntentFilter;

    const-string v2, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    invoke-direct {v15, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 698
    .local v15, "ownerFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 699
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    const-string v2, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    const-string v2, "com.android.nfc.action.ALLOW_NFC_ENABLE"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    const-string v2, "com.android.nfc.action.DENY_NFC_ENABLE"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 706
    new-instance v15, Landroid/content/IntentFilter;

    .end local v15    # "ownerFilter":Landroid/content/IntentFilter;
    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 707
    .restart local v15    # "ownerFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 708
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 709
    const-string v2, "package"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 713
    new-instance v9, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v9, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 714
    .local v9, "mfilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 715
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v9, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/nfc/NfcService;->mSimStateReciver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService;->updatePackageCache()V

    .line 722
    new-instance v2, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 723
    return-void

    .line 624
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "mfilter":Landroid/content/IntentFilter;
    .end local v12    # "isNfcProvisioningEnabled":Z
    .end local v14    # "mProactiveFilter":Landroid/content/IntentFilter;
    .end local v15    # "ownerFilter":Landroid/content/IntentFilter;
    .end local v16    # "pm":Landroid/content/pm/PackageManager;
    :cond_3a5
    new-instance v2, Lcom/android/nfc/handover/HandoverManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/nfc/handover/HandoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    goto/16 :goto_155

    .line 635
    .restart local v12    # "isNfcProvisioningEnabled":Z
    :cond_3b4
    const/4 v2, 0x0

    goto/16 :goto_174

    .line 638
    :cond_3b7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    goto/16 :goto_178

    .line 641
    :cond_3be
    const/4 v2, 0x0

    goto/16 :goto_183

    .line 657
    :cond_3c1
    const/4 v2, 0x0

    goto/16 :goto_21f

    .line 631
    :catch_3c4
    move-exception v2

    goto/16 :goto_164
.end method

.method static synthetic access$000(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/nfc/NfcService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/nfc/NfcService;->mSnepClientHandleCounter:I

    return v0
.end method

.method static synthetic access$1008(Lcom/android/nfc/NfcService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/nfc/NfcService;->mSnepClientHandleCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/nfc/NfcService;->mSnepClientHandleCounter:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSnepClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/nfc/NfcService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/nfc/NfcService;->mSnepServerHandleCounter:I

    return v0
.end method

.method static synthetic access$1208(Lcom/android/nfc/NfcService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/nfc/NfcService;->mSnepServerHandleCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/nfc/NfcService;->mSnepServerHandleCounter:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSnepServers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/HostEmulationManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/nfc/NfcService;ZLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/NfcService;->enableNfcControllerAfterUserConfirm(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/nfc/NfcService;)Landroid/nfc/NfcAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/nfc/NfcService;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenOffCmdWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/RegisteredAidCache;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$2100()Lcom/android/nfc/NfcService;
    .registers 1

    .prologue
    .line 126
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/nfc/NfcService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget v0, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/nfc/NfcService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$OpenSecureElement;)Lcom/android/nfc/NfcService$OpenSecureElement;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Lcom/android/nfc/NfcService$OpenSecureElement;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/nfc/NfcService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mTempEnable:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/nfc/NfcService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;
    .param p1, "x1"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mTempEnable:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private checkCEScreenState(I)Z
    .registers 5
    .param p1, "state"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3045
    iget v2, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    packed-switch v2, :pswitch_data_14

    move v0, v1

    .line 3061
    :cond_8
    :goto_8
    :pswitch_8
    return v0

    .line 3049
    :pswitch_9
    const/4 v2, 0x4

    if-lt p1, v2, :cond_8

    move v0, v1

    .line 3050
    goto :goto_8

    .line 3055
    :pswitch_e
    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    move v0, v1

    .line 3058
    goto :goto_8

    .line 3045
    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_e
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private enableNfcControllerAfterUserConfirm(ZLjava/lang/String;)V
    .registers 5
    .param p1, "isAllowed"    # Z
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3785
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3786
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3787
    if-eqz p1, :cond_17

    const/4 v1, 0x1

    :goto_d
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3788
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3789
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3790
    return-void

    .line 3787
    :cond_17
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static enforceAdminPerm(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 423
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v1, "WRITE_SECURE_SETTINGS permission required"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public static getInstance()Lcom/android/nfc/NfcService;
    .registers 1

    .prologue
    .line 447
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method static hexStringToBytes(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 2679
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    const/4 v0, 0x0

    .line 2690
    :cond_b
    return-object v0

    .line 2680
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2681
    .local v2, "len":I
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_29

    .line 2682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2683
    add-int/lit8 v2, v2, 0x1

    .line 2685
    :cond_29
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 2686
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    if-ge v1, v2, :cond_b

    .line 2687
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 2686
    add-int/lit8 v1, v1, 0x2

    goto :goto_2e
.end method

.method static screenStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "screenState"    # I

    .prologue
    .line 4057
    packed-switch p0, :pswitch_data_10

    .line 4065
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 4059
    :pswitch_6
    const-string v0, "OFF"

    goto :goto_5

    .line 4061
    :pswitch_9
    const-string v0, "ON_LOCKED"

    goto :goto_5

    .line 4063
    :pswitch_c
    const-string v0, "ON_UNLOCKED"

    goto :goto_5

    .line 4057
    nop

    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method static stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 4041
    packed-switch p0, :pswitch_data_12

    .line 4051
    const-string v0, "<error>"

    :goto_5
    return-object v0

    .line 4043
    :pswitch_6
    const-string v0, "off"

    goto :goto_5

    .line 4045
    :pswitch_9
    const-string v0, "turning on"

    goto :goto_5

    .line 4047
    :pswitch_c
    const-string v0, "on"

    goto :goto_5

    .line 4049
    :pswitch_f
    const-string v0, "turning off"

    goto :goto_5

    .line 4041
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static validateUserId(I)V
    .registers 3
    .param p0, "userId"    # I

    .prologue
    .line 427
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p0, v0, :cond_e

    .line 428
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "userId passed in it not the calling user."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 430
    :cond_e
    return-void
.end method


# virtual methods
.method public NfccInfo()[B
    .registers 2

    .prologue
    .line 4106
    iget-object v0, p0, Lcom/android/nfc/NfcService;->nfcc_info:[B

    return-object v0
.end method

.method _nfcEeClose(ILandroid/os/IBinder;)V
    .registers 5
    .param p1, "callingPid"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2165
    monitor-enter p0

    .line 2166
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSEToOpenAPDUGateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2168
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2169
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC adapter is disabled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2187
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0

    .line 2171
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    if-nez v0, :cond_27

    .line 2172
    new-instance v0, Ljava/io/IOException;

    const-string v1, "NFC EE closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2174
    :cond_27
    const/4 v0, -0x1

    if-eq p1, v0, :cond_38

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    if-eq p1, v0, :cond_38

    .line 2175
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wrong PID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2177
    :cond_38
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget-object v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    if-eq v0, p2, :cond_46

    .line 2178
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Wrong binder handle"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2181
    :cond_46
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2183
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->doDisconnect(I)V

    .line 2184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    .line 2186
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 2187
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_1b .. :try_end_5b} :catchall_18

    .line 2188
    return-void
.end method

.method applyRouting(Z)V
    .registers 13
    .param p1, "force"    # Z

    .prologue
    .line 2697
    monitor-enter p0

    .line 2698
    :try_start_1
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mIsUpdatingDiscoveryDuringShuttingDown:Z

    if-nez v8, :cond_11

    .line 2699
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    if-eqz v8, :cond_14

    .line 2701
    :cond_f
    monitor-exit p0

    .line 3030
    :goto_10
    return-void

    .line 2704
    :cond_11
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mIsUpdatingDiscoveryDuringShuttingDown:Z

    .line 2707
    :cond_14
    new-instance v7, Lcom/android/nfc/NfcService$WatchDogThread;

    const-string v8, "applyRouting"

    const/16 v9, 0x2710

    invoke-direct {v7, p0, v8, v9}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 2708
    .local v7, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v8, :cond_3e

    .line 2709
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "device_provisioned"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_d5

    const/4 v8, 0x1

    :goto_2d
    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 2711
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-nez v8, :cond_3e

    .line 2714
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v8}, Lcom/android/nfc/NfcDispatcher;->disableProvisioningMode()V

    .line 2715
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/nfc/handover/HandoverManager;->setEnabled(Z)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_d2

    .line 2719
    :cond_3e
    :try_start_3e
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 2721
    const-string v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Screen State change: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    invoke-static {v10}, Lcom/android/nfc/NfcService;->screenStateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") => "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v10}, Lcom/android/nfc/NfcService;->screenStateToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->enablePN544Quirks()Z

    move-result v8

    if-eqz v8, :cond_d8

    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_d8

    .line 2734
    if-nez p1, :cond_a0

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    if-eqz v8, :cond_b2

    .line 2735
    :cond_a0
    const-string v8, "NfcService"

    const-string v9, "NFC-C OFF, disconnect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->disableDiscovery()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 2739
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->maybeDisconnectTarget()V

    .line 2742
    :cond_b2
    iget v8, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_cc

    .line 2743
    if-nez p1, :cond_bd

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    if-eqz v8, :cond_cc

    .line 2744
    :cond_bd
    const-string v8, "NfcService"

    const-string v9, "NFC-EE OFF"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    .line 2746
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement()V
    :try_end_cc
    .catchall {:try_start_3e .. :try_end_cc} :catchall_31b

    .line 3027
    :cond_cc
    :try_start_cc
    invoke-virtual {v7}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    monitor-exit p0

    goto/16 :goto_10

    .line 3029
    .end local v7    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :catchall_d2
    move-exception v8

    monitor-exit p0
    :try_end_d4
    .catchall {:try_start_cc .. :try_end_d4} :catchall_d2

    throw v8

    .line 2709
    .restart local v7    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_d5
    const/4 v8, 0x0

    goto/16 :goto_2d

    .line 2754
    :cond_d8
    const/4 v1, 0x0

    .line 2756
    .local v1, "isActiveSecureElementPresent":Z
    const/4 v2, 0x0

    .line 2758
    .local v2, "isUiccSecureElementPresent":Z
    :try_start_da
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    const-string v9, "DH"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2e1

    .line 2759
    const/4 v1, 0x1

    .line 2774
    :cond_e5
    if-eqz v1, :cond_107

    .line 2775
    const-string v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mActiveSecureElement("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") present"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    :cond_107
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->isUiStateSupported()Z

    move-result v8

    if-eqz v8, :cond_492

    .line 2778
    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    iget v9, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    if-ne v8, v9, :cond_34b

    .line 2780
    iget v8, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    const/4 v9, 0x3

    if-lt v8, v9, :cond_129

    .line 2781
    const/4 v8, 0x2

    iput v8, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    .line 2782
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    .line 2783
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget v9, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    iget v10, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    invoke-interface {v8, v9, v10}, Lcom/android/nfc/DeviceHost;->updateHostPresence(II)V

    .line 2786
    :cond_129
    const-string v8, "NfcService"

    const-string v9, "Configure NFCC"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v8, :cond_13b

    .line 2790
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    iget-object v9, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setDefaultRoute(Ljava/lang/String;)V

    .line 2792
    :cond_13b
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v9, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/android/nfc/DeviceHost;->doSetDefaultRoute(Ljava/lang/String;)Z

    .line 2794
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v8, :cond_304

    iget-object v8, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    const-string v9, "DH"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15a

    if-eqz v1, :cond_15a

    iget-object v8, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v8}, Lcom/android/nfc/cardemulation/AidRoutingManager;->aidsRoutedToHost()Z

    move-result v8

    if-eqz v8, :cond_304

    .line 2798
    :cond_15a
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    if-eqz v8, :cond_160

    if-eqz p1, :cond_16f

    .line 2799
    :cond_160
    const-string v8, "NfcService"

    const-string v9, "NFC-HCE ON"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    .line 2801
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->enableRoutingToHost()V

    .line 2812
    :cond_16f
    :goto_16f
    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v8}, Lcom/android/nfc/NfcService;->checkCEScreenState(I)Z

    move-result v8

    if-eqz v8, :cond_32c

    iget-object v8, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    const-string v9, "DH"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_32c

    if-eqz v1, :cond_32c

    .line 2815
    if-nez p1, :cond_189

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    if-nez v8, :cond_1b0

    .line 2817
    :cond_189
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v9, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_320

    .line 2818
    const-string v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NFC-EE ON with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    .line 2835
    :cond_1b0
    :goto_1b0
    if-nez p1, :cond_1b6

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    if-nez v8, :cond_1c5

    .line 2836
    :cond_1b6
    const-string v8, "NfcService"

    const-string v9, "NFC-C ON"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->enableDiscovery()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 2840
    :cond_1c5
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v8, :cond_1fe

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-nez v8, :cond_1fe

    .line 2841
    const-string v8, "NfcService"

    const-string v9, "NFC-Reader Mode ON"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v9, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v9, v9, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    invoke-interface {v8, v9}, Lcom/android/nfc/DeviceHost;->enableReaderMode(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 2843
    const-string v9, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NFC-Reader Mode "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v8, :cond_343

    const-string v8, "ON"

    :goto_1f3
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    :cond_1fe
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-nez v8, :cond_22c

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v8, :cond_22c

    .line 2846
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->disableReaderMode()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 2847
    const-string v9, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NFC-Reader Mode "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v8, :cond_347

    const-string v8, "ON"

    :goto_221
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    :cond_22c
    :goto_22c
    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3f8

    .line 2880
    const/4 v3, 0x1

    .line 2881
    .local v3, "newHciUiState":I
    const/4 v4, 0x1

    .line 2890
    .local v4, "newNfccUiState":I
    :goto_233
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v8, :cond_405

    .line 2891
    const-string v8, "NfcService"

    const-string v9, "Provision Mode"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2893
    iput v3, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    .line 2894
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    .line 2895
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget v9, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    iget v10, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    invoke-interface {v8, v9, v10}, Lcom/android/nfc/DeviceHost;->updateHostPresence(II)V

    .line 2911
    :cond_24c
    :goto_24c
    iget v8, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    invoke-direct {p0, v8}, Lcom/android/nfc/NfcService;->checkCEScreenState(I)Z

    move-result v8

    if-eqz v8, :cond_258

    iget v8, p0, Lcom/android/nfc/NfcService;->mIsNfcDisabledReason:I

    if-nez v8, :cond_441

    :cond_258
    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v8}, Lcom/android/nfc/NfcService;->checkCEScreenState(I)Z

    move-result v8

    if-eqz v8, :cond_441

    .line 2914
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    const-string v9, "DH"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_297

    if-eqz v1, :cond_297

    .line 2916
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    if-nez v8, :cond_297

    .line 2917
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v9, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_431

    .line 2918
    const-string v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NFC-EE ON with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    .line 2927
    :cond_297
    :goto_297
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->enableDiscovery()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 2929
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v8, :cond_2d7

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-nez v8, :cond_2d7

    .line 2930
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v9, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v9, v9, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    invoke-interface {v8, v9}, Lcom/android/nfc/DeviceHost;->enableReaderMode(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 2931
    const-string v9, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NFC-Reader Mode "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v8, :cond_43d

    const-string v8, "ON"

    :goto_2c6
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " after discovery is re-enabled."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    :cond_2d7
    :goto_2d7
    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    iput v8, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I
    :try_end_2db
    .catchall {:try_start_da .. :try_end_2db} :catchall_31b

    .line 3027
    .end local v3    # "newHciUiState":I
    .end local v4    # "newNfccUiState":I
    :cond_2db
    :goto_2db
    :try_start_2db
    invoke-virtual {v7}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 3029
    monitor-exit p0
    :try_end_2df
    .catchall {:try_start_2db .. :try_end_2df} :catchall_d2

    goto/16 :goto_10

    .line 2761
    :cond_2e1
    :try_start_2e1
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()Ljava/lang/String;

    move-result-object v6

    .line 2762
    .local v6, "seListWithComma":Ljava/lang/String;
    if-eqz v6, :cond_e5

    .line 2763
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2764
    .local v5, "seList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f0
    if-eqz v5, :cond_e5

    array-length v8, v5

    if-ge v0, v8, :cond_e5

    .line 2766
    const/4 v2, 0x1

    .line 2768
    aget-object v8, v5, v0

    iget-object v9, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_301

    .line 2769
    const/4 v1, 0x1

    .line 2764
    :cond_301
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f0

    .line 2804
    .end local v0    # "i":I
    .end local v5    # "seList":[Ljava/lang/String;
    .end local v6    # "seListWithComma":Ljava/lang/String;
    :cond_304
    if-nez p1, :cond_30a

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    if-eqz v8, :cond_16f

    .line 2805
    :cond_30a
    const-string v8, "NfcService"

    const-string v9, "NFC-HCE OFF"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    .line 2807
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->disableRoutingToHost()V
    :try_end_319
    .catchall {:try_start_2e1 .. :try_end_319} :catchall_31b

    goto/16 :goto_16f

    .line 3027
    .end local v1    # "isActiveSecureElementPresent":Z
    .end local v2    # "isUiccSecureElementPresent":Z
    :catchall_31b
    move-exception v8

    :try_start_31c
    invoke-virtual {v7}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    throw v8
    :try_end_320
    .catchall {:try_start_31c .. :try_end_320} :catchall_d2

    .line 2822
    .restart local v1    # "isActiveSecureElementPresent":Z
    .restart local v2    # "isUiccSecureElementPresent":Z
    :cond_320
    :try_start_320
    const-string v8, "NfcService"

    const-string v9, "NFC-EE OFF: failed to select SE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    goto/16 :goto_1b0

    .line 2827
    :cond_32c
    if-nez p1, :cond_332

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    if-eqz v8, :cond_1b0

    .line 2828
    :cond_332
    const-string v8, "NfcService"

    const-string v9, "NFC-EE OFF"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    .line 2830
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement()V

    goto/16 :goto_1b0

    .line 2843
    :cond_343
    const-string v8, "OFF"

    goto/16 :goto_1f3

    .line 2847
    :cond_347
    const-string v8, "OFF"

    goto/16 :goto_221

    .line 2851
    :cond_34b
    iget v8, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    invoke-direct {p0, v8}, Lcom/android/nfc/NfcService;->checkCEScreenState(I)Z

    move-result v8

    if-eqz v8, :cond_3af

    iget v8, p0, Lcom/android/nfc/NfcService;->mIsNfcDisabledReason:I

    if-eqz v8, :cond_3af

    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v8}, Lcom/android/nfc/NfcService;->checkCEScreenState(I)Z

    move-result v8

    if-nez v8, :cond_3af

    .line 2854
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v8, :cond_38f

    .line 2855
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->disableReaderMode()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 2856
    const-string v9, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NFC-Reader Mode "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v8, :cond_3ac

    const-string v8, "ON"

    :goto_37e
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " before deactivate to IDLE"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    :cond_38f
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    if-eqz v8, :cond_3a2

    .line 2859
    const-string v8, "NfcService"

    const-string v9, "NFC-EE OFF"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2860
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    .line 2861
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement()V

    .line 2863
    :cond_3a2
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->disableDiscovery()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    goto/16 :goto_22c

    .line 2856
    :cond_3ac
    const-string v8, "OFF"

    goto :goto_37e

    .line 2865
    :cond_3af
    iget v8, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    const/4 v9, 0x4

    if-ge v8, v9, :cond_22c

    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_22c

    if-nez v2, :cond_22c

    .line 2868
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v8, :cond_3eb

    .line 2869
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->disableReaderMode()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 2870
    const-string v9, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NFC-Reader Mode "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v8, :cond_3f5

    const-string v8, "ON"

    :goto_3da
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " before deactivate to IDLE"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    :cond_3eb
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->disableDiscovery()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    goto/16 :goto_22c

    .line 2870
    :cond_3f5
    const-string v8, "OFF"

    goto :goto_3da

    .line 2882
    :cond_3f8
    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_401

    .line 2883
    const/4 v3, 0x2

    .line 2884
    .restart local v3    # "newHciUiState":I
    const/4 v4, 0x2

    .restart local v4    # "newNfccUiState":I
    goto/16 :goto_233

    .line 2886
    .end local v3    # "newHciUiState":I
    .end local v4    # "newNfccUiState":I
    :cond_401
    const/4 v3, 0x2

    .line 2887
    .restart local v3    # "newHciUiState":I
    const/4 v4, 0x0

    .restart local v4    # "newNfccUiState":I
    goto/16 :goto_233

    .line 2896
    :cond_405
    iget v8, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    if-ne v8, v3, :cond_40d

    iget v8, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    if-eq v8, v4, :cond_24c

    .line 2897
    :cond_40d
    const-string v8, "NfcService"

    const-string v9, "Update UI State"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    iput v3, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    .line 2899
    iput v4, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    .line 2900
    iget v8, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_421

    iget v8, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    if-nez v8, :cond_426

    .line 2903
    :cond_421
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->deactivateRfInterface()V

    .line 2905
    :cond_426
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget v9, p0, Lcom/android/nfc/NfcService;->mHciUiState:I

    iget v10, p0, Lcom/android/nfc/NfcService;->mNfccUiState:I

    invoke-interface {v8, v9, v10}, Lcom/android/nfc/DeviceHost;->updateHostPresence(II)V

    goto/16 :goto_24c

    .line 2922
    :cond_431
    const-string v8, "NfcService"

    const-string v9, "NFC-EE OFF: failed to select SE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    goto/16 :goto_297

    .line 2931
    :cond_43d
    const-string v8, "OFF"

    goto/16 :goto_2c6

    .line 2933
    :cond_441
    iget v8, p0, Lcom/android/nfc/NfcService;->mOldScreenState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2d7

    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v9, 0x4

    if-ge v8, v9, :cond_2d7

    if-nez v2, :cond_2d7

    .line 2936
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->enableDiscovery()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 2938
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v8, :cond_2d7

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-nez v8, :cond_2d7

    .line 2939
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v9, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v9, v9, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    invoke-interface {v8, v9}, Lcom/android/nfc/DeviceHost;->enableReaderMode(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 2940
    const-string v9, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NFC-Reader Mode "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v8, :cond_48f

    const-string v8, "ON"

    :goto_47c
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " after discovery is re-enabled."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d7

    :cond_48f
    const-string v8, "OFF"

    goto :goto_47c

    .line 2948
    .end local v3    # "newHciUiState":I
    .end local v4    # "newNfccUiState":I
    :cond_492
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v8, :cond_543

    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v9, 0x3

    if-gt v8, v9, :cond_543

    iget-object v8, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v8}, Lcom/android/nfc/cardemulation/AidRoutingManager;->aidsRoutedToHost()Z

    move-result v8

    if-eqz v8, :cond_543

    .line 2950
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    if-eqz v8, :cond_4a9

    if-eqz p1, :cond_4b1

    .line 2951
    :cond_4a9
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    .line 2952
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->enableRoutingToHost()V

    .line 2962
    :cond_4b1
    :goto_4b1
    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    iget v9, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    if-gt v8, v9, :cond_55e

    iget-object v8, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    const-string v9, "DH"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_55e

    .line 2964
    if-nez p1, :cond_4c7

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    if-nez v8, :cond_4f5

    .line 2965
    :cond_4c7
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v9, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/android/nfc/DeviceHost;->doSetDefaultRoute(Ljava/lang/String;)Z

    .line 2966
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v9, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_553

    .line 2967
    const-string v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NFC-EE ON with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2968
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    .line 2984
    :cond_4f5
    :goto_4f5
    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v9, 0x2

    if-gt v8, v9, :cond_574

    .line 2985
    if-nez p1, :cond_500

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    if-nez v8, :cond_50f

    .line 2986
    :cond_500
    const-string v8, "NfcService"

    const-string v9, "NFC-C ON"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->enableDiscovery()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 2991
    :cond_50f
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v8, :cond_52a

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-nez v8, :cond_52a

    .line 2993
    const-string v8, "NfcService"

    const-string v9, "NFC-Reader  Mode ON"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 2996
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    iget-object v9, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v9, v9, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    invoke-interface {v8, v9}, Lcom/android/nfc/DeviceHost;->enableReaderMode(I)Z

    .line 2998
    :cond_52a
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-nez v8, :cond_2db

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v8, :cond_2db

    .line 3000
    const-string v8, "NfcService"

    const-string v9, "NFC-Reader  Mode OFF"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 3003
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->disableReaderMode()Z

    goto/16 :goto_2db

    .line 2955
    :cond_543
    if-nez p1, :cond_549

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    if-eqz v8, :cond_4b1

    .line 2956
    :cond_549
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    .line 2957
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->disableRoutingToHost()V

    goto/16 :goto_4b1

    .line 2971
    :cond_553
    const-string v8, "NfcService"

    const-string v9, "NFC-EE OFF: failed to select SE"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    goto :goto_4f5

    .line 2976
    :cond_55e
    if-nez p1, :cond_564

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    if-eqz v8, :cond_4f5

    .line 2977
    :cond_564
    const-string v8, "NfcService"

    const-string v9, "NFC-EE OFF"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    .line 2979
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement()V

    goto :goto_4f5

    .line 3005
    :cond_574
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v8, :cond_592

    iget v8, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v9, 0x3

    if-gt v8, v9, :cond_592

    .line 3007
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    if-nez v8, :cond_2db

    .line 3008
    const-string v8, "NfcService"

    const-string v9, "NFC-C ON"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->enableDiscovery()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    goto/16 :goto_2db

    .line 3014
    :cond_592
    if-nez p1, :cond_598

    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    if-eqz v8, :cond_2db

    .line 3015
    :cond_598
    const-string v8, "NfcService"

    const-string v9, "NFC-C OFF"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v8, :cond_5ab

    .line 3017
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 3018
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->disableReaderMode()Z

    .line 3021
    :cond_5ab
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost;->disableDiscovery()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z
    :try_end_5b3
    .catchall {:try_start_320 .. :try_end_5b3} :catchall_31b

    goto/16 :goto_2db
.end method

.method checkScreenState()I
    .registers 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_a

    .line 771
    const/4 v0, 0x4

    .line 775
    :goto_9
    return v0

    .line 772
    :cond_a
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 773
    const/4 v0, 0x3

    goto :goto_9

    .line 775
    :cond_14
    const/4 v0, 0x2

    goto :goto_9
.end method

.method public commitRouting()V
    .registers 3

    .prologue
    .line 3159
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3160
    return-void
.end method

.method public createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .registers 4
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 3129
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .registers 12
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 3135
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/nfc/DeviceHost;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .registers 6
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 3123
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/nfc/DeviceHost;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    return-object v0
.end method

.method doDisconnect(I)V
    .registers 4
    .param p1, "handle"    # I

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 804
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doDisconnect(I)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 806
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 808
    return-void

    .line 806
    :catchall_10
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doOpenSecureElementConnection(I)I
    .registers 4
    .param p1, "nfceeId"    # I

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 782
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doOpenSecureElementConnection(I)I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    move-result v0

    .line 784
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return v0

    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceive(I[B)[B
    .registers 5
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 791
    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/NfcService;->doTransceiveNoLock(I[B)[B
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    move-result-object v0

    .line 793
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-object v0

    :catchall_f
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method doTransceiveNoLock(I[B)[B
    .registers 4
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4070
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3f

    .line 4072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump nfc from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " without permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4096
    :goto_3e
    return-void

    .line 4078
    :cond_3f
    monitor-enter p0

    .line 4079
    :try_start_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I

    invoke-static {v1}, Lcom/android/nfc/NfcService;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsZeroClickRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1}, Lcom/android/nfc/NfcService;->screenStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNfcPollingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNfceeRouteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirplaneSensitive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAirplaneToggleable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOpenEe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4087
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/P2pLinkManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4088
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_116

    .line 4089
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4091
    :cond_116
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfceeAccessControl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4092
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4093
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4095
    monitor-exit p0

    goto/16 :goto_3e

    :catchall_12c
    move-exception v0

    monitor-exit p0
    :try_end_12e
    .catchall {:try_start_40 .. :try_end_12e} :catchall_12c

    throw v0
.end method

.method public enforceNfceeAdminPerm(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 433
    if-nez p1, :cond_a

    .line 434
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller must pass a package name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_a
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NFC"

    const-string v2, "NFC permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfceeAccessControl;->check(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 438
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/etc/nfcee_access.xml denies NFCEE access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_38
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_46

    .line 442
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "only the owner is allowed to call SE APIs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_46
    return-void
.end method

.method findObject(I)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I

    .prologue
    .line 3099
    monitor-enter p0

    .line 3100
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3101
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_14

    .line 3102
    const-string v1, "NfcService"

    const-string v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3104
    :cond_14
    monitor-exit p0

    return-object v0

    .line 3105
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_16
    move-exception v1

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v1
.end method

.method initSoundPool()V
    .registers 5

    .prologue
    .line 726
    monitor-enter p0

    .line 727
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_38

    .line 728
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 729
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f040002

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    .line 730
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f040000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    .line 731
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f040001

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    .line 733
    :cond_38
    monitor-exit p0

    .line 734
    return-void

    .line 733
    :catchall_3a
    move-exception v0

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method isAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4035
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method isNfcEnabled()Z
    .registers 3

    .prologue
    .line 2637
    monitor-enter p0

    .line 2638
    :try_start_1
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    .line 2639
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method isNfcEnabledOrShuttingDown()Z
    .registers 3

    .prologue
    .line 2631
    monitor-enter p0

    .line 2632
    :try_start_1
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    :cond_b
    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 2633
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method maybeDisconnectTarget()V
    .registers 10

    .prologue
    .line 3067
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v8

    if-nez v8, :cond_7

    .line 3096
    :cond_6
    return-void

    .line 3071
    :cond_7
    monitor-enter p0

    .line 3072
    :try_start_8
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 3075
    .local v5, "objectValues":[Ljava/lang/Object;
    array-length v8, v5

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    .line 3076
    .local v6, "objectsToDisconnect":[Ljava/lang/Object;
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 3077
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_31

    .line 3078
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_20
    if-ge v2, v3, :cond_6

    aget-object v4, v0, v2

    .line 3080
    .local v4, "o":Ljava/lang/Object;
    instance-of v8, v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v8, :cond_34

    move-object v7, v4

    .line 3082
    check-cast v7, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3083
    .local v7, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-interface {v7}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 3078
    .end local v7    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_2e
    :goto_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 3077
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "o":Ljava/lang/Object;
    .end local v5    # "objectValues":[Ljava/lang/Object;
    .end local v6    # "objectsToDisconnect":[Ljava/lang/Object;
    :catchall_31
    move-exception v8

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v8

    .line 3084
    .restart local v0    # "arr$":[Ljava/lang/Object;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "o":Ljava/lang/Object;
    .restart local v5    # "objectValues":[Ljava/lang/Object;
    .restart local v6    # "objectsToDisconnect":[Ljava/lang/Object;
    :cond_34
    instance-of v8, v4, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    if-eqz v8, :cond_2e

    move-object v1, v4

    .line 3086
    check-cast v1, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 3087
    .local v1, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v8

    if-nez v8, :cond_2e

    .line 3089
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_2e
.end method

.method public onCardEmulationAidSelected([B)V
    .registers 3
    .param p1, "dataBuf"    # [B

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 482
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 484
    return-void
.end method

.method public onCardEmulationDeselected()V
    .registers 3

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 472
    :cond_4
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 474
    return-void
.end method

.method public onCardEmulationHciEvtConnectivity(I)V
    .registers 4
    .param p1, "slotId"    # I

    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 461
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x19

    iput v1, v0, Landroid/os/Message;->what:I

    .line 462
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 463
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 464
    return-void
.end method

.method public onHostCardEmulationActivated()V
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    if-eqz v0, :cond_9

    .line 492
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->notifyHostEmulationActivated()V

    .line 494
    :cond_9
    return-void
.end method

.method public onHostCardEmulationData([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    if-eqz v0, :cond_9

    .line 499
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->notifyHostEmulationData([B)V

    .line 501
    :cond_9
    return-void
.end method

.method public onHostCardEmulationDeactivated()V
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    if-eqz v0, :cond_9

    .line 506
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->notifyNostEmulationDeactivated()V

    .line 508
    :cond_9
    return-void
.end method

.method public onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 531
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 532
    return-void
.end method

.method public onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 515
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 516
    return-void
.end method

.method public onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 523
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 524
    return-void
.end method

.method public onNfccInit([B)V
    .registers 3
    .param p1, "nfccinfo"    # [B

    .prologue
    .line 585
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->nfcc_info:[B

    .line 586
    return-void
.end method

.method public onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .registers 3
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 452
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 453
    return-void
.end method

.method public onRemoteFieldActivated()V
    .registers 3

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 537
    :cond_4
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 539
    return-void
.end method

.method public onRemoteFieldDeactivated()V
    .registers 3

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 544
    :cond_4
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 546
    return-void
.end method

.method public onSeApduReceived([B)V
    .registers 3
    .param p1, "apdu"    # [B

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 566
    :cond_4
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 568
    return-void
.end method

.method public onSeEmvCardRemoval()V
    .registers 3

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 573
    :cond_4
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 575
    return-void
.end method

.method public onSeListenActivated()V
    .registers 3

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 551
    :cond_4
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 553
    return-void
.end method

.method public onSeListenDeactivated()V
    .registers 3

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 558
    :cond_4
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 560
    return-void
.end method

.method public onSeMifareAccess([B)V
    .registers 3
    .param p1, "block"    # [B

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 580
    :cond_4
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 582
    return-void
.end method

.method public onUpdateHostCallBack()V
    .registers 2

    .prologue
    .line 3035
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenOffCmdWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3037
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenOffCmdWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3039
    :cond_d
    return-void
.end method

.method public playSound(I)V
    .registers 9
    .param p1, "sound"    # I

    .prologue
    .line 1197
    monitor-enter p0

    .line 1198
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_e

    .line 1199
    const-string v0, "NfcService"

    const-string v1, "Not playing sound when NFC is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    monitor-exit p0

    .line 1219
    :goto_d
    return-void

    .line 1202
    :cond_e
    packed-switch p1, :pswitch_data_46

    .line 1218
    :goto_11
    monitor-exit p0

    goto :goto_d

    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0

    .line 1204
    :pswitch_16
    :try_start_16
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_11

    .line 1207
    :pswitch_26
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_11

    .line 1210
    :pswitch_36
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_13

    goto :goto_11

    .line 1202
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_16
        :pswitch_26
        :pswitch_36
    .end packed-switch
.end method

.method registerForAirplaneMode(Landroid/content/IntentFilter;)V
    .registers 6
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 746
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "airplaneModeRadios":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 751
    .local v1, "toggleableRadios":Ljava/lang/String;
    if-nez v0, :cond_24

    const/4 v2, 0x1

    :goto_13
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    .line 753
    if-nez v1, :cond_2b

    const/4 v2, 0x0

    :goto_18
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneToggleable:Z

    .line 756
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsAirplaneSensitive:Z

    if-eqz v2, :cond_23

    .line 757
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 759
    :cond_23
    return-void

    .line 751
    :cond_24
    const-string v2, "nfc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_13

    .line 753
    :cond_2b
    const-string v2, "nfc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_18
.end method

.method registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .registers 4
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 3109
    monitor-enter p0

    .line 3110
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3111
    monitor-exit p0

    .line 3112
    return-void

    .line 3111
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_10

    throw v0
.end method

.method releaseSoundPool()V
    .registers 2

    .prologue
    .line 737
    monitor-enter p0

    .line 738
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_d

    .line 739
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 742
    :cond_d
    monitor-exit p0

    .line 743
    return-void

    .line 742
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public routeAids(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .prologue
    .line 3143
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3144
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3145
    const-string v1, "DH"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3146
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3150
    :goto_15
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3151
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3152
    return-void

    .line 3148
    :cond_1d
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, p2}, Lcom/android/nfc/DeviceHost;->doGetNfceeId(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_15
.end method

.method saveNfcOnSetting(Z)V
    .registers 4
    .param p1, "on"    # Z

    .prologue
    .line 1190
    monitor-enter p0

    .line 1191
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "nfc_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1192
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1193
    monitor-exit p0

    .line 1194
    return-void

    .line 1193
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public sendData([B)Z
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 3173
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->sendRawFrame([B)Z

    move-result v0

    return v0
.end method

.method sendMessage(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3177
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3178
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 3179
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3180
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3181
    return-void
.end method

.method public sendMockNdefTag(Landroid/nfc/NdefMessage;)V
    .registers 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 3139
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 3140
    return-void
.end method

.method unregisterObject(I)V
    .registers 4
    .param p1, "handle"    # I

    .prologue
    .line 3115
    monitor-enter p0

    .line 3116
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3117
    monitor-exit p0

    .line 3118
    return-void

    .line 3117
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public unrouteAids(Ljava/lang/String;)V
    .registers 3
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 3155
    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 3156
    return-void
.end method

.method updatePackageCache()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 762
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 763
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v3, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v0

    .line 764
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    monitor-enter p0

    .line 765
    :try_start_c
    iput-object v0, p0, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;

    .line 766
    monitor-exit p0

    .line 767
    return-void

    .line 766
    :catchall_10
    move-exception v2

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v2
.end method
