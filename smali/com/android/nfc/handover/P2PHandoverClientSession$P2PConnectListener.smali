.class public interface abstract Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectListener;
.super Ljava/lang/Object;
.source "P2PHandoverClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandoverClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "P2PConnectListener"
.end annotation


# virtual methods
.method public abstract clientConnectSuccess(Landroid/net/wifi/p2p/WifiP2pInfo;)V
.end method

.method public abstract connectFailed()V
.end method

.method public abstract searchSuccess(Ljava/lang/String;)V
.end method
