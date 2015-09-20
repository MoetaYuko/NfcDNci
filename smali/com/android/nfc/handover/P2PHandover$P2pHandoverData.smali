.class Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;
.super Ljava/lang/Object;
.source "P2PHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "P2pHandoverData"
.end annotation


# instance fields
.field configInfo:Lcom/android/nfc/handover/ConfigInfo;

.field dev_addr:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->dev_addr:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->name:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/android/nfc/handover/P2PHandover$P2pHandoverData;->configInfo:Lcom/android/nfc/handover/ConfigInfo;

    return-void
.end method
