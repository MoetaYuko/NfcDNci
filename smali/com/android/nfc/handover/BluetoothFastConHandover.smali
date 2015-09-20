.class public Lcom/android/nfc/handover/BluetoothFastConHandover;
.super Ljava/lang/Object;
.source "BluetoothFastConHandover.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/BluetoothFastConHandover$BtConnectTimerOutTask;
    }
.end annotation


# static fields
.field static final CONNECT_TIME_OUT:J = 0x4e20L

.field static final DBG:Z = true

.field static final FAILED_CONNECT_TIME_OUT:I = 0x7d0

.field static final MSG_FASTCON_REPEAT_SEND:I = 0x7d1

.field static final MSG_FASTCON_SEND:I = 0x7d0

.field static final REMOTE_BT_FASTCON_ENABLE_DELAY_MS:I = 0xbb8

.field static final STATE_COMPLETE:I = 0x3

.field static final STATE_INIT:I = 0x0

.field static final STATE_TURNING_ON:I = 0x1

.field static final STATE_WAITING:I = 0x2

.field static final TAG:Ljava/lang/String; = "BluetoohFastConHandover"


# instance fields
.field private connectTotalTimer:Ljava/util/Timer;

.field private isPairing:Z

.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBroadcastRegister:Z

.field final mContext:Landroid/content/Context;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

.field mStateBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/android/nfc/handover/HandoverManager;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "manager"    # Lcom/android/nfc/handover/HandoverManager;
    .param p4, "remoteActivating"    # Z

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 231
    new-instance v0, Lcom/android/nfc/handover/BluetoothFastConHandover$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/BluetoothFastConHandover$1;-><init>(Lcom/android/nfc/handover/BluetoothFastConHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 330
    new-instance v0, Lcom/android/nfc/handover/BluetoothFastConHandover$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/BluetoothFastConHandover$2;-><init>(Lcom/android/nfc/handover/BluetoothFastConHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

    .line 93
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 98
    iput-object p3, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 103
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 104
    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/handover/BluetoothFastConHandover;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/nfc/handover/BluetoothFastConHandover;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/BluetoothFastConHandover;->stopConnect(I)V

    return-void
.end method

.method private recoveryAfterFastConUsingNfc()V
    .registers 1

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->fastConComplete()V

    .line 478
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->clearNfcFastConWhiteList()V

    .line 479
    invoke-direct {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->stopConnectTimer()V

    .line 480
    return-void
.end method

.method private startConnectTimer()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->isPairing:Z

    .line 414
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_f

    .line 415
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 416
    iput-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 418
    :cond_f
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 419
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/nfc/handover/BluetoothFastConHandover$BtConnectTimerOutTask;

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/handover/BluetoothFastConHandover$BtConnectTimerOutTask;-><init>(Lcom/android/nfc/handover/BluetoothFastConHandover;Lcom/android/nfc/handover/BluetoothFastConHandover$1;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 420
    return-void
.end method

.method private stopConnect(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    const/16 v2, 0x7d0

    .line 464
    const-string v0, "BluetoohFastConHandover"

    const-string v1, "stopBTConnect timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-ne p1, v2, :cond_11

    .line 466
    invoke-direct {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->recoveryAfterFastConUsingNfc()V

    .line 467
    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConResult(I)V

    .line 470
    :cond_11
    return-void
.end method

.method private stopConnectTimer()V
    .registers 3

    .prologue
    .line 428
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->isPairing:Z

    .line 430
    const-string v0, "BluetoohFastConHandover"

    const-string v1, "stopConnectTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_16

    .line 432
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 433
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->connectTotalTimer:Ljava/util/Timer;

    .line 435
    :cond_16
    return-void
.end method


# virtual methods
.method addNfcFastConWhiteList(Ljava/lang/String;)V
    .registers 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_9

    .line 386
    :try_start_4
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, p1}, Lcom/huawei/android/bluetooth/NfcBluetoothDeviceEx;->addNfcPairingWhiteList(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_4 .. :try_end_9} :catch_a

    .line 391
    :cond_9
    :goto_9
    return-void

    .line 387
    :catch_a
    move-exception v0

    .line 388
    .local v0, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method public btFastConBroadcastRegister()V
    .registers 4

    .prologue
    .line 148
    const-string v1, "BluetoohFastConHandover"

    const-string v2, "Enter btFastConBroadcastRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    const-string v1, "BluetoohFastConHandover"

    const-string v2, "leave btFastConBroadcastRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public btStateBroadcastRegister()V
    .registers 4

    .prologue
    .line 138
    const-string v1, "BluetoohFastConHandover"

    const-string v2, "Enter btStateBroadcastRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    const-string v1, "BluetoohFastConHandover"

    const-string v2, "leave btStateBroadcastRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method clearNfcFastConWhiteList()V
    .registers 3

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_9

    .line 400
    :try_start_4
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/huawei/android/bluetooth/NfcBluetoothDeviceEx;->clearNfcPairingWhiteList(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_9
    .catch Lcom/huawei/android/util/NoExtAPIException; {:try_start_4 .. :try_end_9} :catch_a

    .line 405
    :cond_9
    :goto_9
    return-void

    .line 401
    :catch_a
    move-exception v0

    .line 402
    .local v0, "e":Lcom/huawei/android/util/NoExtAPIException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9
.end method

.method fastConComplete()V
    .registers 3

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBroadcastRegister:Z

    if-eqz v0, :cond_15

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBroadcastRegister:Z

    .line 125
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mFastConBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mStateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    :cond_15
    return-void
.end method

.method handleFastConIntent(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 283
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_22

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 285
    :cond_22
    const-string v2, "BluetoohFastConHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mDevice:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_46
    :goto_46
    return-void

    .line 289
    :cond_47
    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 290
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v2

    if-eqz v2, :cond_46

    iget-boolean v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->isPairing:Z

    if-eqz v2, :cond_46

    .line 291
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 293
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConnectIntent()V

    goto :goto_46

    .line 296
    :cond_64
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 297
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    packed-switch v2, :pswitch_data_a6

    .line 317
    const-string v2, "BluetoohFastConHandover"

    const-string v3, "stauts undefined"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 300
    :pswitch_7d
    const-string v2, "BluetoohFastConHandover"

    const-string v3, "BONDING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->startConnectTimer()V

    goto :goto_46

    .line 305
    :pswitch_88
    const-string v2, "BluetoohFastConHandover"

    const-string v3, "BONDED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->recoveryAfterFastConUsingNfc()V

    .line 307
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConResult(I)V

    goto :goto_46

    .line 311
    :pswitch_97
    const-string v2, "BluetoohFastConHandover"

    const-string v3, "NONE, retry clear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-direct {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->recoveryAfterFastConUsingNfc()V

    .line 313
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConResult(I)V

    goto :goto_46

    .line 297
    :pswitch_data_a6
    .packed-switch 0xa
        :pswitch_97
        :pswitch_7d
        :pswitch_88
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_12

    .line 110
    const-string v0, "BluetoohFastConHandover"

    const-string v1, "sendFastContentIntent for fast connection "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConnectIntent()V

    .line 112
    const/4 v0, 0x1

    .line 114
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isConnected(Ljava/lang/String;)Z
    .registers 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 360
    .local v2, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_57

    .line 361
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_57

    .line 362
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 363
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 365
    const-string v3, "BluetoohFastConHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "already connceted:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->recoveryAfterFastConUsingNfc()V

    .line 367
    const/4 v3, 0x1

    .line 372
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_56
    return v3

    :cond_57
    const/4 v3, 0x0

    goto :goto_56
.end method

.method sendFastConResult(I)V
    .registers 4
    .param p1, "result"    # I

    .prologue
    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->isPairing:Z

    .line 348
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/handover/HandoverManager;->sendFastConnectResult(II)V

    .line 349
    return-void
.end method

.method sendFastConnectIntent()V
    .registers 5

    .prologue
    .line 213
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothFastConHandover;->isConnected(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 215
    const-string v1, "BluetoohFastConHandover"

    const-string v2, "already connected sendFastConnectIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConResult(I)V

    .line 229
    :goto_17
    return-void

    .line 219
    :cond_18
    const-string v1, "BluetoohFastConHandover"

    const-string v2, "begin connect sendFastConnectIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothFastConHandover;->addNfcFastConWhiteList(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 225
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 227
    .local v0, "mBondStatus":Ljava/lang/Boolean;
    const-string v1, "BluetoohFastConHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBond reuslt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method start()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 159
    iput-boolean v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->isPairing:Z

    .line 163
    iget-boolean v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBroadcastRegister:Z

    if-nez v0, :cond_16

    .line 164
    const-string v0, "BluetoohFastConHandover"

    const-string v1, "broadcast register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput-boolean v2, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBroadcastRegister:Z

    .line 166
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->btFastConBroadcastRegister()V

    .line 167
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->btStateBroadcastRegister()V

    .line 170
    :cond_16
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 171
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 174
    const-string v0, "BluetoohFastConHandover"

    const-string v1, " fast connection bt enable success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_2f
    return-void

    .line 177
    :cond_30
    const-string v0, "BluetoohFastConHandover"

    const-string v1, "fast connection bt enable failture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->fastConComplete()V

    goto :goto_2f

    .line 194
    :cond_3b
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->isConnected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 196
    const-string v0, "BluetoohFastConHandover"

    const-string v1, "already connected start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothFastConHandover;->sendFastConResult(I)V

    goto :goto_2f

    .line 199
    :cond_53
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    goto :goto_2f
.end method
