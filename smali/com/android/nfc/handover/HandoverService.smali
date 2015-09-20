.class public Lcom/android/nfc/handover/HandoverService;
.super Landroid/app/Service;
.source "HandoverService.java"

# interfaces
.implements Lcom/android/nfc/handover/BluetoothHeadsetHandover$Callback;
.implements Lcom/android/nfc/handover/HandoverTransfer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverService$MessageHandler;
    }
.end annotation


# static fields
.field static final ACTION_BT_OPP_TRANSFER_DONE:Ljava/lang/String; = "android.btopp.intent.action.BT_OPP_TRANSFER_DONE"

.field static final ACTION_BT_OPP_TRANSFER_PROGRESS:Ljava/lang/String; = "android.btopp.intent.action.BT_OPP_TRANSFER_PROGRESS"

.field static final ACTION_CANCEL_HANDOVER_TRANSFER:Ljava/lang/String; = "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

.field static final ACTION_HANDOVER_STARTED:Ljava/lang/String; = "android.btopp.intent.action.BT_OPP_HANDOVER_STARTED"

.field static final BT_POWER_CHECK_MS:I = 0x4e20

.field static final BUNDLE_ISHWBEAM:Ljava/lang/String; = "isHwBeam"

.field static final BUNDLE_TRANSFER:Ljava/lang/String; = "transfer"

.field static final DBG:Z = true

.field static final DIRECTION_BLUETOOTH_INCOMING:I = 0x0

.field static final DIRECTION_BLUETOOTH_OUTGOING:I = 0x1

.field static final EXTRA_BT_OPP_ADDRESS:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_ADDRESS"

.field public static final EXTRA_BT_OPP_OBJECT_COUNT:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_OBJECT_COUNT"

.field static final EXTRA_BT_OPP_TRANSFER_DIRECTION:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_DIRECTION"

.field static final EXTRA_BT_OPP_TRANSFER_ID:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_ID"

.field static final EXTRA_BT_OPP_TRANSFER_MIMETYPE:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_MIMETYPE"

.field static final EXTRA_BT_OPP_TRANSFER_PROGRESS:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_PROGRESS"

.field static final EXTRA_BT_OPP_TRANSFER_STATUS:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_STATUS"

.field static final EXTRA_BT_OPP_TRANSFER_URI:Ljava/lang/String; = "android.btopp.intent.extra.BT_OPP_TRANSFER_URI"

.field static final EXTRA_HEADSET_DEVICE:Ljava/lang/String; = "device"

.field static final EXTRA_HEADSET_NAME:Ljava/lang/String; = "headsetname"

.field static final EXTRA_INCOMING:Ljava/lang/String; = "com.android.nfc.handover.extra.INCOMING"

.field static final EXTRA_SOURCE_ADDRESS:Ljava/lang/String; = "com.android.nfc.handover.extra.SOURCE_ADDRESS"

.field static final HANDOVER_STATUS_PERMISSION:Ljava/lang/String; = "com.android.permission.HANDOVER_STATUS"

.field static final HANDOVER_TRANSFER_STATUS_FAILURE:I = 0x1

.field static final HANDOVER_TRANSFER_STATUS_SUCCESS:I = 0x0

.field static final MSG_DEREGISTER_CLIENT:I = 0x1

.field static final MSG_DISABLE_BLUETOOTH_IFNEEDED:I = 0x14

.field static final MSG_HEADSET_HANDOVER:I = 0x4

.field static final MSG_REGISTER_CLIENT:I = 0x0

.field static final MSG_START_INCOMING_TRANSFER:I = 0x2

.field static final MSG_START_OUTGOING_TRANSFER:I = 0x3

.field static final NFC_OPEN_BLUETOOTH:Ljava/lang/String; = "nfc_open_bluetooth"

.field static final NFC_OPEN_BLUETOOTH_FILE:Ljava/lang/String; = "nfc_open_bluetooth_file"

.field static final TAG:Ljava/lang/String; = "HandoverService"


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothEnabledByNfc:Z

.field mBluetoothHeadsetConnected:Z

.field mBluetoothHeadsetHandover:Lcom/android/nfc/handover/BluetoothHeadsetHandover;

.field mClient:Landroid/os/Messenger;

.field private mFastConReceiver:Landroid/content/BroadcastReceiver;

.field mHandler:Landroid/os/Handler;

.field final mMessenger:Landroid/os/Messenger;

.field final mPendingOutTransfers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/nfc/handover/BluetoothOppHandover;",
            ">;"
        }
    .end annotation
.end field

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mSoundPool:Landroid/media/SoundPool;

.field mSuccessSound:I

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


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 388
    new-instance v0, Lcom/android/nfc/handover/HandoverService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/HandoverService$1;-><init>(Lcom/android/nfc/handover/HandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mFastConReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    new-instance v0, Lcom/android/nfc/handover/HandoverService$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/HandoverService$2;-><init>(Lcom/android/nfc/handover/HandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 159
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mPendingOutTransfers:Ljava/util/Queue;

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mTransfers:Ljava/util/HashMap;

    .line 161
    new-instance v0, Lcom/android/nfc/handover/HandoverService$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/HandoverService$MessageHandler;-><init>(Lcom/android/nfc/handover/HandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mMessenger:Landroid/os/Messenger;

    .line 163
    iput-boolean v2, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetConnected:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    .line 165
    return-void
.end method


# virtual methods
.method createHandoverTransfer(Lcom/android/nfc/handover/PendingHandoverTransfer;Z)V
    .registers 7
    .param p1, "pendingTransfer"    # Lcom/android/nfc/handover/PendingHandoverTransfer;
    .param p2, "isHwBeam"    # Z

    .prologue
    .line 349
    new-instance v0, Landroid/util/Pair;

    iget-object v2, p1, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/nfc/handover/PendingHandoverTransfer;->incoming:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 351
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 352
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/handover/HandoverTransfer;

    .line 353
    .local v1, "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 354
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .end local v1    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_2c
    new-instance v1, Lcom/android/nfc/handover/HandoverTransfer;

    invoke-direct {v1, p0, p0, p1, p2}, Lcom/android/nfc/handover/HandoverTransfer;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverTransfer$Callback;Lcom/android/nfc/handover/PendingHandoverTransfer;Z)V

    .line 367
    .restart local v1    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverTransfer;->updateNotification()V

    .line 369
    :goto_39
    return-void

    .line 359
    :cond_3a
    iget v2, p1, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverService;->notifyClientTransferComplete(I)V

    goto :goto_39
.end method

.method disableBluetoothIfNeeded()V
    .registers 4

    .prologue
    .line 335
    const-string v1, "nfc_open_bluetooth_file"

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 336
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    if-nez v1, :cond_17

    .line 344
    :cond_16
    :goto_16
    return-void

    .line 340
    :cond_17
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetConnected:Z

    if-nez v1, :cond_16

    .line 341
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 342
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    goto :goto_16
.end method

.method doHeadsetHandover(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 260
    .local v1, "msgData":Landroid/os/Bundle;
    const-string v3, "device"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 261
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v3, "headsetname"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetHandover:Lcom/android/nfc/handover/BluetoothHeadsetHandover;

    if-eqz v3, :cond_1e

    .line 263
    const-string v3, "HandoverService"

    const-string v4, "Ignoring pairing request, existing handover in progress."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1d
    :goto_1d
    return-void

    .line 266
    :cond_1e
    new-instance v3, Lcom/android/nfc/handover/BluetoothHeadsetHandover;

    invoke-direct {v3, p0, v0, v2, p0}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/nfc/handover/BluetoothHeadsetHandover$Callback;)V

    iput-object v3, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetHandover:Lcom/android/nfc/handover/BluetoothHeadsetHandover;

    .line 268
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 269
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetHandover:Lcom/android/nfc/handover/BluetoothHeadsetHandover;

    invoke-virtual {v3}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->start()V

    goto :goto_1d

    .line 272
    :cond_33
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverService;->enableBluetooth()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 273
    const-string v3, "HandoverService"

    const-string v4, "Error enabling Bluetooth."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetHandover:Lcom/android/nfc/handover/BluetoothHeadsetHandover;

    goto :goto_1d
.end method

.method doIncomingTransfer(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 239
    .local v1, "msgData":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 240
    const-string v3, "transfer"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/handover/PendingHandoverTransfer;

    .line 244
    .local v2, "pendingTransfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    const-string v3, "isHwBeam"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 247
    .local v0, "isHwBeam":Z
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_34

    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverService;->enableBluetooth()Z

    move-result v3

    if-nez v3, :cond_34

    .line 248
    const-string v3, "HandoverService"

    const-string v4, "Error enabling Bluetooth."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget v3, v2, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverService;->notifyClientTransferComplete(I)V

    .line 256
    :goto_33
    return-void

    .line 253
    :cond_34
    invoke-virtual {p0, v2, v0}, Lcom/android/nfc/handover/HandoverService;->createHandoverTransfer(Lcom/android/nfc/handover/PendingHandoverTransfer;Z)V

    goto :goto_33
.end method

.method doOutgoingTransfer(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 207
    .local v2, "msgData":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 208
    const-string v4, "transfer"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/handover/PendingHandoverTransfer;

    .line 212
    .local v3, "pendingTransfer":Lcom/android/nfc/handover/PendingHandoverTransfer;
    const-string v4, "isHwBeam"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 213
    .local v1, "isHwBeam":Z
    invoke-virtual {p0, v3, v1}, Lcom/android/nfc/handover/HandoverService;->createHandoverTransfer(Lcom/android/nfc/handover/PendingHandoverTransfer;Z)V

    .line 217
    new-instance v0, Lcom/android/nfc/handover/BluetoothOppHandover;

    iget-object v4, v3, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, v3, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    iget-boolean v6, v3, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteActivating:Z

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/android/nfc/handover/BluetoothOppHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Z)V

    .line 220
    .local v0, "handover":Lcom/android/nfc/handover/BluetoothOppHandover;
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 222
    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothOppHandover;->start()V

    .line 234
    :goto_32
    return-void

    .line 224
    :cond_33
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverService;->enableBluetooth()Z

    move-result v4

    if-nez v4, :cond_46

    .line 225
    const-string v4, "HandoverService"

    const-string v5, "Error enabling Bluetooth."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget v4, v3, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/HandoverService;->notifyClientTransferComplete(I)V

    goto :goto_32

    .line 229
    :cond_46
    const-string v4, "HandoverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Queueing out transfer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService;->mPendingOutTransfers:Ljava/util/Queue;

    invoke-interface {v4, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_32
.end method

.method enableBluetooth()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 320
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_24

    .line 322
    const-string v3, "nfc_open_bluetooth_file"

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 323
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 324
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "nfc_open_bluetooth"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 325
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 327
    iput-boolean v2, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    .line 328
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v2

    .line 330
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_24
    return v2
.end method

.method findHandoverTransfer(Ljava/lang/String;Z)Lcom/android/nfc/handover/HandoverTransfer;
    .registers 6
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "incoming"    # Z

    .prologue
    .line 372
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 373
    .local v0, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 374
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/handover/HandoverTransfer;

    .line 375
    .local v1, "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 379
    .end local v1    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :goto_1f
    return-object v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method notifyClientTransferComplete(I)V
    .registers 5
    .param p1, "transferId"    # I

    .prologue
    .line 557
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    if-eqz v1, :cond_11

    .line 558
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 559
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 561
    :try_start_c
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 566
    .end local v0    # "msg":Landroid/os/Message;
    :cond_11
    :goto_11
    return-void

    .line 562
    .restart local v0    # "msg":Landroid/os/Message;
    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onBluetoothHeadsetHandoverComplete(Z)V
    .registers 6
    .param p1, "connected"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 613
    iput-object v3, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetHandover:Lcom/android/nfc/handover/BluetoothHeadsetHandover;

    .line 614
    iput-boolean p1, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetConnected:Z

    .line 615
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    if-eqz v1, :cond_1c

    .line 616
    if-eqz p1, :cond_20

    move v1, v2

    :goto_d
    invoke-static {v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 619
    .local v0, "msg":Landroid/os/Message;
    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    if-eqz v1, :cond_22

    :goto_15
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 621
    :try_start_17
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_24

    .line 626
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverService;->disableBluetoothIfNeeded()V

    .line 627
    return-void

    .line 616
    :cond_20
    const/4 v1, 0x2

    goto :goto_d

    .line 619
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_22
    const/4 v2, 0x0

    goto :goto_15

    .line 622
    :catch_24
    move-exception v1

    goto :goto_1c
.end method

.method public onCreate()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 169
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 171
    new-instance v2, Landroid/media/SoundPool;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v2, v5, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mSoundPool:Landroid/media/SoundPool;

    .line 172
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x7f040000

    invoke-virtual {v2, p0, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    iput v2, p0, Lcom/android/nfc/handover/HandoverService;->mSuccessSound:I

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    .local v0, "fastConnFilter":Landroid/content/IntentFilter;
    const-string v2, "ACTION_FAST_CONNECTION_SUCCESS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v2, "ACTION_FAST_CONNECTION_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v2, "com.android.nfc.handover.action.ACTION_NOT_ENOUGH_FREE_SPACE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mFastConReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 184
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.btopp.intent.action.BT_OPP_TRANSFER_DONE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.btopp.intent.action.BT_OPP_TRANSFER_PROGRESS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v2, "android.btopp.intent.action.BT_OPP_HANDOVER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverService;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.android.permission.HANDOVER_STATUS"

    iget-object v4, p0, Lcom/android/nfc/handover/HandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 190
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 195
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_c

    .line 196
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 198
    :cond_c
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mFastConReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    return-void
.end method

.method public onTransferComplete(Lcom/android/nfc/handover/HandoverTransfer;ZZ)V
    .registers 15
    .param p1, "transfer"    # Lcom/android/nfc/handover/HandoverTransfer;
    .param p2, "success"    # Z
    .param p3, "isHwBeam"    # Z

    .prologue
    const/16 v10, 0x14

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 581
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mTransfers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 582
    .local v8, "it":Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 583
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 584
    .local v7, "hashPair":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/nfc/handover/HandoverTransfer;

    .line 585
    .local v9, "transferEntry":Lcom/android/nfc/handover/HandoverTransfer;
    if-ne v9, p1, :cond_f

    .line 586
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 591
    .end local v7    # "hashPair":Ljava/util/Map$Entry;
    .end local v9    # "transferEntry":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_27
    invoke-virtual {p1}, Lcom/android/nfc/handover/HandoverTransfer;->getTransferId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverService;->notifyClientTransferComplete(I)V

    .line 594
    if-eqz p2, :cond_49

    .line 595
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/handover/HandoverService;->mSuccessSound:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 601
    :goto_3a
    if-eqz p3, :cond_68

    .line 602
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 603
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v10, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 608
    :goto_48
    return-void

    .line 597
    :cond_49
    const-string v0, "HandoverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer failed, final state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 605
    :cond_68
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverService;->disableBluetoothIfNeeded()V

    goto :goto_48
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverService;->mClient:Landroid/os/Messenger;

    .line 572
    const/4 v0, 0x0

    return v0
.end method

.method startPendingTransfers()V
    .registers 3

    .prologue
    .line 280
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mPendingOutTransfers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 281
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverService;->mPendingOutTransfers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/handover/BluetoothOppHandover;

    .line 282
    .local v0, "handover":Lcom/android/nfc/handover/BluetoothOppHandover;
    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothOppHandover;->start()V

    goto :goto_0

    .line 284
    .end local v0    # "handover":Lcom/android/nfc/handover/BluetoothOppHandover;
    :cond_14
    return-void
.end method
