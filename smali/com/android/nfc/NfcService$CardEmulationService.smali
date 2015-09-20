.class final Lcom/android/nfc/NfcService$CardEmulationService;
.super Landroid/nfc/INfcCardEmulation$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CardEmulationService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 2

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcCardEmulation$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getServices(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-nez v0, :cond_8

    .line 1796
    const/4 v0, 0x0

    .line 1800
    :goto_7
    return-object v0

    .line 1798
    :cond_8
    invoke-static {p1}, Lcom/android/nfc/NfcService;->validateUserId(I)V

    .line 1799
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->enforceAdminPerm(Landroid/content/Context;)V

    .line 1800
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/RegisteredAidCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->getServicesForCategory(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_7
.end method

.method public isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-nez v0, :cond_8

    .line 1762
    const/4 v0, 0x0

    .line 1766
    :goto_7
    return v0

    .line 1764
    :cond_8
    invoke-static {p1}, Lcom/android/nfc/NfcService;->validateUserId(I)V

    .line 1765
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NFC"

    const-string v2, "NFC permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/RegisteredAidCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method public isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-nez v0, :cond_8

    .line 1751
    const/4 v0, 0x0

    .line 1755
    :goto_7
    return v0

    .line 1753
    :cond_8
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NFC"

    const-string v2, "NFC permission required"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    invoke-static {p1}, Lcom/android/nfc/NfcService;->validateUserId(I)V

    .line 1755
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/RegisteredAidCache;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isDefaultServiceForCategory(ILjava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    goto :goto_7
.end method

.method public setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-nez v0, :cond_8

    .line 1784
    const/4 v0, 0x0

    .line 1789
    :goto_7
    return v0

    .line 1786
    :cond_8
    invoke-static {p1}, Lcom/android/nfc/NfcService;->validateUserId(I)V

    .line 1787
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->enforceAdminPerm(Landroid/content/Context;)V

    .line 1788
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/HostEmulationManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/nfc/cardemulation/HostEmulationManager;->setDefaultForNextTap(Landroid/content/ComponentName;)V

    .line 1789
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/RegisteredAidCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setDefaultForNextTap(ILandroid/content/ComponentName;)Z

    move-result v0

    goto :goto_7
.end method

.method public setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-nez v0, :cond_8

    .line 1773
    const/4 v0, 0x0

    .line 1777
    :goto_7
    return v0

    .line 1775
    :cond_8
    invoke-static {p1}, Lcom/android/nfc/NfcService;->validateUserId(I)V

    .line 1776
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->enforceAdminPerm(Landroid/content/Context;)V

    .line 1777
    iget-object v0, p0, Lcom/android/nfc/NfcService$CardEmulationService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/RegisteredAidCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method
