.class public Lcom/android/nfc/handover/BluetoothHeadsetHandover;
.super Ljava/lang/Object;
.source "BluetoothHeadsetHandover.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/BluetoothHeadsetHandover$Callback;
    }
.end annotation


# static fields
.field static final ACTION_ALLOW_CONNECT:Ljava/lang/String; = "com.android.nfc.handover.action.ALLOW_CONNECT"

.field static final ACTION_CONNECT:I = 0x2

.field static final ACTION_DENY_CONNECT:Ljava/lang/String; = "com.android.nfc.handover.action.DENY_CONNECT"

.field static final ACTION_DISCONNECT:I = 0x1

.field static final ACTION_INIT:I = 0x0

.field static final DBG:Z = true

.field static final MSG_NEXT_STEP:I = 0x2

.field static final MSG_TIMEOUT:I = 0x1

.field static final RESULT_CONNECTED:I = 0x1

.field static final RESULT_DISCONNECTED:I = 0x2

.field static final RESULT_PENDING:I = 0x0

.field static final STATE_BONDING:I = 0x4

.field static final STATE_COMPLETE:I = 0x7

.field static final STATE_CONNECTING:I = 0x5

.field static final STATE_DISCONNECTING:I = 0x6

.field static final STATE_INIT:I = 0x0

.field static final STATE_INIT_COMPLETE:I = 0x2

.field static final STATE_WAITING_FOR_BOND_CONFIRMATION:I = 0x3

.field static final STATE_WAITING_FOR_PROXIES:I = 0x1

.field static final TAG:Ljava/lang/String; = "NfcHandover"

.field static final TIMEOUT_MS:I = 0x7530


# instance fields
.field mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field mA2dpResult:I

.field mAction:I

.field final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final mCallback:Lcom/android/nfc/handover/BluetoothHeadsetHandover$Callback;

.field final mContext:Landroid/content/Context;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mHandler:Landroid/os/Handler;

.field mHeadset:Landroid/bluetooth/BluetoothHeadset;

.field mHfpResult:I

.field final mLock:Ljava/lang/Object;

.field final mName:Ljava/lang/String;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/nfc/handover/BluetoothHeadsetHandover$Callback;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/nfc/handover/BluetoothHeadsetHandover$Callback;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mLock:Ljava/lang/Object;

    .line 417
    new-instance v0, Lcom/android/nfc/handover/BluetoothHeadsetHandover$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover$1;-><init>(Lcom/android/nfc/handover/BluetoothHeadsetHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHandler:Landroid/os/Handler;

    .line 438
    new-instance v0, Lcom/android/nfc/handover/BluetoothHeadsetHandover$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover$2;-><init>(Lcom/android/nfc/handover/BluetoothHeadsetHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    invoke-static {}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->checkMainThread()V

    .line 105
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 107
    iput-object p3, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mName:Ljava/lang/String;

    .line 108
    iput-object p4, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mCallback:Lcom/android/nfc/handover/BluetoothHeadsetHandover$Callback;

    .line 109
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    .line 112
    return-void
.end method

.method static checkMainThread()V
    .registers 2

    .prologue
    .line 446
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 447
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "must be called on main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_12
    return-void
.end method


# virtual methods
.method complete(Z)V
    .registers 6
    .param p1, "connected"    # Z

    .prologue
    const/4 v2, 0x1

    .line 365
    const-string v0, "NfcHandover"

    const-string v1, "complete()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    .line 367
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 368
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_1a
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_26

    .line 371
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 373
    :cond_26
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_32

    .line 374
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 376
    :cond_32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 378
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_1a .. :try_end_39} :catchall_3f

    .line 379
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mCallback:Lcom/android/nfc/handover/BluetoothHeadsetHandover$Callback;

    invoke-interface {v0, p1}, Lcom/android/nfc/handover/BluetoothHeadsetHandover$Callback;->onBluetoothHeadsetHandoverComplete(Z)V

    .line 380
    return-void

    .line 378
    :catchall_3f
    move-exception v0

    :try_start_40
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method getProfileProxys()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 237
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v2

    if-nez v2, :cond_d

    .line 243
    :cond_c
    :goto_c
    return v0

    .line 240
    :cond_d
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, p0, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v2

    if-eqz v2, :cond_c

    move v0, v1

    .line 243
    goto :goto_c
.end method

.method handleIntent(Landroid/content/Intent;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, -0x80000000

    const/4 v6, 0x2

    .line 323
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 326
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 362
    :cond_1a
    :goto_1a
    return-void

    .line 328
    :cond_1b
    const-string v4, "com.android.nfc.handover.action.ALLOW_CONNECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 329
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->nextStepConnect()V

    goto :goto_1a

    .line 330
    :cond_27
    const-string v4, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 331
    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->complete(Z)V

    goto :goto_1a

    .line 332
    :cond_33
    const-string v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    iget v4, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7b

    .line 333
    const-string v4, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 335
    .local v1, "bond":I
    const/16 v4, 0xc

    if-ne v1, v4, :cond_4e

    .line 336
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->nextStepConnect()V

    goto :goto_1a

    .line 337
    :cond_4e
    const/16 v4, 0xa

    if-ne v1, v4, :cond_1a

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    const v6, 0x7f070022

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->toast(Ljava/lang/CharSequence;)V

    .line 339
    invoke-virtual {p0, v8}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->complete(Z)V

    goto :goto_1a

    .line 341
    .end local v1    # "bond":I
    :cond_7b
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    iget v4, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    if-eq v4, v10, :cond_8c

    iget v4, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_a3

    .line 343
    :cond_8c
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 344
    .local v3, "state":I
    if-ne v3, v6, :cond_9a

    .line 345
    iput v9, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHfpResult:I

    .line 346
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->nextStep()V

    goto :goto_1a

    .line 347
    :cond_9a
    if-nez v3, :cond_1a

    .line 348
    iput v6, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHfpResult:I

    .line 349
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->nextStep()V

    goto/16 :goto_1a

    .line 351
    .end local v3    # "state":I
    :cond_a3
    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v4, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    if-eq v4, v10, :cond_b4

    iget v4, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1a

    .line 353
    :cond_b4
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 354
    .restart local v3    # "state":I
    if-ne v3, v6, :cond_c3

    .line 355
    iput v9, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dpResult:I

    .line 356
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->nextStep()V

    goto/16 :goto_1a

    .line 357
    :cond_c3
    if-nez v3, :cond_1a

    .line 358
    iput v6, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dpResult:I

    .line 359
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->nextStep()V

    goto/16 :goto_1a
.end method

.method public hasStarted()Z
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method nextStep()V
    .registers 3

    .prologue
    .line 146
    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mAction:I

    if-nez v0, :cond_8

    .line 147
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->nextStepInit()V

    .line 153
    :goto_7
    return-void

    .line 148
    :cond_8
    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 149
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->nextStepConnect()V

    goto :goto_7

    .line 151
    :cond_11
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->nextStepDisconnect()V

    goto :goto_7
.end method

.method nextStepConnect()V
    .registers 7

    .prologue
    const/16 v1, 0xc

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 247
    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    packed-switch v0, :pswitch_data_100

    .line 306
    :cond_a
    :goto_a
    return-void

    .line 249
    :pswitch_b
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-eq v0, v1, :cond_1a

    .line 250
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->requestPairConfirmation()V

    .line 251
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    goto :goto_a

    .line 257
    :cond_1a
    :pswitch_1a
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-eq v0, v1, :cond_26

    .line 258
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->startBonding()V

    goto :goto_a

    .line 265
    :cond_26
    :pswitch_26
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    .line 266
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_2c
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v5, :cond_8c

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHfpResult:I

    .line 269
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 273
    :goto_40
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v5, :cond_90

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dpResult:I

    .line 275
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 279
    :goto_54
    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dpResult:I

    if-eqz v0, :cond_5c

    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHfpResult:I

    if-nez v0, :cond_94

    .line 280
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    const v3, 0x7f07001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->toast(Ljava/lang/CharSequence;)V

    .line 281
    monitor-exit v1

    goto :goto_a

    .line 283
    :catchall_89
    move-exception v0

    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_2c .. :try_end_8b} :catchall_89

    throw v0

    .line 271
    :cond_8c
    const/4 v0, 0x1

    :try_start_8d
    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHfpResult:I

    goto :goto_40

    .line 277
    :cond_90
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dpResult:I

    goto :goto_54

    .line 283
    :cond_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_8d .. :try_end_95} :catchall_89

    .line 286
    :pswitch_95
    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dpResult:I

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHfpResult:I

    if-eqz v0, :cond_a

    .line 290
    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dpResult:I

    if-eq v0, v3, :cond_a5

    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHfpResult:I

    if-ne v0, v3, :cond_d6

    .line 292
    :cond_a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f07001d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->toast(Ljava/lang/CharSequence;)V

    .line 293
    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dpResult:I

    if-ne v0, v3, :cond_d1

    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->startTheMusic()V

    .line 294
    :cond_d1
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->complete(Z)V

    goto/16 :goto_a

    .line 296
    :cond_d6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f07001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->toast(Ljava/lang/CharSequence;)V

    .line 297
    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->complete(Z)V

    goto/16 :goto_a

    .line 247
    :pswitch_data_100
    .packed-switch 0x2
        :pswitch_b
        :pswitch_1a
        :pswitch_26
        :pswitch_95
    .end packed-switch
.end method

.method nextStepDisconnect()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 194
    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    sparse-switch v0, :sswitch_data_b2

    .line 234
    :cond_7
    :goto_7
    return-void

    .line 196
    :sswitch_8
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    .line 197
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_e
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_6e

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHfpResult:I

    .line 200
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 204
    :goto_22
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_72

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dpResult:I

    .line 206
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 210
    :goto_36
    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dpResult:I

    if-eqz v0, :cond_3e

    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHfpResult:I

    if-nez v0, :cond_76

    .line 211
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    const v3, 0x7f07001f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->toast(Ljava/lang/CharSequence;)V

    .line 213
    monitor-exit v1

    goto :goto_7

    .line 215
    :catchall_6b
    move-exception v0

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_e .. :try_end_6d} :catchall_6b

    throw v0

    .line 202
    :cond_6e
    const/4 v0, 0x2

    :try_start_6f
    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHfpResult:I

    goto :goto_22

    .line 208
    :cond_72
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dpResult:I

    goto :goto_36

    .line 215
    :cond_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_6b

    .line 218
    :sswitch_77
    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dpResult:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHfpResult:I

    if-eqz v0, :cond_7

    .line 222
    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dpResult:I

    if-ne v0, v3, :cond_ac

    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHfpResult:I

    if-ne v0, v3, :cond_ac

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f070020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->toast(Ljava/lang/CharSequence;)V

    .line 225
    :cond_ac
    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->complete(Z)V

    goto/16 :goto_7

    .line 194
    nop

    :sswitch_data_b2
    .sparse-switch
        0x2 -> :sswitch_8
        0x6 -> :sswitch_77
    .end sparse-switch
.end method

.method nextStepInit()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 159
    iget v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    packed-switch v0, :pswitch_data_9a

    .line 191
    :cond_7
    :goto_7
    return-void

    .line 161
    :pswitch_8
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_1d

    .line 162
    :cond_10
    iput v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    .line 163
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->getProfileProxys()Z

    move-result v0

    if-nez v0, :cond_7

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->complete(Z)V

    goto :goto_7

    .line 170
    :cond_1d
    :pswitch_1d
    iput v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    .line 172
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_22
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 175
    :cond_3e
    const-string v0, "NfcHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_DISCONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mAction:I

    .line 181
    :goto_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_22 .. :try_end_68} :catchall_96

    .line 182
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->nextStep()V

    goto :goto_7

    .line 178
    :cond_6c
    :try_start_6c
    const-string v0, "NfcHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_CONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mAction:I

    goto :goto_67

    .line 181
    :catchall_96
    move-exception v0

    monitor-exit v1
    :try_end_98
    .catchall {:try_start_6c .. :try_end_98} :catchall_96

    throw v0

    .line 159
    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1d
    .end packed-switch
.end method

.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    packed-switch p1, :pswitch_data_2a

    .line 473
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_6
    :goto_6
    :try_start_6
    monitor-exit v1

    .line 474
    return-void

    .line 456
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_8
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 457
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_6

    .line 458
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 473
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_17

    throw v0

    .line 462
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_1a
    :try_start_1a
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 463
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_6

    .line 464
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_17

    goto :goto_6

    .line 454
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1a
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .registers 2
    .param p1, "profile"    # I

    .prologue
    .line 479
    return-void
.end method

.method requestPairConfirmation()V
    .registers 4

    .prologue
    .line 410
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .local v0, "dialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 412
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 414
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 415
    return-void
.end method

.method public start()V
    .registers 6

    .prologue
    .line 123
    invoke-static {}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->checkMainThread()V

    .line 124
    iget v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    if-eqz v1, :cond_8

    .line 140
    :cond_7
    :goto_7
    return-void

    .line 125
    :cond_8
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_7

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v1, "com.android.nfc.handover.action.ALLOW_CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v1, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 138
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mAction:I

    .line 139
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->nextStep()V

    goto :goto_7
.end method

.method startBonding()V
    .registers 4

    .prologue
    .line 309
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mState:I

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->toast(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 313
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 316
    :cond_3b
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f070022

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->toast(Ljava/lang/CharSequence;)V

    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->complete(Z)V

    .line 320
    :cond_6c
    return-void
.end method

.method startTheMusic()V
    .registers 7

    .prologue
    .line 393
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 395
    .local v0, "audioService":Landroid/media/IAudioService;
    if-eqz v0, :cond_3d

    .line 397
    :try_start_c
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x7e

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 398
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    invoke-interface {v0, v2}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 399
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    const/4 v3, 0x1

    const/16 v4, 0x7e

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 400
    .restart local v2    # "keyEvent":Landroid/view/KeyEvent;
    invoke-interface {v0, v2}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_22} :catch_23

    .line 407
    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    :goto_22
    return-void

    .line 401
    :catch_23
    move-exception v1

    .line 402
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "NfcHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 405
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3d
    const-string v3, "NfcHandover"

    const-string v4, "Unable to find IAudioService for media key event"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method toast(Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 384
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "androidhwext:style/Theme.Emui"

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 385
    .local v0, "themeId":I
    if-eqz v0, :cond_14

    .line 386
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 389
    :cond_14
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 390
    return-void
.end method
