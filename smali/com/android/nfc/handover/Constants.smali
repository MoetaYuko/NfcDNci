.class public Lcom/android/nfc/handover/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final supportHWBeam:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8
    const-string v0, "ro.config.hw_nfc_beam"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/handover/Constants;->supportHWBeam:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
