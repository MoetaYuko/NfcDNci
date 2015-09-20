.class final Lcom/android/nfc/cardemulation/RegisteredAidCache$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "RegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredAidCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;


# direct methods
.method public constructor <init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 84
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 85
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 89
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 90
    const-string v2, "RegisteredAidCache"

    const-string v3, "onChange of SettingsObserver"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 95
    :try_start_f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 96
    .local v1, "currentUser":I
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v2, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateFromSettingsLocked(I)Z

    move-result v0

    .line 97
    .local v0, "changed":Z
    if-eqz v0, :cond_27

    .line 98
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 99
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked()V

    .line 103
    :goto_25
    monitor-exit v3

    .line 104
    return-void

    .line 101
    :cond_27
    const-string v2, "RegisteredAidCache"

    const-string v4, "Not updating aid cache + routing: nothing changed."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 103
    .end local v0    # "changed":Z
    .end local v1    # "currentUser":I
    :catchall_2f
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_2f

    throw v2
.end method
