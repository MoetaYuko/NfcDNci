.class public interface abstract Lcom/android/nfc/DeviceHost;
.super Ljava/lang/Object;
.source "DeviceHost.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;,
        Lcom/android/nfc/DeviceHost$LlcpServerSocket;,
        Lcom/android/nfc/DeviceHost$LlcpSocket;,
        Lcom/android/nfc/DeviceHost$NfcDepEndpoint;,
        Lcom/android/nfc/DeviceHost$NfceeEndpoint;,
        Lcom/android/nfc/DeviceHost$TagEndpoint;,
        Lcom/android/nfc/DeviceHost$DeviceHostListener;
    }
.end annotation


# virtual methods
.method public abstract GetRamDump(II)[B
.end method

.method public abstract canMakeReadOnly(I)Z
.end method

.method public abstract checkFirmware()V
.end method

.method public abstract createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation
.end method

.method public abstract deactivateRfInterface()V
.end method

.method public abstract deinitialize()Z
.end method

.method public abstract disableDiscovery()Z
.end method

.method public abstract disableReaderMode()Z
.end method

.method public abstract disableRoutingToHost()V
.end method

.method public abstract doAbort()V
.end method

.method public abstract doActivateLlcp()Z
.end method

.method public abstract doActivateSwp(B)Z
.end method

.method public abstract doCheckLlcp()Z
.end method

.method public abstract doDeselectSecureElement()V
.end method

.method public abstract doGetNfceeId(Ljava/lang/String;)I
.end method

.method public abstract doGetSecureElementList()Ljava/lang/String;
.end method

.method public abstract doGetSecureElementName(I)Ljava/lang/String;
.end method

.method public abstract doSelectSecureElement(Ljava/lang/String;)Z
.end method

.method public abstract doSetDefaultRoute(Ljava/lang/String;)Z
.end method

.method public abstract dta_get_pattern_number()I
.end method

.method public abstract dta_set_pattern_number(I)V
.end method

.method public abstract dump()Ljava/lang/String;
.end method

.method public abstract enableDiscovery()Z
.end method

.method public abstract enablePN544Quirks()Z
.end method

.method public abstract enableReaderMode(I)Z
.end method

.method public abstract enableRoutingToHost()V
.end method

.method public abstract getDefaultActiveSecureElement()Ljava/lang/String;
.end method

.method public abstract getDefaultLlcpMiu()I
.end method

.method public abstract getDefaultLlcpRwSize()I
.end method

.method public abstract getEeRoutingReloadAtReboot()Z
.end method

.method public abstract getEeRoutingState()I
.end method

.method public abstract getExtendedLengthApdusSupported()Z
.end method

.method public abstract getMaxTransceiveLength(I)I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTimeout(I)I
.end method

.method public abstract getWipeApdus()[[B
.end method

.method public abstract in_dta_mode()Z
.end method

.method public abstract initialize()Z
.end method

.method public abstract isSwitchOffCeModeEnabled()Z
.end method

.method public abstract isUiStateSupported()Z
.end method

.method public abstract nfcDeactivate(I)Z
.end method

.method public abstract nfcShutdownReason(I)V
.end method

.method public abstract resetTimeouts()V
.end method

.method public abstract routeAid([BI)Z
.end method

.method public abstract sendRawFrame([B)Z
.end method

.method public abstract setP2pInitiatorModes(I)V
.end method

.method public abstract setP2pTargetModes(I)V
.end method

.method public abstract setTimeout(II)Z
.end method

.method public abstract unrouteAid([B)Z
.end method

.method public abstract updateHostPresence(II)V
.end method
