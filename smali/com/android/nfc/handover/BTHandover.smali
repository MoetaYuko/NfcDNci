.class public Lcom/android/nfc/handover/BTHandover;
.super Lcom/android/nfc/handover/Handover;
.source "BTHandover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/BTHandover$BtConnectTimerOutTask;
    }
.end annotation


# static fields
.field static final CONNECT_TIME_OUT:J = 0x4e20L

.field static final DBG:Z = true

.field static final FAILED_ACCEPT_TIME_OUT:I = 0x7d0

.field static final TAG:Ljava/lang/String; = "BTHandover"


# instance fields
.field private connectTotalTimer:Ljava/util/Timer;

.field protected isPairing:Z

.field protected isSetScanMode:Z

.field final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBound:Z

.field private mBroadcastRegister:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field mContext:Landroid/content/Context;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

.field final mLock:Ljava/lang/Object;

.field mService:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverManager"    # Lcom/android/nfc/handover/HandoverManager;

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0}, Lcom/android/nfc/handover/Handover;-><init>()V

    .line 52
    iput-object v3, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 65
    iput-object v3, p0, Lcom/android/nfc/handover/BTHandover;->mService:Landroid/os/Messenger;

    .line 67
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mLock:Ljava/lang/Object;

    .line 94
    new-instance v1, Lcom/android/nfc/handover/BTHandover$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/BTHandover$1;-><init>(Lcom/android/nfc/handover/BTHandover;)V

    iput-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mConnection:Landroid/content/ServiceConnection;

    .line 429
    new-instance v1, Lcom/android/nfc/handover/BTHandover$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/BTHandover$2;-><init>(Lcom/android/nfc/handover/BTHandover;)V

    iput-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    const-string v1, "BTHandover"

    const-string v2, "Enter BtHandover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object p1, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 83
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-object v2, v2, Lcom/android/nfc/handover/HandoverManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 88
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/nfc/handover/HandoverService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/android/nfc/handover/BTHandover;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 91
    const-string v1, "BTHandover"

    const-string v2, "Leave BtHandover"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/BTHandover;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/BTHandover;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/nfc/handover/BTHandover;->startConnectTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/BTHandover;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/nfc/handover/BTHandover;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/nfc/handover/BTHandover;->recoveryAfterFastConUsingNfc()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/nfc/handover/BTHandover;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/BTHandover;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/BTHandover;->stopConnect(I)V

    return-void
.end method

.method private recoveryAfterFastConUsingNfc()V
    .registers 1

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/nfc/handover/BTHandover;->fastConComplete()V

    .line 545
    invoke-virtual {p0}, Lcom/android/nfc/handover/BTHandover;->clearNfcFastConWhiteList()V

    .line 546
    invoke-direct {p0}, Lcom/android/nfc/handover/BTHandover;->stopConnectTimer()V

    .line 547
    return-void
.end method

.method private startConnectTimer()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 490
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/BTHandover;->isPairing:Z

    .line 491
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_f

    .line 492
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 493
    iput-object v2, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 495
    :cond_f
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 496
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/nfc/handover/BTHandover$BtConnectTimerOutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/handover/BTHandover$BtConnectTimerOutTask;-><init>(Lcom/android/nfc/handover/BTHandover;Lcom/android/nfc/handover/BTHandover$1;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 497
    return-void
.end method

.method private stopConnect(I)V
    .registers 4
    .param p1, "reason"    # I

    .prologue
    .line 533
    const-string v0, "BTHandover"

    const-string v1, "stopBTConnect timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_e

    .line 535
    invoke-direct {p0}, Lcom/android/nfc/handover/BTHandover;->recoveryAfterFastConUsingNfc()V

    .line 537
    :cond_e
    return-void
.end method

.method private stopConnectTimer()V
    .registers 3

    .prologue
    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/BTHandover;->isPairing:Z

    .line 507
    const-string v0, "BTHandover"

    const-string v1, "stopConnectTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_16

    .line 509
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BTHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 512
    :cond_16
    return-void
.end method


# virtual methods
.method addNfcFastConWhiteList(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_9

    .line 589
    :try_start_4
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, p1}, Lcom/huawei/android/bluetooth/NfcBluetoothDeviceEx;->addNfcPairingWhiteList(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_4 .. :try_end_9} :catch_a

    .line 594
    :cond_9
    :goto_9
    return-void

    .line 590
    :catch_a
    move-exception v0

    .line 591
    .local v0, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public btFastConBroadcastRegister()V
    .registers 4

    .prologue
    .line 176
    const-string v1, "BTHandover"

    const-string v2, "Enter btFastConBroadcastRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-boolean v1, p0, Lcom/android/nfc/handover/BTHandover;->mBroadcastRegister:Z

    if-nez v1, :cond_2e

    .line 178
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/handover/BTHandover;->mBroadcastRegister:Z

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover;->mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2e
    const-string v1, "BTHandover"

    const-string v2, "leave btFastConBroadcastRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method clearNfcFastConWhiteList()V
    .registers 3

    .prologue
    .line 572
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_9

    .line 574
    :try_start_4
    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/huawei/android/bluetooth/NfcBluetoothDeviceEx;->clearNfcPairingWhiteList(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_9
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_4 .. :try_end_9} :catch_a

    .line 579
    :cond_9
    :goto_9
    return-void

    .line 575
    :catch_a
    move-exception v0

    .line 576
    .local v0, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public createDataRecord()Landroid/nfc/NdefRecord;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverManager;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method public createFastConDataRecord()Landroid/nfc/NdefRecord;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverManager;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method public disableDevice()Z
    .registers 3

    .prologue
    .line 303
    const-string v0, "BTHandover"

    const-string v1, "disableDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method public doFastConHandover(Landroid/nfc/NdefMessage;)V
    .registers 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 411
    const-string v2, "BTHandover"

    const-string v3, "Enter doFastConHandover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_c

    .line 421
    :goto_b
    return-void

    .line 414
    :cond_c
    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v2, p1}, Lcom/android/nfc/handover/HandoverManager;->parse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v0

    .line 415
    .local v0, "data":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    if-eqz v0, :cond_2a

    iget-boolean v2, v0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    if-eqz v2, :cond_2a

    .line 416
    new-instance v1, Lcom/android/nfc/handover/BluetoothFastConHandover;

    iget-object v2, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Lcom/android/nfc/handover/Handover;->getHandoverManager()Lcom/android/nfc/handover/HandoverManager;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->carrierActivating:Z

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/nfc/handover/BluetoothFastConHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/android/nfc/handover/HandoverManager;Z)V

    .line 417
    .local v1, "handover":Lcom/android/nfc/handover/BluetoothFastConHandover;
    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothFastConHandover;->start()V

    .line 420
    .end local v1    # "handover":Lcom/android/nfc/handover/BluetoothFastConHandover;
    :cond_2a
    const-string v2, "BTHandover"

    const-string v3, "Leave doFastConHandover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b
.end method

.method public doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V
    .registers 13
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 208
    const-string v5, "BTHandover"

    const-string v6, "Enter doHandoverUri"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v5, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v5, :cond_c

    .line 234
    :goto_b
    return-void

    .line 211
    :cond_c
    iget-object v5, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v5, p2}, Lcom/android/nfc/handover/HandoverManager;->parse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v0

    .line 212
    .local v0, "data":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    if-eqz v0, :cond_52

    iget-boolean v5, v0, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    if-eqz v5, :cond_52

    .line 214
    iget-object v6, p0, Lcom/android/nfc/handover/BTHandover;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 215
    :try_start_1b
    iget-boolean v5, p0, Lcom/android/nfc/handover/BTHandover;->mBound:Z

    if-nez v5, :cond_2b

    .line 216
    const-string v5, "BTHandover"

    const-string v7, "Could not connect to handover service"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    monitor-exit v6

    goto :goto_b

    .line 230
    :catchall_28
    move-exception v5

    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    throw v5

    .line 219
    :cond_2b
    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2f
    invoke-static {v5, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 220
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v5, v0, p1}, Lcom/android/nfc/handover/HandoverManager;->registerOutTransferLocked(Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;[Landroid/net/Uri;)Lcom/android/nfc/handover/PendingHandoverTransfer;

    move-result-object v3

    .line 221
    .local v3, "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v4, "transferData":Landroid/os/Bundle;
    const-string v5, "transfer"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 223
    const-string v5, "isHwBeam"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_28

    .line 226
    :try_start_4c
    iget-object v5, p0, Lcom/android/nfc/handover/BTHandover;->mService:Landroid/os/Messenger;

    invoke-virtual {v5, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_51} :catch_5a
    .catchall {:try_start_4c .. :try_end_51} :catchall_28

    .line 230
    :goto_51
    :try_start_51
    monitor-exit v6
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_28

    .line 233
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    .end local v4    # "transferData":Landroid/os/Bundle;
    :cond_52
    const-string v5, "BTHandover"

    const-string v6, "Leave doHandoverUri"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 227
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    .restart local v4    # "transferData":Landroid/os/Bundle;
    :catch_5a
    move-exception v1

    .line 228
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_5b
    iget-object v5, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget v7, v3, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-virtual {v5, v7}, Lcom/android/nfc/handover/HandoverManager;->removeTransferLocked(I)V
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_28

    goto :goto_51
.end method

.method fastConComplete()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 556
    iget-boolean v0, p0, Lcom/android/nfc/handover/BTHandover;->isSetScanMode:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_12

    .line 557
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 558
    iput-boolean v2, p0, Lcom/android/nfc/handover/BTHandover;->isSetScanMode:Z

    .line 561
    :cond_12
    iget-boolean v0, p0, Lcom/android/nfc/handover/BTHandover;->mBroadcastRegister:Z

    if-eqz v0, :cond_1f

    .line 562
    iput-boolean v2, p0, Lcom/android/nfc/handover/BTHandover;->mBroadcastRegister:Z

    .line 563
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/BTHandover;->mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 565
    :cond_1f
    return-void
.end method

.method public isDeviceEnabled()Z
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isHandoverSupported()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 320
    const-string v3, "BTHandover"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isHandoverSupported bt:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_24

    move v0, v1

    :goto_14
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_26

    :goto_23
    return v1

    :cond_24
    move v0, v2

    .line 320
    goto :goto_14

    :cond_26
    move v1, v2

    .line 321
    goto :goto_23
.end method

.method public tryFastConHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 13
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/16 v10, 0x17

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 342
    iput-boolean v9, p0, Lcom/android/nfc/handover/BTHandover;->isPairing:Z

    .line 343
    if-nez p1, :cond_10

    .line 345
    const-string v7, "BTHandover"

    const-string v8, "tryFastConHandoverRequest message is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :goto_f
    return-object v6

    .line 348
    :cond_10
    iget-object v7, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v7, :cond_1c

    .line 350
    const-string v7, "BTHandover"

    const-string v8, "tryFastConHandoverRequest bluetoothadapter is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 354
    :cond_1c
    const-string v7, "BTHandover"

    const-string v8, "Enter tryFastConHandoverRequest()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v2, 0x0

    .line 356
    .local v2, "bluetoothData":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    const/4 v1, 0x0

    .line 357
    .local v1, "bluetoothActivating":Z
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    .local v0, "arr$":[Landroid/nfc/NdefRecord;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2b
    if-ge v3, v4, :cond_50

    aget-object v5, v0, v3

    .line 358
    .local v5, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5a

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    sget-object v8, Lcom/android/nfc/handover/HandoverManager;->TYPE_BT_OOB:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 359
    iget-object v7, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v5}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/nfc/handover/HandoverManager;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v2

    .line 363
    .end local v5    # "oob":Landroid/nfc/NdefRecord;
    :cond_50
    if-nez v2, :cond_5d

    .line 364
    const-string v7, "BTHandover"

    const-string v8, "bluetoothHandoverData is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 357
    .restart local v5    # "oob":Landroid/nfc/NdefRecord;
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 367
    .end local v5    # "oob":Landroid/nfc/NdefRecord;
    :cond_5d
    invoke-virtual {p0}, Lcom/android/nfc/handover/BTHandover;->btFastConBroadcastRegister()V

    .line 368
    iget-object v7, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    monitor-enter v7

    .line 369
    :try_start_63
    invoke-virtual {p0}, Lcom/android/nfc/handover/BTHandover;->isDeviceEnabled()Z

    move-result v8

    if-nez v8, :cond_c6

    .line 370
    iget-object v8, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v8

    if-nez v8, :cond_7d

    .line 372
    const-string v8, "BTHandover"

    const-string v9, "bt enable fail "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    monitor-exit v7

    goto :goto_f

    .line 384
    :catchall_7a
    move-exception v6

    monitor-exit v7
    :try_end_7c
    .catchall {:try_start_63 .. :try_end_7c} :catchall_7a

    throw v6

    .line 375
    :cond_7d
    const/4 v1, 0x1

    .line 384
    :cond_7e
    :goto_7e
    :try_start_7e
    monitor-exit v7
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7a

    .line 387
    iget-object v6, v2, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v6, :cond_a7

    iget-object v6, v2, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a7

    .line 391
    iget-object v6, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v7, v2, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iput-object v6, p0, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 392
    if-eq v1, v9, :cond_a7

    .line 393
    iget-object v6, p0, Lcom/android/nfc/handover/BTHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/nfc/handover/BTHandover;->addNfcFastConWhiteList(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/android/nfc/handover/BTHandover;->startConnectTimer()V

    .line 398
    :cond_a7
    const-string v6, "BTHandover"

    const-string v7, "Leave tryFastConHandoverRequest"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v6, Landroid/nfc/NdefMessage;

    iget-object v7, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v7, v1}, Lcom/android/nfc/handover/HandoverManager;->createHandoverSelectRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v7

    new-array v8, v9, [Landroid/nfc/NdefRecord;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v10}, Lcom/android/nfc/handover/HandoverManager;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v6, v7, v8}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto/16 :goto_f

    .line 378
    :cond_c6
    :try_start_c6
    iget-object v6, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v6

    if-eq v6, v10, :cond_7e

    .line 379
    iget-object v6, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v8, 0x17

    invoke-virtual {v6, v8}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 380
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/nfc/handover/BTHandover;->isSetScanMode:Z
    :try_end_d8
    .catchall {:try_start_c6 .. :try_end_d8} :catchall_7a

    goto :goto_7e
.end method

.method public tryHandover(Landroid/nfc/NdefMessage;)Z
    .registers 13
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    if-nez p1, :cond_5

    .line 166
    :cond_4
    :goto_4
    return v4

    .line 132
    :cond_5
    iget-object v6, p0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v6, :cond_4

    .line 134
    const-string v6, "BTHandover"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tryHandover(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v6, p0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v6, p1}, Lcom/android/nfc/handover/HandoverManager;->parse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v1

    .line 137
    .local v1, "handover":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    if-eqz v1, :cond_4

    .line 138
    iget-boolean v6, v1, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->valid:Z

    if-nez v6, :cond_33

    move v4, v5

    goto :goto_4

    .line 140
    :cond_33
    iget-object v6, p0, Lcom/android/nfc/handover/BTHandover;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 150
    :try_start_36
    iget-boolean v7, p0, Lcom/android/nfc/handover/BTHandover;->mBound:Z

    if-nez v7, :cond_46

    .line 151
    const-string v5, "BTHandover"

    const-string v7, "Could not connect to handover service"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    monitor-exit v6

    goto :goto_4

    .line 165
    :catchall_43
    move-exception v4

    monitor-exit v6
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_43

    throw v4

    .line 155
    :cond_46
    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_4a
    invoke-static {v7, v8, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    .line 156
    .local v3, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v2, "headsetData":Landroid/os/Bundle;
    const-string v7, "device"

    iget-object v8, v1, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 158
    const-string v7, "headsetname"

    iget-object v8, v1, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_64
    .catchall {:try_start_4a .. :try_end_64} :catchall_43

    .line 161
    :try_start_64
    iget-object v7, p0, Lcom/android/nfc/handover/BTHandover;->mService:Landroid/os/Messenger;

    invoke-virtual {v7, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_69} :catch_6c
    .catchall {:try_start_64 .. :try_end_69} :catchall_43

    .line 165
    :try_start_69
    monitor-exit v6

    move v4, v5

    .line 166
    goto :goto_4

    .line 162
    :catch_6c
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    monitor-exit v6
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_43

    goto :goto_4
.end method

.method public tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 19
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 245
    if-nez p1, :cond_4

    const/4 v12, 0x0

    .line 295
    :goto_3
    return-object v12

    .line 246
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v12, :cond_c

    const/4 v12, 0x0

    goto :goto_3

    .line 248
    :cond_c
    const-string v12, "BTHandover"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "tryHandoverRequest():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v9, v12, v13

    .line 251
    .local v9, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_38

    const/4 v12, 0x0

    goto :goto_3

    .line 252
    :cond_38
    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v12

    sget-object v13, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-nez v12, :cond_46

    const/4 v12, 0x0

    goto :goto_3

    .line 255
    :cond_46
    const/4 v3, 0x0

    .line 256
    .local v3, "bluetoothData":Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .local v1, "arr$":[Landroid/nfc/NdefRecord;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_4d
    if-ge v5, v6, :cond_74

    aget-object v8, v1, v5

    .line 257
    .local v8, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v8}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_78

    invoke-virtual {v8}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v12

    sget-object v13, Lcom/android/nfc/handover/HandoverManager;->TYPE_BT_OOB:[B

    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_78

    .line 259
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v8}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v13

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/nfc/handover/HandoverManager;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;

    move-result-object v3

    .line 263
    .end local v8    # "oob":Landroid/nfc/NdefRecord;
    :cond_74
    if-nez v3, :cond_7b

    const/4 v12, 0x0

    goto :goto_3

    .line 256
    .restart local v8    # "oob":Landroid/nfc/NdefRecord;
    :cond_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 272
    .end local v8    # "oob":Landroid/nfc/NdefRecord;
    :cond_7b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/BTHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_9f

    const/4 v2, 0x1

    .line 273
    .local v2, "bluetoothActivating":Z
    :goto_86
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/BTHandover;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 274
    :try_start_8b
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/nfc/handover/BTHandover;->mBound:Z

    if-nez v12, :cond_a1

    .line 275
    const-string v12, "BTHandover"

    const-string v14, "Could not connect to handover service"

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v12, 0x0

    monitor-exit v13

    goto/16 :goto_3

    .line 291
    :catchall_9c
    move-exception v12

    monitor-exit v13
    :try_end_9e
    .catchall {:try_start_8b .. :try_end_9e} :catchall_9c

    throw v12

    .line 272
    .end local v2    # "bluetoothActivating":Z
    :cond_9f
    const/4 v2, 0x0

    goto :goto_86

    .line 278
    .restart local v2    # "bluetoothActivating":Z
    :cond_a1
    const/4 v12, 0x0

    const/4 v14, 0x2

    :try_start_a3
    invoke-static {v12, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 279
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-object v14, v3, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v12, v14}, Lcom/android/nfc/handover/HandoverManager;->registerInTransferLocked(Landroid/bluetooth/BluetoothDevice;)Lcom/android/nfc/handover/PendingHandoverTransfer;

    move-result-object v10

    .line 280
    .local v10, "transfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v11, "transferData":Landroid/os/Bundle;
    const-string v12, "transfer"

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 282
    const-string v12, "isHwBeam"

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    invoke-virtual {v7, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_c4
    .catchall {:try_start_a3 .. :try_end_c4} :catchall_9c

    .line 285
    :try_start_c4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/BTHandover;->mService:Landroid/os/Messenger;

    invoke-virtual {v12, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_cb} :catch_f4
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_9c

    .line 291
    :try_start_cb
    monitor-exit v13
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_9c

    .line 293
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget-object v13, v3, Lcom/android/nfc/handover/HandoverManager$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v12, v13}, Lcom/android/nfc/handover/HandoverManager;->whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 295
    new-instance v12, Landroid/nfc/NdefMessage;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    invoke-virtual {v13, v2}, Lcom/android/nfc/handover/HandoverManager;->createHandoverSelectRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/nfc/NdefRecord;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/nfc/handover/HandoverManager;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-direct {v12, v13, v14}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    goto/16 :goto_3

    .line 286
    :catch_f4
    move-exception v4

    .line 287
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_f5
    const-string v12, "BTHandover"

    const-string v14, "Could not connect to handover service"

    invoke-static {v12, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/BTHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    iget v14, v10, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-virtual {v12, v14}, Lcom/android/nfc/handover/HandoverManager;->removeTransferLocked(I)V

    .line 289
    const/4 v12, 0x0

    monitor-exit v13
    :try_end_107
    .catchall {:try_start_f5 .. :try_end_107} :catchall_9c

    goto/16 :goto_3
.end method
