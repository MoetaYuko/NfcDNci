.class public Lcom/android/nfc/handover/BluetoothOppHandover;
.super Ljava/lang/Object;
.source "BluetoothOppHandover.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final ACTION_HANDOVER_SEND:Ljava/lang/String; = "android.btopp.intent.action.HANDOVER_SEND"

.field static final ACTION_HANDOVER_SEND_MULTIPLE:Ljava/lang/String; = "android.btopp.intent.action.HANDOVER_SEND_MULTIPLE"

.field static final DBG:Z = true

.field static final MSG_START_SEND:I = 0x0

.field static final REMOTE_BT_ENABLE_DELAY_MS:I = 0x1388

.field static final STATE_COMPLETE:I = 0x3

.field static final STATE_INIT:I = 0x0

.field static final STATE_TURNING_ON:I = 0x1

.field static final STATE_WAITING:I = 0x2

.field static final TAG:Ljava/lang/String; = "BluetoothOppHandover"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mCreateTime:Ljava/lang/Long;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mHandler:Landroid/os/Handler;

.field final mRemoteActivating:Z

.field mState:I

.field final mUris:[Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "uris"    # [Landroid/net/Uri;
    .param p4, "remoteActivating"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 66
    iput-object p3, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mUris:[Landroid/net/Uri;

    .line 67
    iput-boolean p4, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mRemoteActivating:Z

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mCreateTime:Ljava/lang/Long;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mHandler:Landroid/os/Handler;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mState:I

    .line 72
    return-void
.end method

.method public static getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    .line 96
    :cond_7
    :goto_7
    return-object v2

    .line 77
    :cond_8
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 79
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 80
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1d
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 81
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "extension":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 84
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "mMimeType":Ljava/lang/String;
    if-nez v2, :cond_7

    .line 88
    sget-object v3, Lcom/android/nfc/handover/HandoverManager;->sMimeCheckList:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_7

    .line 95
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "mMimeType":Ljava/lang/String;
    :cond_4b
    const-string v3, "BluetoothOppHandover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not determine mime type for Uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method


# virtual methods
.method complete()V
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mState:I

    .line 123
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_9

    .line 149
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothOppHandover;->sendIntent()V

    .line 150
    const/4 v0, 0x1

    .line 152
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method sendIntent()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.android.bluetooth"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mUris:[Landroid/net/Uri;

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcom/android/nfc/handover/BluetoothOppHandover;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mUris:[Landroid/net/Uri;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_43

    .line 132
    const-string v3, "android.btopp.intent.action.HANDOVER_SEND"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mUris:[Landroid/net/Uri;

    aget-object v4, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    :goto_33
    const-string v3, "BluetoothOppHandover"

    const-string v4, "Handing off outging transfer to BT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothOppHandover;->complete()V

    .line 143
    return-void

    .line 135
    :cond_43
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mUris:[Landroid/net/Uri;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 136
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v3, "android.btopp.intent.action.HANDOVER_SEND_MULTIPLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_33
.end method

.method public start()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x1388

    .line 105
    iget-boolean v1, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mRemoteActivating:Z

    if-eqz v1, :cond_2e

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 107
    .local v0, "timeElapsed":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-gez v1, :cond_2a

    .line 108
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothOppHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v5, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    .end local v0    # "timeElapsed":Ljava/lang/Long;
    :goto_29
    return-void

    .line 113
    .restart local v0    # "timeElapsed":Ljava/lang/Long;
    :cond_2a
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothOppHandover;->sendIntent()V

    goto :goto_29

    .line 117
    .end local v0    # "timeElapsed":Ljava/lang/Long;
    :cond_2e
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothOppHandover;->sendIntent()V

    goto :goto_29
.end method
