.class public Lcom/android/nfc/handover/Handover;
.super Ljava/lang/Object;
.source "Handover.java"


# static fields
.field static final BT_HANDOVER:I = 0x3

.field static final P2P_HANDOVER:I = 0x1

.field static final WIFI_HANDOVER:I = 0x2

.field static mHandoverManager:Lcom/android/nfc/handover/HandoverManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createHandover(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;I)Lcom/android/nfc/handover/Handover;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handoverManager"    # Lcom/android/nfc/handover/HandoverManager;
    .param p2, "type"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "res":Lcom/android/nfc/handover/Handover;
    sput-object p1, Lcom/android/nfc/handover/Handover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    .line 38
    packed-switch p2, :pswitch_data_1a

    .line 49
    const/4 v0, 0x0

    .line 52
    :goto_7
    return-object v0

    .line 40
    :pswitch_8
    new-instance v0, Lcom/android/nfc/handover/P2PHandover;

    .end local v0    # "res":Lcom/android/nfc/handover/Handover;
    invoke-direct {v0, p0, p1}, Lcom/android/nfc/handover/P2PHandover;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;)V

    .line 41
    .restart local v0    # "res":Lcom/android/nfc/handover/Handover;
    goto :goto_7

    .line 43
    :pswitch_e
    new-instance v0, Lcom/android/nfc/handover/WiFiHandover;

    .end local v0    # "res":Lcom/android/nfc/handover/Handover;
    invoke-direct {v0, p0, p1}, Lcom/android/nfc/handover/WiFiHandover;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;)V

    .line 44
    .restart local v0    # "res":Lcom/android/nfc/handover/Handover;
    goto :goto_7

    .line 46
    :pswitch_14
    new-instance v0, Lcom/android/nfc/handover/BTHandover;

    .end local v0    # "res":Lcom/android/nfc/handover/Handover;
    invoke-direct {v0, p0, p1}, Lcom/android/nfc/handover/BTHandover;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverManager;)V

    .line 47
    .restart local v0    # "res":Lcom/android/nfc/handover/Handover;
    goto :goto_7

    .line 38
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_e
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public createDataRecord()Landroid/nfc/NdefRecord;
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public createFastConDataRecord()Landroid/nfc/NdefRecord;
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableDevice()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public doFastConHandover(Landroid/nfc/NdefMessage;)V
    .registers 2
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 101
    return-void
.end method

.method public doHandoverUri([Landroid/net/Uri;Landroid/nfc/NdefMessage;)V
    .registers 3
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 64
    return-void
.end method

.method public enableDevice()Z
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getHandoverManager()Lcom/android/nfc/handover/HandoverManager;
    .registers 2

    .prologue
    .line 88
    sget-object v0, Lcom/android/nfc/handover/Handover;->mHandoverManager:Lcom/android/nfc/handover/HandoverManager;

    return-object v0
.end method

.method public isDeviceEnabled()Z
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public isHandoverSupported()Z
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public onGetClientAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 84
    return-void
.end method

.method public tryFastConHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 3
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public tryHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 3
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method
