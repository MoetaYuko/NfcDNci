.class public Lcom/android/nfc/handover/HandoverTransfer;
.super Ljava/lang/Object;
.source "HandoverTransfer.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverTransfer$Callback;
    }
.end annotation


# static fields
.field static final ALIVE_CHECK_MS:I = 0xea60

.field static final BEAM_DIR:Ljava/lang/String; = "beam"

.field static final DBG:Ljava/lang/Boolean;

.field static final MSG_NEXT_TRANSFER_TIMER:I = 0x0

.field static final MSG_TRANSFER_TIMEOUT:I = 0x1

.field static final STATE_CANCELLED:I = 0x6

.field static final STATE_FAILED:I = 0x4

.field static final STATE_IN_PROGRESS:I = 0x1

.field static final STATE_NEW:I = 0x0

.field static final STATE_SUCCESS:I = 0x5

.field static final STATE_W4_MEDIA_SCANNER:I = 0x3

.field static final STATE_W4_NEXT_TRANSFER:I = 0x2

.field static final TAG:Ljava/lang/String; = "HandoverTransfer"

.field static final WAIT_FOR_NEXT_TRANSFER_MS:I = 0xfa0


# instance fields
.field mBtMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mBtUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

.field mCalledBack:Z

.field final mCancelIntent:Landroid/app/PendingIntent;

.field final mContext:Landroid/content/Context;

.field mCurrentCount:I

.field final mHandler:Landroid/os/Handler;

.field final mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

.field final mIncoming:Z

.field private mIsHwBeam:Z

.field mMediaUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mMimeTypes:Ljava/util/HashMap;
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

.field final mNotificationManager:Landroid/app/NotificationManager;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProgress:F

.field final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field final mSourceAddress:Ljava/lang/String;

.field mState:I

.field mSuccessCount:I

.field mTotalCount:I

.field final mTransferId:I

.field mUrisScanned:I

.field transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverTransfer$Callback;Lcom/android/nfc/handover/PendingHandoverTransfer;Z)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/handover/HandoverTransfer$Callback;
    .param p3, "pendingTransfer"    # Lcom/android/nfc/handover/PendingHandoverTransfer;
    .param p4, "isHwBeam"    # Z

    .prologue
    .line 197
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 199
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    .line 200
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/handover/HandoverTransfer;->mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

    .line 201
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/nfc/handover/PendingHandoverTransfer;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 202
    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/android/nfc/handover/PendingHandoverTransfer;->incoming:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    .line 203
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/nfc/handover/PendingHandoverTransfer;->id:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    .line 205
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    if-eqz v2, :cond_e0

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/nfc/handover/PendingHandoverTransfer;->uris:[Landroid/net/Uri;

    array-length v2, v2

    :goto_32
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    .line 208
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    .line 210
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    .line 211
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mBtUris:Ljava/util/ArrayList;

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mBtMimeTypes:Ljava/util/ArrayList;

    .line 213
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    .line 214
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    .line 215
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mMediaUris:Ljava/util/HashMap;

    .line 216
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/nfc/handover/HandoverTransfer;->buildCancelIntent(Z)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mCancelIntent:Landroid/app/PendingIntent;

    .line 217
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    .line 218
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    .line 219
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    .line 221
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/handover/HandoverTransfer;->mIsHwBeam:Z

    .line 224
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 229
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mSourceAddress:Ljava/lang/String;

    .line 230
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    .line 232
    new-instance v2, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-string v11, ""

    const/4 v12, 0x2

    const/4 v13, 0x2

    const/4 v14, 0x1

    const-wide/16 v15, 0x0

    invoke-direct/range {v2 .. v16}, Lcom/android/nfc/transferhistory/NfcTransferInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    .line 237
    return-void

    .line 205
    :cond_e0
    const/4 v2, 0x0

    goto/16 :goto_32
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZIZLcom/android/nfc/handover/HandoverManager$HandoverPowerManager;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceAddress"    # Ljava/lang/String;
    .param p3, "incoming"    # Z
    .param p4, "notificationId"    # I
    .param p5, "isHwBeam"    # Z
    .param p6, "handoverPowerManager"    # Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    .prologue
    .line 155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 156
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    .line 157
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

    .line 158
    monitor-enter p0

    .line 159
    :try_start_f
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    .line 160
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_d5

    .line 163
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    .line 165
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mBtUris:Ljava/util/ArrayList;

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mBtMimeTypes:Ljava/util/ArrayList;

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    .line 169
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    .line 170
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mMediaUris:Ljava/util/HashMap;

    .line 171
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/handover/HandoverTransfer;->mSourceAddress:Ljava/lang/String;

    .line 172
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    .line 173
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    .line 174
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/nfc/handover/HandoverTransfer;->buildCancelIntent(Z)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mCancelIntent:Landroid/app/PendingIntent;

    .line 175
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    .line 176
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/handover/HandoverTransfer;->mIsHwBeam:Z

    .line 177
    if-nez p5, :cond_d8

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-eqz v2, :cond_d8

    .line 178
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v17

    .line 179
    .local v17, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mSourceAddress:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 184
    .end local v17    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_98
    new-instance v2, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-string v11, ""

    const/4 v12, 0x2

    const/4 v13, 0x2

    const/4 v14, 0x1

    const-wide/16 v15, 0x0

    invoke-direct/range {v2 .. v16}, Lcom/android/nfc/transferhistory/NfcTransferInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 191
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/handover/HandoverTransfer;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    .line 192
    return-void

    .line 160
    :catchall_d5
    move-exception v2

    :try_start_d6
    monitor-exit p0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    throw v2

    .line 181
    :cond_d8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_98
.end method

.method private setTransferInfo()V
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 469
    const-string v1, ""

    .line 470
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 471
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "path":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 472
    .restart local v1    # "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 473
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setMimeType(Ljava/lang/String;)V

    .line 476
    :cond_39
    const-string v2, ""

    if-eq v2, v1, :cond_85

    .line 477
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, "file":Ljava/io/File;
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFilePath(Ljava/lang/String;)V

    .line 479
    const-string v2, ""

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_72

    const-string v2, ""

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_72

    .line 480
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 483
    :cond_72
    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_85

    .line 484
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileSize(J)V

    .line 488
    .end local v0    # "file":Ljava/io/File;
    :cond_85
    iget-boolean v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIsHwBeam:Z

    if-nez v2, :cond_98

    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_98

    .line 489
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFriendlyName(Ljava/lang/String;)V

    .line 491
    :cond_98
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-virtual {v2, v3}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setTransferDir(I)V

    .line 492
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v5, 0x5

    if-ne v2, v5, :cond_b0

    move v2, v3

    :goto_a5
    invoke-virtual {v4, v2}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setTransferResult(I)V

    .line 493
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    iget-object v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/nfc/transferhistory/DataBaseUtils;->insertHistoryIntoDB(Lcom/android/nfc/transferhistory/NfcTransferInfo;Landroid/content/Context;)V

    .line 494
    return-void

    .line 492
    :cond_b0
    const/4 v2, 0x2

    goto :goto_a5
.end method


# virtual methods
.method buildCancelIntent(Z)Landroid/app/PendingIntent;
    .registers 7
    .param p1, "incoming"    # Z

    .prologue
    .line 639
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_29

    .line 642
    const-string v2, "com.android.nfc.handover.extra.SOURCE_ADDRESS"

    iget-object v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    :goto_16
    const-string v3, "com.android.nfc.handover.extra.INCOMING"

    if-eqz p1, :cond_31

    const/4 v2, 0x1

    :goto_1b
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 648
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 651
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1

    .line 644
    .end local v1    # "pi":Landroid/app/PendingIntent;
    :cond_29
    const-string v2, "com.android.nfc.handover.extra.SOURCE_ADDRESS"

    iget-object v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSourceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_16

    .line 647
    :cond_31
    const/4 v2, 0x0

    goto :goto_1b
.end method

.method buildViewIntent()Landroid/content/Intent;
    .registers 7

    .prologue
    .line 625
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_a

    const/4 v3, 0x0

    .line 635
    :goto_9
    return-object v3

    .line 627
    :cond_a
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 629
    .local v3, "viewIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 630
    .local v0, "filePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 631
    .local v1, "mediaUri":Landroid/net/Uri;
    if-eqz v1, :cond_36

    move-object v2, v1

    .line 633
    .local v2, "uri":Landroid/net/Uri;
    :goto_25
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_9

    .line 631
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_25
.end method

.method cancel()V
    .registers 6

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v3

    if-nez v3, :cond_7

    .line 356
    :goto_6
    return-void

    .line 342
    :cond_7
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBtUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 343
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 346
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 347
    sget-object v3, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "HandoverTransfer"

    const-string v4, "cancel delete file sucess"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 349
    :cond_3e
    sget-object v3, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "HandoverTransfer"

    const-string v4, "cancel delete file failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 355
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_4e
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_6
.end method

.method checkMediaStorage(Ljava/io/File;)Z
    .registers 6
    .param p1, "path"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 612
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 613
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_36

    .line 614
    const-string v1, "HandoverTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not dir or not mkdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_35
    return v0

    .line 617
    :cond_36
    const/4 v0, 0x1

    goto :goto_35

    .line 619
    :cond_38
    const-string v1, "HandoverTransfer"

    const-string v2, "External storage not mounted, can\'t store file."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method declared-synchronized failed()V
    .registers 6

    .prologue
    .line 320
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_46

    move-result v3

    if-nez v3, :cond_9

    .line 335
    :goto_7
    monitor-exit p0

    return-void

    .line 322
    :cond_9
    :try_start_9
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBtUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 325
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 327
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 328
    sget-object v3, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "HandoverTransfer"

    const-string v4, "cancel delete file sucess"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_46

    goto :goto_15

    .line 320
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "uri":Landroid/net/Uri;
    :catchall_46
    move-exception v3

    monitor-exit p0

    throw v3

    .line 330
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_49
    :try_start_49
    sget-object v3, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "HandoverTransfer"

    const-string v4, "cancel delete file failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 334
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_59
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V
    :try_end_5d
    .catchall {:try_start_49 .. :try_end_5d} :catchall_46

    goto :goto_7
.end method

.method public finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V
    .registers 8
    .param p1, "success"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_8

    .line 304
    :goto_7
    return-void

    .line 271
    :cond_8
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    .line 272
    if-eqz p1, :cond_7c

    if-eqz p2, :cond_7c

    .line 273
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    .line 274
    sget-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "HandoverTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transfer success, uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mimeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_42
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    .line 276
    if-nez p3, :cond_4d

    .line 277
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/nfc/handover/BluetoothOppHandover;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 279
    :cond_4d
    if-eqz p3, :cond_6c

    .line 280
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBtUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBtMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_59
    :goto_59
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    if-ne v0, v1, :cond_93

    .line 295
    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v0, :cond_87

    .line 296
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->processFiles()V

    goto :goto_7

    .line 283
    :cond_6c
    sget-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_59

    const-string v0, "HandoverTransfer"

    const-string v1, "Could not get mimeType for file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 286
    :cond_7c
    const-string v0, "HandoverTransfer"

    const-string v1, "Handover transfer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->failed()V

    goto :goto_7

    .line 298
    :cond_87
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    if-lez v0, :cond_91

    const/4 v0, 0x5

    :goto_8c
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_7

    :cond_91
    const/4 v0, 0x4

    goto :goto_8c

    .line 301
    :cond_93
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 302
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_7
.end method

.method generateMultiplePath(Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .param p1, "beamRoot"    # Ljava/lang/String;

    .prologue
    .line 677
    const-string v1, "yyyy-MM-dd"

    .line 678
    .local v1, "format":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 679
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 680
    .local v3, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    .local v2, "newFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 682
    .local v0, "count":I
    :goto_2f
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 683
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 685
    new-instance v2, Ljava/io/File;

    .end local v2    # "newFile":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 686
    .restart local v2    # "newFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 688
    :cond_6b
    return-object v2
.end method

.method generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 655
    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 656
    .local v1, "dotIndex":I
    const/4 v3, 0x0

    .line 657
    .local v3, "extension":Ljava/lang/String;
    const/4 v4, 0x0

    .line 658
    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    if-gez v1, :cond_61

    .line 659
    const-string v3, ""

    .line 660
    move-object v4, p2

    .line 665
    :goto_d
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 666
    .local v2, "dstFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 667
    .local v0, "count":I
    :goto_2a
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 668
    new-instance v2, Ljava/io/File;

    .end local v2    # "dstFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 670
    .restart local v2    # "dstFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 662
    .end local v0    # "count":I
    .end local v2    # "dstFile":Ljava/io/File;
    :cond_61
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 663
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    .line 672
    .restart local v0    # "count":I
    .restart local v2    # "dstFile":Ljava/io/File;
    :cond_6b
    return-object v2
.end method

.method public getTransferId()I
    .registers 2

    .prologue
    .line 579
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 583
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_18

    .line 585
    iget-boolean v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v2, :cond_f

    .line 586
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->processFiles()V

    :goto_d
    move v0, v1

    .line 596
    :goto_e
    return v0

    .line 588
    :cond_f
    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mSuccessCount:I

    if-lez v2, :cond_14

    const/4 v0, 0x5

    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_d

    .line 591
    :cond_18
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v1, :cond_45

    .line 593
    sget-object v1, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, "HandoverTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transfer timed out for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_42
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    .line 596
    :cond_45
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isRunning()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 307
    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eq v1, v0, :cond_f

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    .line 308
    const/4 v0, 0x0

    .line 310
    :cond_f
    return v0
.end method

.method public declared-synchronized onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 600
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "HandoverTransfer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scan completed, path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_2b
    if-eqz p2, :cond_32

    .line 602
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    :cond_32
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    .line 605
    iget v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mUrisScanned:I

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_46

    .line 607
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    .line 609
    :cond_46
    monitor-exit p0

    return-void

    .line 600
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method processFiles()V
    .registers 14

    .prologue
    const/4 v12, 0x4

    .line 500
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 501
    .local v4, "extRoot":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "beam"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v1, "beamPath":Ljava/io/File;
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->checkMediaStorage(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_35

    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBtUris:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_40

    .line 504
    :cond_35
    const-string v9, "HandoverTransfer"

    const-string v10, "Media storage not valid or no uris received."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-virtual {p0, v12}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    .line 576
    :cond_3f
    :goto_3f
    return-void

    .line 509
    :cond_40
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBtUris:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_98

    .line 510
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "beam"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/nfc/handover/HandoverTransfer;->generateMultiplePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 511
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_98

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v9

    if-nez v9, :cond_98

    .line 512
    const-string v9, "HandoverTransfer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to create multiple path "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {p0, v12}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_3f

    .line 518
    :cond_98
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_99
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBtUris:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_14f

    .line 519
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBtUris:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 520
    .local v8, "uri":Landroid/net/Uri;
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mBtMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 522
    .local v6, "mimeType":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 524
    .local v7, "srcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/nfc/handover/HandoverTransfer;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 528
    .local v2, "dstFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d7

    .line 518
    :cond_d4
    :goto_d4
    add-int/lit8 v5, v5, 0x1

    goto :goto_99

    .line 533
    :cond_d7
    invoke-virtual {v7, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_112

    .line 534
    sget-object v9, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_107

    const-string v9, "HandoverTransfer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to rename from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_107
    :try_start_107
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10a} :catch_10c

    goto/16 :goto_3f

    .line 539
    :catch_10c
    move-exception v3

    .line 540
    .local v3, "ee":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3f

    .line 545
    .end local v3    # "ee":Ljava/lang/Exception;
    :cond_112
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v9, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_d4

    const-string v9, "HandoverTransfer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Did successful rename from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 557
    .end local v2    # "dstFile":Ljava/io/File;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "srcFile":Ljava/io/File;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_14f
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    if-eqz v9, :cond_3f

    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_3f

    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    if-eqz v9, :cond_3f

    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3f

    .line 559
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mMimeTypes:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 560
    .restart local v6    # "mimeType":Ljava/lang/String;
    if-eqz v6, :cond_3f

    .line 561
    const-string v9, "image/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_190

    const-string v9, "video/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_190

    const-string v9, "audio/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1ac

    .line 564
    :cond_190
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v0, v9, [Ljava/lang/String;

    .line 565
    .local v0, "arrayPaths":[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/nfc/handover/HandoverTransfer;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v10, v9, v11, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 567
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_3f

    .line 570
    .end local v0    # "arrayPaths":[Ljava/lang/String;
    :cond_1ac
    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto/16 :goto_3f
.end method

.method public setObjectCount(I)V
    .registers 2
    .param p1, "objectCount"    # I

    .prologue
    .line 315
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    .line 316
    return-void
.end method

.method public updateFileProgress(F)V
    .registers 4
    .param p1, "progress"    # F

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 266
    :goto_6
    return-void

    .line 249
    :cond_7
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    .line 259
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v0, :cond_1c

    .line 260
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 265
    :cond_1c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverTransfer;->updateStateAndNotification(I)V

    goto :goto_6
.end method

.method updateNotification()V
    .registers 14

    .prologue
    const/16 v12, 0x64

    const v7, 0x1080089

    const v6, 0x1080082

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 359
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 362
    .local v2, "notBuilder":Landroid/app/Notification$Builder;
    iget-boolean v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v8, :cond_86

    .line 363
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v9, 0x7f070013

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "beamString":Ljava/lang/String;
    :goto_1e
    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eqz v8, :cond_30

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eq v8, v11, :cond_30

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_30

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_98

    .line 369
    :cond_30
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 370
    iget-boolean v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v6, :cond_90

    const v6, 0x1080081

    :goto_3a
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 372
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 373
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 374
    const v6, 0x7f020001

    iget-object v7, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v8, 0x7f070018

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCancelIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v7, v8}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 376
    const/4 v3, 0x0

    .line 377
    .local v3, "progress":F
    iget v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    if-lez v6, :cond_69

    .line 378
    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    int-to-float v7, v7

    div-float v4, v6, v7

    .line 379
    .local v4, "progressUnit":F
    iget v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCurrentCount:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/android/nfc/handover/HandoverTransfer;->mProgress:F

    mul-float/2addr v7, v4

    add-float v3, v6, v7

    .line 381
    .end local v4    # "progressUnit":F
    :cond_69
    iget v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTotalCount:I

    if-lez v6, :cond_94

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_94

    .line 382
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v2, v12, v6, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 417
    .end local v3    # "progress":F
    :cond_79
    :goto_79
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 418
    :cond_85
    return-void

    .line 365
    .end local v0    # "beamString":Ljava/lang/String;
    :cond_86
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v9, 0x7f070014

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "beamString":Ljava/lang/String;
    goto :goto_1e

    .line 370
    :cond_90
    const v6, 0x1080088

    goto :goto_3a

    .line 384
    .restart local v3    # "progress":F
    :cond_94
    invoke-virtual {v2, v12, v10, v11}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_79

    .line 386
    .end local v3    # "progress":F
    :cond_98
    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_e2

    .line 387
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 388
    iget-boolean v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v8, :cond_e0

    :goto_a4
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 390
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f070015

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 391
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f070015

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 393
    iget-boolean v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v6, :cond_79

    .line 394
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f070019

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 395
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->buildViewIntent()Landroid/content/Intent;

    move-result-object v5

    .line 396
    .local v5, "viewIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v5, v10, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 399
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_79

    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v5    # "viewIntent":Landroid/content/Intent;
    :cond_e0
    move v6, v7

    .line 388
    goto :goto_a4

    .line 401
    :cond_e2
    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_10d

    .line 402
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 403
    iget-boolean v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v8, :cond_10b

    :goto_ee
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 405
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f070016

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 406
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f070016

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_79

    :cond_10b
    move v6, v7

    .line 403
    goto :goto_ee

    .line 407
    :cond_10d
    iget v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_85

    .line 408
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 409
    iget-boolean v8, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIncoming:Z

    if-eqz v8, :cond_136

    :goto_119
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 411
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f070017

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 412
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    const v7, 0x7f070017

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_79

    :cond_136
    move v6, v7

    .line 409
    goto :goto_119
.end method

.method updateStateAndNotification(I)V
    .registers 7
    .param p1, "newState"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    .line 421
    iput p1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    .line 426
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 429
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 445
    :cond_17
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverTransfer;->updateNotification()V

    .line 447
    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-eq v1, v4, :cond_28

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_28

    iget v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6e

    :cond_28
    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCalledBack:Z

    if-nez v1, :cond_6e

    .line 449
    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIsHwBeam:Z

    if-eqz v1, :cond_5a

    .line 450
    const-string v1, "HandoverTransfer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    if-eqz v1, :cond_5a

    .line 452
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mHandoverPowerManager:Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;

    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverManager$HandoverPowerManager;->resetHandoverTimer()V

    .line 453
    const-string v1, "HandoverTransfer"

    const-string v2, "RESET POWER MANAGER "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_5a
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCalledBack:Z

    .line 459
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

    if-eqz v1, :cond_6b

    .line 460
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mCallback:Lcom/android/nfc/handover/HandoverTransfer$Callback;

    iget v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mState:I

    if-ne v2, v4, :cond_6f

    :goto_66
    iget-boolean v2, p0, Lcom/android/nfc/handover/HandoverTransfer;->mIsHwBeam:Z

    invoke-interface {v1, p0, v0, v2}, Lcom/android/nfc/handover/HandoverTransfer$Callback;->onTransferComplete(Lcom/android/nfc/handover/HandoverTransfer;ZZ)V

    .line 463
    :cond_6b
    invoke-direct {p0}, Lcom/android/nfc/handover/HandoverTransfer;->setTransferInfo()V

    .line 466
    :cond_6e
    return-void

    .line 460
    :cond_6f
    const/4 v0, 0x0

    goto :goto_66
.end method

.method whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 240
    sget-object v1, Lcom/android/nfc/handover/HandoverTransfer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v1, "HandoverTransfer"

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

    .line 241
    :cond_26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverTransfer;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 244
    return-void
.end method
