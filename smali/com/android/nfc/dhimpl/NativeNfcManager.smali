.class public Lcom/android/nfc/dhimpl/NativeNfcManager;
.super Ljava/lang/Object;
.source "NativeNfcManager.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost;


# static fields
.field static final DEFAULT_LLCP_MIU:I = 0x7bc

.field static final DEFAULT_LLCP_RWSIZE:I = 0x2

.field static final DRIVER_NAME:Ljava/lang/String; = "android-nci"

.field private static final EE_WIPE_APDUS:[[B

.field public static final INTERNAL_TARGET_DESELECTED_ACTION:Ljava/lang/String; = "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

.field static final PREF:Ljava/lang/String; = "NciDeviceHost"

.field static final PREF_RESET_COUNT:Ljava/lang/String; = "pref_reset_count"

.field private static final TAG:Ljava/lang/String; = "NativeNfcManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

.field private mNative:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x5

    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_46

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [B

    fill-array-data v2, :array_4e

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_5a

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_62

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v4, [B

    fill-array-data v2, :array_6a

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_76

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_7e

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->EE_WIPE_APDUS:[[B

    .line 69
    const-string v0, "nfcD_nci_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 70
    return-void

    .line 56
    nop

    :array_46
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x0t
    .end array-data

    nop

    :array_4e
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x7t
        -0x60t
        0x0t
        0x0t
        0x4t
        0x76t
        0x20t
        0x10t
        0x0t
    .end array-data

    nop

    :array_5a
    .array-data 1
        -0x80t
        -0x1et
        0x1t
        0x3t
        0x0t
    .end array-data

    nop

    :array_62
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6a
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x7t
        -0x60t
        0x0t
        0x0t
        0x4t
        0x76t
        0x30t
        0x30t
        0x0t
    .end array-data

    nop

    :array_76
    .array-data 1
        -0x80t
        -0x4ct
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_7e
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .line 83
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->initializeNativeStructure()Z

    .line 84
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method

.method private native doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;
.end method

.method private native doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;
.end method

.method private native doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;
.end method

.method private native doDeinitialize()Z
.end method

.method private native doDisableReaderMode()Z
.end method

.method private native doDownload()Z
.end method

.method private native doDump()Ljava/lang/String;
.end method

.method private native doEnableReaderMode(I)Z
.end method

.method private native doGetDefaultActiveSecureElement()Ljava/lang/String;
.end method

.method private native doGetEeRoutingReloadAtReboot()Z
.end method

.method private native doGetEeRoutingState()I
.end method

.method private native doGetRamDump(II)[B
.end method

.method private native doGetTimeout(I)I
.end method

.method private native doInitialize()Z
.end method

.method private native doIsSwitchOffCeModeEnabled()Z
.end method

.method private native doIsUiStateSupported()Z
.end method

.method private native doNfcDeactivate(I)Z
.end method

.method private native doReportReason(I)V
.end method

.method private native doResetTimeouts()V
.end method

.method private native doSetP2pInitiatorModes(I)V
.end method

.method private native doSetP2pTargetModes(I)V
.end method

.method private native doSetTimeout(II)Z
.end method

.method private native do_dta_get_pattern_number()I
.end method

.method private native do_dta_set_pattern_number(I)V
.end method

.method private notifyHciEventConnectivity(I)V
    .registers 5
    .param p1, "nfceeId"    # I

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetSecureElementName(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "seName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 530
    .local v1, "slotId":I
    const-string v2, "SIM - UICC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "SIM1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 532
    :cond_15
    const/4 v1, 0x0

    .line 536
    :cond_16
    :goto_16
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    .line 537
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v2, v1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationHciEvtConnectivity(I)V

    .line 539
    :cond_1e
    return-void

    .line 533
    :cond_1f
    const-string v2, "SIM2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 534
    const/4 v1, 0x1

    goto :goto_16
.end method

.method private notifyHostEmuActivated()V
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationActivated()V

    .line 592
    return-void
.end method

.method private notifyHostEmuData([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationData([B)V

    .line 596
    return-void
.end method

.method private notifyHostEmuDeactivated()V
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationDeactivated()V

    .line 600
    return-void
.end method

.method private notifyLlcpLinkActivation(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 546
    return-void
.end method

.method private notifyLlcpLinkDeactivated(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 553
    return-void
.end method

.method private notifyLlcpLinkFirstPacketReceived(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 560
    return-void
.end method

.method private notifyNdefMessageListeners(Lcom/android/nfc/dhimpl/NativeNfcTag;)V
    .registers 3
    .param p1, "tag"    # Lcom/android/nfc/dhimpl/NativeNfcTag;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 508
    return-void
.end method

.method private notifyNfccInfo([B)V
    .registers 3
    .param p1, "nfccinfo"    # [B

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onNfccInit([B)V

    .line 612
    return-void
.end method

.method private notifySeApduReceived([B)V
    .registers 3
    .param p1, "apdu"    # [B

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeApduReceived([B)V

    .line 580
    return-void
.end method

.method private notifySeEmvCardRemoval()V
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeEmvCardRemoval()V

    .line 584
    return-void
.end method

.method private notifySeFieldActivated()V
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldActivated()V

    .line 564
    return-void
.end method

.method private notifySeFieldDeactivated()V
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldDeactivated()V

    .line 568
    return-void
.end method

.method private notifySeListenActivated()V
    .registers 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeListenActivated()V

    .line 572
    return-void
.end method

.method private notifySeListenDeactivated()V
    .registers 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeListenDeactivated()V

    .line 576
    return-void
.end method

.method private notifySeMifareAccess([B)V
    .registers 3
    .param p1, "block"    # [B

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeMifareAccess([B)V

    .line 588
    return-void
.end method

.method private notifyTargetDeselected()V
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationDeselected()V

    .line 515
    return-void
.end method

.method private notifyTransactionListeners([B)V
    .registers 3
    .param p1, "dataBuf"    # [B

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationAidSelected([B)V

    .line 522
    return-void
.end method

.method private notifyUpdateResetCounter(Z)V
    .registers 8
    .param p1, "reset"    # Z

    .prologue
    const/4 v5, 0x0

    .line 619
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v4, "NciDeviceHost"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 621
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "pref_reset_count"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 623
    .local v0, "count":I
    if-eqz p1, :cond_1f

    .line 624
    const/4 v0, 0x0

    .line 629
    :goto_12
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 630
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_reset_count"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 631
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 632
    return-void

    .line 626
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_12
.end method

.method private updateHostCallBack()V
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onUpdateHostCallBack()V

    .line 604
    return-void
.end method


# virtual methods
.method public GetRamDump(II)[B
    .registers 4
    .param p1, "addr"    # I
    .param p2, "len"    # I

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetRamDump(II)[B

    move-result-object v0

    .line 360
    .local v0, "result":[B
    return-object v0
.end method

.method public canMakeReadOnly(I)Z
    .registers 4
    .param p1, "ndefType"    # I

    .prologue
    const/4 v0, 0x1

    .line 391
    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public checkFirmware()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDownload()Z

    .line 96
    return-void
.end method

.method public createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .registers 8
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;

    move-result-object v1

    .line 253
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    if-eqz v1, :cond_7

    .line 254
    return-object v1

    .line 257
    :cond_7
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 259
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    packed-switch v0, :pswitch_data_38

    .line 266
    :pswitch_2a
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 264
    :pswitch_32
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 261
    :pswitch_data_38
    .packed-switch -0xc
        :pswitch_32
        :pswitch_2a
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .registers 11
    .param p1, "nSap"    # I
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
    .line 276
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;

    move-result-object v1

    .line 277
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    if-eqz v1, :cond_7

    .line 278
    return-object v1

    .line 281
    :cond_7
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 283
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    packed-switch v0, :pswitch_data_38

    .line 290
    :pswitch_2a
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 288
    :pswitch_32
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 285
    :pswitch_data_38
    .packed-switch -0xc
        :pswitch_32
        :pswitch_2a
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .registers 10
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
    .line 300
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;

    move-result-object v1

    .line 301
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v1, :cond_7

    .line 302
    return-object v1

    .line 305
    :cond_7
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 307
    .local v0, "error":I
    const-string v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    packed-switch v0, :pswitch_data_38

    .line 314
    :pswitch_2a
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 312
    :pswitch_32
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 309
    :pswitch_data_38
    .packed-switch -0xc
        :pswitch_32
        :pswitch_2a
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method

.method public native deactivateRfInterface()V
.end method

.method public deinitialize()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 181
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v3, "NciDeviceHost"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 182
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "se_wired"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDeinitialize()Z

    move-result v2

    return v2
.end method

.method public native disableDiscovery()Z
.end method

.method public disableReaderMode()Z
    .registers 2

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDisableReaderMode()Z

    move-result v0

    return v0
.end method

.method public native disableRoutingToHost()V
.end method

.method public doAbort()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 338
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v3, "NciDeviceHost"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 339
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_reset_count"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 340
    .local v0, "count":I
    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doAbortCount(I)V

    .line 341
    return-void
.end method

.method public native doAbortCount(I)V
.end method

.method public native doActivateLlcp()Z
.end method

.method public native doActivateSwp(B)Z
.end method

.method public native doCheckLlcp()Z
.end method

.method public native doDeselectSecureElement()V
.end method

.method public native doGetLastError()I
.end method

.method public native doGetNfceeId(Ljava/lang/String;)I
.end method

.method public native doGetSecureElementList()Ljava/lang/String;
.end method

.method public native doGetSecureElementName(I)Ljava/lang/String;
.end method

.method public native doSelectSecureElement(Ljava/lang/String;)Z
.end method

.method public native doSetDefaultRoute(Ljava/lang/String;)Z
.end method

.method public dta_get_pattern_number()I
    .registers 2

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->do_dta_get_pattern_number()I

    move-result v0

    .line 374
    .local v0, "receivedPattern":I
    return v0
.end method

.method public dta_set_pattern_number(I)V
    .registers 2
    .param p1, "pattern"    # I

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->do_dta_set_pattern_number(I)V

    .line 368
    return-void
.end method

.method public dump()Ljava/lang/String;
    .registers 2

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDump()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native enableDiscovery()Z
.end method

.method public enablePN544Quirks()Z
    .registers 2

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public enableReaderMode(I)Z
    .registers 3
    .param p1, "technologies"    # I

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableReaderMode(I)Z

    move-result v0

    return v0
.end method

.method public native enableRoutingToHost()V
.end method

.method public getDefaultActiveSecureElement()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetDefaultActiveSecureElement()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "defaultSEName":Ljava/lang/String;
    return-object v0
.end method

.method public getDefaultLlcpMiu()I
    .registers 2

    .prologue
    .line 475
    const/16 v0, 0x7bc

    return v0
.end method

.method public getDefaultLlcpRwSize()I
    .registers 2

    .prologue
    .line 480
    const/4 v0, 0x2

    return v0
.end method

.method public getEeRoutingReloadAtReboot()Z
    .registers 2

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetEeRoutingReloadAtReboot()Z

    move-result v0

    .line 149
    .local v0, "reload":Z
    return v0
.end method

.method public getEeRoutingState()I
    .registers 4

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "num":I
    const-string v1, "ro.config.nfc_secure_off"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 135
    const/4 v0, 0x3

    .line 140
    :goto_b
    return v0

    .line 137
    :cond_c
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetEeRoutingState()I

    move-result v0

    goto :goto_b
.end method

.method public getExtendedLengthApdusSupported()Z
    .registers 2

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTransceiveLength(I)I
    .registers 5
    .param p1, "technology"    # I

    .prologue
    const/16 v0, 0x400

    const/16 v1, 0xfd

    .line 400
    sparse-switch p1, :sswitch_data_2c

    .line 440
    const/4 v0, 0x0

    :cond_8
    :goto_8
    return v0

    .line 404
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->in_dta_mode()Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 407
    goto :goto_8

    :sswitch_11
    move v0, v1

    .line 413
    goto :goto_8

    :sswitch_13
    move v0, v1

    .line 415
    goto :goto_8

    .line 424
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->in_dta_mode()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 429
    const v0, 0x10009

    goto :goto_8

    .line 431
    :cond_1f
    const/16 v0, 0x105

    goto :goto_8

    .line 434
    :sswitch_22
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->in_dta_mode()Z

    move-result v1

    if-nez v1, :cond_8

    .line 437
    const/16 v0, 0xfc

    goto :goto_8

    .line 400
    nop

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_11
        0x3 -> :sswitch_15
        0x4 -> :sswitch_22
        0x5 -> :sswitch_13
        0x8 -> :sswitch_9
        0x9 -> :sswitch_9
        0x37 -> :sswitch_15
        0x39 -> :sswitch_15
    .end sparse-switch
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    const-string v0, "android-nci"

    return-object v0
.end method

.method public getTimeout(I)I
    .registers 3
    .param p1, "tech"    # I

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetTimeout(I)I

    move-result v0

    return v0
.end method

.method public getWipeApdus()[[B
    .registers 2

    .prologue
    .line 470
    sget-object v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->EE_WIPE_APDUS:[[B

    return-object v0
.end method

.method public in_dta_mode()Z
    .registers 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->dta_get_pattern_number()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public initialize()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 102
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string v3, "NciDeviceHost"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "se_wired"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 107
    const-wide/16 v2, 0x2ee0

    :try_start_17
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 108
    const-string v2, "se_wired"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_23} :catch_28

    .line 113
    :cond_23
    :goto_23
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doInitialize()Z

    move-result v2

    return v2

    .line 110
    :catch_28
    move-exception v2

    goto :goto_23
.end method

.method public native initializeNativeStructure()Z
.end method

.method public isSwitchOffCeModeEnabled()Z
    .registers 2

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doIsSwitchOffCeModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isUiStateSupported()Z
    .registers 2

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doIsUiStateSupported()Z

    move-result v0

    return v0
.end method

.method public nfcDeactivate(I)Z
    .registers 3
    .param p1, "deactivationType"    # I

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doNfcDeactivate(I)Z

    move-result v0

    return v0
.end method

.method public nfcShutdownReason(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doReportReason(I)V

    .line 120
    return-void
.end method

.method public resetTimeouts()V
    .registers 1

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doResetTimeouts()V

    .line 330
    return-void
.end method

.method public native routeAid([BI)Z
.end method

.method public native sendRawFrame([B)Z
.end method

.method public setP2pInitiatorModes(I)V
    .registers 2
    .param p1, "modes"    # I

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pInitiatorModes(I)V

    .line 449
    return-void
.end method

.method public setP2pTargetModes(I)V
    .registers 2
    .param p1, "modes"    # I

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pTargetModes(I)V

    .line 455
    return-void
.end method

.method public setTimeout(II)Z
    .registers 4
    .param p1, "tech"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetTimeout(II)Z

    move-result v0

    return v0
.end method

.method public native unrouteAid([B)Z
.end method

.method public native updateHostPresence(II)V
.end method
