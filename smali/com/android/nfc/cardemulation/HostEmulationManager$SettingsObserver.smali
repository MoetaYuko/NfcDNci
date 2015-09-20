.class final Lcom/android/nfc/cardemulation/HostEmulationManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HostEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/HostEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;


# direct methods
.method public constructor <init>(Lcom/android/nfc/cardemulation/HostEmulationManager;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 367
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 368
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 372
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 373
    const-string v2, "HostEmulationManager"

    const-string v3, "onChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v3, v2, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 378
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 379
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    const-string v4, "payment"

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 381
    .local v0, "paymentApp":Landroid/content/ComponentName;
    if-eqz v0, :cond_27

    .line 382
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindPaymentServiceLocked(ILandroid/content/ComponentName;)V

    .line 386
    :goto_25
    monitor-exit v3

    .line 387
    return-void

    .line 384
    :cond_27
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v2, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindPaymentServiceLocked(I)V

    goto :goto_25

    .line 386
    .end local v0    # "paymentApp":Landroid/content/ComponentName;
    .end local v1    # "userId":I
    :catchall_2d
    move-exception v2

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_2d

    throw v2
.end method
