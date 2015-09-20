.class public Lcom/android/nfc/cardemulation/AidRoutingManager;
.super Ljava/lang/Object;
.source "AidRoutingManager.java"


# static fields
.field static final DBG:Z = true

.field static final DBG_AID:Z = false

.field static final TAG:Ljava/lang/String; = "AidRoutingManager"


# instance fields
.field final mAidRoutingTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mDefaultRoute:Ljava/lang/String;

.field mDirty:Z

.field final mLock:Ljava/lang/Object;

.field final mRouteForAid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/lang/String;

    const-string v1, "TBD"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:Ljava/lang/String;

    .line 54
    const-string v0, "AidRoutingManager"

    const-string v1, "AidRoutingManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method


# virtual methods
.method public aidsRoutedToHost()Z
    .registers 6

    .prologue
    .line 58
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Ljava/util/HashMap;

    const-string v3, "DH"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 61
    .local v0, "aidsToHost":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_21

    .line 62
    const-string v1, "AidRoutingManager"

    const-string v3, "aidsRoutedToHost: zero"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_16
    if-eqz v0, :cond_41

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_41

    const/4 v1, 0x1

    :goto_1f
    monitor-exit v2

    return v1

    .line 64
    :cond_21
    const-string v1, "AidRoutingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aidsRoutedToHost: num="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 67
    .end local v0    # "aidsToHost":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_3e
    move-exception v1

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1

    .line 66
    .restart local v0    # "aidsToHost":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_41
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public commitRouting()V
    .registers 4

    .prologue
    .line 140
    const-string v0, "AidRoutingManager"

    const-string v1, "commitRouting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_a
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDirty:Z

    if-eqz v0, :cond_1a

    .line 143
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDirty:Z

    .line 148
    :goto_18
    monitor-exit v1

    .line 149
    return-void

    .line 146
    :cond_1a
    const-string v0, "AidRoutingManager"

    const-string v2, "Not committing routing because table not dirty."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 148
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_22

    throw v0
.end method

.method getRouteForAidLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    .local v0, "route":Ljava/lang/String;
    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/String;

    .end local v0    # "route":Ljava/lang/String;
    const-string v1, "NotExist"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_11
    return-object v0
.end method

.method public getRoutedAids()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 72
    .local v2, "routedAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 73
    :try_start_8
    iget-object v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    .local v0, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 76
    .end local v0    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_26
    move-exception v3

    monitor-exit v4
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_29
    :try_start_29
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_26

    .line 77
    return-object v2
.end method

.method public onNfccRoutingTableCleared()V
    .registers 3

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 116
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 117
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public removeAid(Ljava/lang/String;)Z
    .registers 9
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    iget-object v4, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 122
    :try_start_5
    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    .local v1, "hostNameToRoute":Ljava/lang/String;
    if-nez v1, :cond_29

    .line 124
    const-string v3, "AidRoutingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeAid(): No existing route for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    monitor-exit v4

    .line 136
    :goto_28
    return v2

    .line 127
    :cond_29
    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 128
    .local v0, "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_38

    monitor-exit v4

    goto :goto_28

    .line 135
    .end local v0    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "hostNameToRoute":Ljava/lang/String;
    :catchall_35
    move-exception v2

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_35

    throw v2

    .line 129
    .restart local v0    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "hostNameToRoute":Ljava/lang/String;
    :cond_38
    :try_start_38
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 130
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 132
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->unrouteAids(Ljava/lang/String;)V

    .line 133
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDirty:Z

    .line 135
    :cond_52
    monitor-exit v4
    :try_end_53
    .catchall {:try_start_38 .. :try_end_53} :catchall_35

    move v2, v3

    .line 136
    goto :goto_28
.end method

.method public setDefaultRoute(Ljava/lang/String;)V
    .registers 8
    .param p1, "seName"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v3, "AidRoutingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDefaultRoute() from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v4, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 159
    :try_start_27
    iget-object v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_90

    .line 160
    iget-object v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 161
    .local v1, "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_62

    .line 162
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    .local v0, "aid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:Ljava/lang/String;

    invoke-virtual {v3, v0, v5}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 189
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_5c
    move-exception v3

    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_27 .. :try_end_5e} :catchall_5c

    throw v3

    .line 168
    .restart local v1    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_5f
    const/4 v3, 0x1

    :try_start_60
    iput-boolean v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDirty:Z

    .line 172
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_62
    iget-object v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/Set;

    .line 173
    .restart local v1    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_8c

    .line 174
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 176
    .restart local v0    # "aid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/nfc/NfcService;->unrouteAids(Ljava/lang/String;)V

    goto :goto_70

    .line 180
    .end local v0    # "aid":Ljava/lang/String;
    :cond_89
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDirty:Z

    .line 184
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_8c
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:Ljava/lang/String;

    .line 189
    .end local v1    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_8e
    monitor-exit v4

    .line 190
    return-void

    .line 187
    :cond_90
    const-string v3, "AidRoutingManager"

    const-string v5, "Not changing default route because it\'s not changed."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_60 .. :try_end_97} :catchall_5c

    goto :goto_8e
.end method

.method public setRouteForAid(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "hostNameToRoute"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 81
    iget-object v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 82
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/AidRoutingManager;->getRouteForAidLocked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "currentRoute":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    monitor-exit v3

    .line 104
    :goto_f
    return v4

    .line 88
    :cond_10
    const-string v2, "NotExist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/AidRoutingManager;->removeAid(Ljava/lang/String;)Z

    .line 92
    :cond_1b
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 93
    .local v0, "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_2f

    .line 94
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 95
    .restart local v0    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_2f
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 100
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDirty:Z

    .line 103
    :cond_49
    monitor-exit v3

    goto :goto_f

    .end local v0    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "currentRoute":Ljava/lang/String;
    :catchall_4b
    move-exception v2

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_4b

    throw v2
.end method
