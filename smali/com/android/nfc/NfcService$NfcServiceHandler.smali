.class final Lcom/android/nfc/NfcService$NfcServiceHandler;
.super Landroid/os/Handler;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcServiceHandler"
.end annotation


# instance fields
.field presenceCheckDelay:I

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 3

    .prologue
    .line 3183
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 3184
    const/16 v0, 0x7d

    iput v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->presenceCheckDelay:I

    return-void
.end method

.method private dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .registers 11
    .param p1, "tagEndpoint"    # Lcom/android/nfc/DeviceHost$TagEndpoint;
    .param p2, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .prologue
    const/4 v7, 0x1

    .line 3726
    new-instance v0, Landroid/nfc/Tag;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v1

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v2

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    .line 3728
    .local v0, "tag":Landroid/nfc/Tag;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 3729
    if-eqz p2, :cond_3f

    .line 3731
    :try_start_21
    iget v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_2d

    .line 3732
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 3734
    :cond_2d
    iget-object v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    if-eqz v1, :cond_3f

    .line 3735
    iget-object v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    invoke-interface {v1, v0}, Landroid/nfc/IAppCallback;->onTagDiscovered(Landroid/nfc/Tag;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_36} :catch_37
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_36} :catch_5b

    .line 3755
    :goto_36
    return-void

    .line 3740
    :catch_37
    move-exception v6

    .line 3741
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "NfcService"

    const-string v2, "Reader mode remote has died, falling back."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_3f
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 3750
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->unregisterObject(I)V

    .line 3751
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_36

    .line 3743
    :catch_5b
    move-exception v6

    .line 3745
    .local v6, "e":Ljava/lang/Exception;
    const-string v1, "NfcService"

    const-string v2, "App exception, not dispatching."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 3753
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_64
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v7}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_36
.end method

.method private llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z
    .registers 6
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    const/4 v0, 0x1

    .line 3671
    const-string v1, "NfcService"

    const-string v2, "LLCP Activation message"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v1

    if-nez v1, :cond_5a

    .line 3675
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->connect()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 3677
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 3679
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 3681
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 3683
    :try_start_2f
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3684
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_47

    .line 3685
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated()V

    .line 3722
    :goto_46
    return v0

    .line 3684
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v1
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0

    .line 3689
    :cond_4a
    const-string v0, "NfcService"

    const-string v1, "Initiator LLCP activation failed. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 3722
    :cond_54
    :goto_54
    const/4 v0, 0x0

    goto :goto_46

    .line 3694
    :cond_56
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_54

    .line 3703
    :cond_5a
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v1

    if-ne v1, v0, :cond_54

    .line 3706
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 3708
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 3710
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 3712
    :try_start_7b
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3713
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_7b .. :try_end_8b} :catchall_93

    .line 3714
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated()V

    goto :goto_46

    .line 3713
    :catchall_93
    move-exception v0

    :try_start_94
    monitor-exit v1
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v0

    .line 3718
    :cond_96
    const-string v0, "NfcService"

    const-string v1, "checkLlcp failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54
.end method

.method private sendSeBroadcast(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3654
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3656
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 3658
    monitor-enter p0

    .line 3659
    :try_start_f
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 3660
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_17

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_17

    .line 3661
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfceeAccessControl;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 3662
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3663
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_17

    .line 3667
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    :catchall_42
    move-exception v2

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_f .. :try_end_44} :catchall_42

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_45
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_42

    .line 3668
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 58
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3187
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v52, v0

    packed-switch v52, :pswitch_data_8b6

    .line 3648
    :pswitch_9
    const-string v52, "NfcService"

    const-string v53, "Unknown message received"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    :cond_10
    :goto_10
    return-void

    .line 3189
    :pswitch_11
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    .line 3190
    .local v44, "route":I
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 3191
    .local v5, "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v52

    invoke-static {v5}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v53

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    move/from16 v2, v44

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/DeviceHost;->routeAid([BI)Z

    goto :goto_10

    .line 3196
    .end local v5    # "aid":Ljava/lang/String;
    .end local v44    # "route":I
    :pswitch_35
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 3197
    .restart local v5    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v52

    invoke-static {v5}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v53

    invoke-interface/range {v52 .. v53}, Lcom/android/nfc/DeviceHost;->unrouteAid([B)Z

    goto :goto_10

    .line 3201
    .end local v5    # "aid":Ljava/lang/String;
    :pswitch_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-virtual/range {v52 .. v53}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto :goto_10

    .line 3205
    :pswitch_59
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/nfc/NdefMessage;

    .line 3206
    .local v36, "ndefMsg":Landroid/nfc/NdefMessage;
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 3207
    .local v22, "extras":Landroid/os/Bundle;
    const-string v52, "ndefmsg"

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3208
    const-string v52, "ndefmaxlength"

    const/16 v53, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3209
    const-string v52, "ndefcardstate"

    const/16 v53, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3210
    const-string v52, "ndeftype"

    const/16 v53, -0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v52

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3211
    const/16 v52, 0x1

    move/from16 v0, v52

    new-array v0, v0, [B

    move-object/from16 v52, v0

    const/16 v53, 0x0

    const/16 v54, 0x0

    aput-byte v54, v52, v53

    const/16 v53, 0x1

    move/from16 v0, v53

    new-array v0, v0, [I

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const/16 v55, 0x6

    aput v55, v53, v54

    const/16 v54, 0x1

    move/from16 v0, v54

    new-array v0, v0, [Landroid/os/Bundle;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    aput-object v22, v54, v55

    invoke-static/range {v52 .. v54}, Landroid/nfc/Tag;->createMockTag([B[I[Landroid/os/Bundle;)Landroid/nfc/Tag;

    move-result-object v50

    .line 3214
    .local v50, "tag":Landroid/nfc/Tag;
    const-string v52, "NfcService"

    const-string v53, "mock NDEF tag, starting corresponding activity"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    const-string v52, "NfcService"

    invoke-virtual/range {v50 .. v50}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)Z

    move-result v17

    .line 3217
    .local v17, "delivered":Z
    if-eqz v17, :cond_f5

    .line 3218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-virtual/range {v52 .. v53}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_10

    .line 3220
    :cond_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    const/16 v53, 0x2

    invoke-virtual/range {v52 .. v53}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_10

    .line 3227
    .end local v17    # "delivered":Z
    .end local v22    # "extras":Landroid/os/Bundle;
    .end local v36    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v50    # "tag":Landroid/nfc/Tag;
    :pswitch_102
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3228
    .local v50, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/16 v43, 0x0

    .line 3229
    .local v43, "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    const/16 v42, 0x7d

    .line 3230
    .local v42, "presenceCheckDelay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v53, v0

    monitor-enter v53

    .line 3231
    :try_start_115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    move-object/from16 v43, v0

    .line 3232
    monitor-exit v53
    :try_end_122
    .catchall {:try_start_115 .. :try_end_122} :catchall_14a

    .line 3233
    if-eqz v43, :cond_14d

    .line 3234
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->presenceCheckDelay:I

    move/from16 v42, v0

    .line 3235
    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    move/from16 v52, v0

    move/from16 v0, v52

    and-int/lit16 v0, v0, 0x80

    move/from16 v52, v0

    if-eqz v52, :cond_14d

    .line 3237
    move-object/from16 v0, v50

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(I)V

    .line 3238
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_10

    .line 3232
    :catchall_14a
    move-exception v52

    :try_start_14b
    monitor-exit v53
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_14a

    throw v52

    .line 3242
    :cond_14d
    if-eqz v43, :cond_15d

    move-object/from16 v0, v43

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    move/from16 v52, v0

    move/from16 v0, v52

    and-int/lit16 v0, v0, 0x100

    move/from16 v52, v0

    if-nez v52, :cond_168

    .line 3244
    :cond_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 3247
    :cond_168
    const/16 v52, 0x8

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->hasTech(I)Z

    move-result v52

    if-eqz v52, :cond_188

    .line 3250
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 3251
    const/16 v52, 0x1f4

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(I)V

    goto/16 :goto_10

    .line 3255
    :cond_188
    invoke-interface/range {v50 .. v50}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v52

    const/16 v53, 0xa

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_1a6

    .line 3261
    move-object/from16 v0, v50

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(I)V

    .line 3262
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_10

    .line 3266
    :cond_1a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/nfc/NfcService$NfcAdapterService;->in_dta_mode()Z

    move-result v52

    if-nez v52, :cond_1f8

    .line 3268
    invoke-interface/range {v50 .. v50}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    move-result-object v36

    .line 3270
    .restart local v36    # "ndefMsg":Landroid/nfc/NdefMessage;
    if-eqz v36, :cond_1d0

    .line 3271
    move-object/from16 v0, v50

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(I)V

    .line 3272
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_10

    .line 3274
    :cond_1d0
    invoke-interface/range {v50 .. v50}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v52

    if-eqz v52, :cond_1e8

    .line 3275
    move-object/from16 v0, v50

    move/from16 v1, v42

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(I)V

    .line 3276
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_10

    .line 3278
    :cond_1e8
    invoke-interface/range {v50 .. v50}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 3279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    const/16 v53, 0x2

    invoke-virtual/range {v52 .. v53}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_10

    .line 3285
    .end local v36    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_1f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/nfc/NfcService$NfcAdapterService;->in_dta_mode()Z

    move-result v52

    if-eqz v52, :cond_211

    move-object/from16 v52, v50

    .line 3289
    check-cast v52, Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-virtual/range {v52 .. v52}, Lcom/android/nfc/dhimpl/NativeNfcTag;->dta_fake_ndef_tech()V

    .line 3293
    :cond_211
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 3297
    const/16 v52, 0x1

    move-object/from16 v0, v50

    move/from16 v1, v52

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->setIsPresent(Z)V

    goto/16 :goto_10

    .line 3307
    .end local v42    # "presenceCheckDelay":I
    .end local v43    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    .end local v50    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :pswitch_225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/HostEmulationManager;

    move-result-object v52

    if-eqz v52, :cond_23e

    .line 3308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/HostEmulationManager;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Lcom/android/nfc/cardemulation/HostEmulationManager;->notifyOffHostAidSelected()V

    .line 3310
    :cond_23e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, [B

    move-object/from16 v15, v52

    check-cast v15, [B

    .line 3311
    .local v15, "dataBuf":[B
    const/4 v5, 0x0

    .line 3312
    .local v5, "aid":[B
    const/16 v40, 0x0

    .line 3313
    .local v40, "param":[B
    const/16 v39, 0x0

    .line 3315
    .local v39, "nfceeId":[B
    const/16 v52, 0x1

    move/from16 v0, v52

    new-array v0, v0, [B

    move-object/from16 v39, v0

    .line 3316
    const/16 v52, 0x0

    const/16 v53, 0x0

    aget-byte v53, v15, v53

    aput-byte v53, v39, v52

    .line 3318
    const/16 v52, 0x1

    aget-byte v29, v15, v52

    .line 3319
    .local v29, "lengthOfAid":I
    const/16 v30, 0x0

    .line 3320
    .local v30, "lengthOfParam":I
    array-length v0, v15

    move/from16 v52, v0

    add-int/lit8 v53, v29, 0x2

    move/from16 v0, v52

    move/from16 v1, v53

    if-le v0, v1, :cond_274

    .line 3321
    add-int/lit8 v52, v29, 0x2

    aget-byte v30, v15, v52

    .line 3323
    :cond_274
    if-lez v29, :cond_28b

    .line 3324
    move/from16 v0, v29

    new-array v5, v0, [B

    .line 3325
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_27c
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_28b

    .line 3326
    add-int/lit8 v52, v25, 0x2

    aget-byte v52, v15, v52

    aput-byte v52, v5, v25

    .line 3325
    add-int/lit8 v25, v25, 0x1

    goto :goto_27c

    .line 3329
    .end local v25    # "i":I
    :cond_28b
    if-lez v30, :cond_2a8

    .line 3330
    move/from16 v0, v30

    new-array v0, v0, [B

    move-object/from16 v40, v0

    .line 3331
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_295
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_2a8

    .line 3332
    add-int/lit8 v52, v29, 0x2

    add-int v52, v52, v25

    add-int/lit8 v52, v52, 0x1

    aget-byte v52, v15, v52

    aput-byte v52, v40, v25

    .line 3331
    add-int/lit8 v25, v25, 0x1

    goto :goto_295

    .line 3336
    .end local v25    # "i":I
    :cond_2a8
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 3337
    .local v6, "aidIntent":Landroid/content/Intent;
    const-string v52, "com.android.nfc_extras.action.AID_SELECTED"

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3338
    if-lez v29, :cond_2bd

    .line 3339
    const-string v52, "com.android.nfc_extras.extra.AID"

    move-object/from16 v0, v52

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3340
    :cond_2bd
    if-lez v30, :cond_2c8

    .line 3341
    const-string v52, "com.android.nfc_extras.extra.DATA"

    move-object/from16 v0, v52

    move-object/from16 v1, v40

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3342
    :cond_2c8
    if-eqz v39, :cond_2e7

    .line 3343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v52

    const/16 v53, 0x0

    aget-byte v53, v39, v53

    invoke-interface/range {v52 .. v53}, Lcom/android/nfc/DeviceHost;->doGetSecureElementName(I)Ljava/lang/String;

    move-result-object v46

    .line 3344
    .local v46, "seName":Ljava/lang/String;
    if-eqz v46, :cond_2e7

    .line 3345
    const-string v52, "com.android.nfc_extras.extra.SE_NAME"

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3351
    .end local v46    # "seName":Ljava/lang/String;
    :cond_2e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    move/from16 v0, v53

    move-object/from16 v1, v52

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsSentUnicastReception:Z

    .line 3353
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 3359
    .end local v5    # "aid":[B
    .end local v6    # "aidIntent":Landroid/content/Intent;
    .end local v15    # "dataBuf":[B
    .end local v29    # "lengthOfAid":I
    .end local v30    # "lengthOfParam":I
    .end local v39    # "nfceeId":[B
    .end local v40    # "param":[B
    :pswitch_2fc
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 3360
    .local v12, "cardRemovalIntent":Landroid/content/Intent;
    const-string v52, "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    move-object/from16 v0, v52

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3362
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 3367
    .end local v12    # "cardRemovalIntent":Landroid/content/Intent;
    :pswitch_30f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, [B

    move-object/from16 v7, v52

    check-cast v7, [B

    .line 3369
    .local v7, "apduBytes":[B
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3370
    .local v8, "apduReceivedIntent":Landroid/content/Intent;
    const-string v52, "com.android.nfc_extras.action.APDU_RECEIVED"

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3371
    if-eqz v7, :cond_335

    array-length v0, v7

    move/from16 v52, v0

    if-lez v52, :cond_335

    .line 3372
    const-string v52, "com.android.nfc_extras.extra.APDU_BYTES"

    move-object/from16 v0, v52

    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3375
    :cond_335
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 3381
    .end local v7    # "apduBytes":[B
    .end local v8    # "apduReceivedIntent":Landroid/content/Intent;
    :pswitch_33c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, [B

    move-object/from16 v35, v52

    check-cast v35, [B

    .line 3382
    .local v35, "mifareCmd":[B
    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    .line 3383
    .local v33, "mifareAccessIntent":Landroid/content/Intent;
    const-string v52, "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    move-object/from16 v0, v33

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3384
    if-eqz v35, :cond_37a

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-le v0, v1, :cond_37a

    .line 3385
    const/16 v52, 0x1

    aget-byte v52, v35, v52

    move/from16 v0, v52

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    .line 3387
    .local v34, "mifareBlock":I
    const-string v52, "com.android.nfc_extras.extra.MIFARE_BLOCK"

    move-object/from16 v0, v33

    move-object/from16 v1, v52

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3390
    .end local v34    # "mifareBlock":I
    :cond_37a
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 3394
    .end local v33    # "mifareAccessIntent":Landroid/content/Intent;
    .end local v35    # "mifareCmd":[B
    :pswitch_383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    move/from16 v52, v0

    if-eqz v52, :cond_3ab

    .line 3395
    new-instance v3, Landroid/content/Intent;

    const-string v52, "com.android.nfc.action.LLCP_UP"

    move-object/from16 v0, v52

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3396
    .local v3, "actIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3398
    .end local v3    # "actIntent":Landroid/content/Intent;
    :cond_3ab
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z

    goto/16 :goto_10

    .line 3402
    :pswitch_3bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    move/from16 v52, v0

    if-eqz v52, :cond_3e8

    .line 3403
    new-instance v16, Landroid/content/Intent;

    const-string v52, "com.android.nfc.action.LLCP_DOWN"

    move-object/from16 v0, v16

    move-object/from16 v1, v52

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3404
    .local v16, "deactIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3406
    .end local v16    # "deactIntent":Landroid/content/Intent;
    :cond_3e8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 3407
    .local v18, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    const/16 v37, 0x0

    .line 3409
    .local v37, "needsDisconnect":Z
    const-string v52, "NfcService"

    const-string v53, "LLCP Link Deactivated message. Restart polling loop."

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v53, v0

    monitor-enter v53

    .line 3412
    :try_start_400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    move-object/from16 v52, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v52

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v52

    if-eqz v52, :cond_426

    .line 3414
    invoke-interface/range {v18 .. v18}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v52

    if-nez v52, :cond_426

    .line 3416
    const/16 v37, 0x1

    .line 3421
    :cond_426
    monitor-exit v53
    :try_end_427
    .catchall {:try_start_400 .. :try_end_427} :catchall_43d

    .line 3422
    if-eqz v37, :cond_42c

    .line 3423
    invoke-interface/range {v18 .. v18}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 3426
    :cond_42c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    goto/16 :goto_10

    .line 3421
    :catchall_43d
    move-exception v52

    :try_start_43e
    monitor-exit v53
    :try_end_43f
    .catchall {:try_start_43e .. :try_end_43f} :catchall_43d

    throw v52

    .line 3429
    .end local v18    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    .end local v37    # "needsDisconnect":Z
    :pswitch_440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/nfc/P2pLinkManager;->onLlcpFirstPacketReceived()V

    goto/16 :goto_10

    .line 3434
    :pswitch_451
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 3435
    .local v26, "intent":Landroid/content/Intent;
    const-string v52, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    move-object/from16 v0, v26

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    const-string v53, "android.permission.NFC"

    move-object/from16 v0, v52

    move-object/from16 v1, v26

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 3442
    .end local v26    # "intent":Landroid/content/Intent;
    :pswitch_478
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 3443
    .local v21, "eventFieldOnIntent":Landroid/content/Intent;
    const-string v52, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    move-object/from16 v0, v21

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3444
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 3450
    .end local v21    # "eventFieldOnIntent":Landroid/content/Intent;
    :pswitch_48f
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 3451
    .local v20, "eventFieldOffIntent":Landroid/content/Intent;
    const-string v52, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3452
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 3458
    .end local v20    # "eventFieldOffIntent":Landroid/content/Intent;
    :pswitch_4a6
    new-instance v31, Landroid/content/Intent;

    invoke-direct/range {v31 .. v31}, Landroid/content/Intent;-><init>()V

    .line 3459
    .local v31, "listenModeActivated":Landroid/content/Intent;
    const-string v52, "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

    move-object/from16 v0, v31

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3460
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 3466
    .end local v31    # "listenModeActivated":Landroid/content/Intent;
    :pswitch_4bd
    new-instance v32, Landroid/content/Intent;

    invoke-direct/range {v32 .. v32}, Landroid/content/Intent;-><init>()V

    .line 3467
    .local v32, "listenModeDeactivated":Landroid/content/Intent;
    const-string v52, "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

    move-object/from16 v0, v32

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3468
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 3474
    .end local v32    # "listenModeDeactivated":Landroid/content/Intent;
    :pswitch_4d4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/content/Intent;

    .line 3475
    .local v45, "seIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3477
    invoke-virtual/range {v45 .. v45}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 3478
    .local v4, "action":Ljava/lang/String;
    const-string v52, "com.android.nfc_extras.action.AID_SELECTED"

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_10

    .line 3479
    const-string v52, "com.android.nfc_extras.extra.AID"

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v10

    .line 3480
    .local v10, "byteAid":[B
    const-string v52, "com.android.nfc_extras.extra.DATA"

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v14

    .line 3481
    .local v14, "data":[B
    const-string v52, "com.android.nfc_extras.extra.SE_NAME"

    move-object/from16 v0, v45

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 3482
    .restart local v46    # "seName":Ljava/lang/String;
    new-instance v48, Ljava/lang/StringBuffer;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuffer;-><init>()V

    .line 3483
    .local v48, "strAid":Ljava/lang/StringBuffer;
    const/16 v25, 0x0

    .restart local v25    # "i":I
    :goto_522
    array-length v0, v10

    move/from16 v52, v0

    move/from16 v0, v25

    move/from16 v1, v52

    if-ge v0, v1, :cond_556

    .line 3484
    aget-byte v52, v10, v25

    move/from16 v0, v52

    and-int/lit16 v0, v0, 0xff

    move/from16 v52, v0

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v24

    .line 3485
    .local v24, "hex":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v52

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_54c

    .line 3486
    const/16 v52, 0x30

    move-object/from16 v0, v48

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3487
    :cond_54c
    move-object/from16 v0, v48

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3483
    add-int/lit8 v25, v25, 0x1

    goto :goto_522

    .line 3489
    .end local v24    # "hex":Ljava/lang/String;
    :cond_556
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 3490
    .local v23, "gsmaIntent":Landroid/content/Intent;
    const-string v52, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    move-object/from16 v0, v23

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3491
    if-eqz v10, :cond_56f

    .line 3492
    const-string v52, "com.gsma.services.nfc.extra.AID"

    move-object/from16 v0, v23

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3493
    :cond_56f
    if-eqz v14, :cond_57a

    .line 3494
    const-string v52, "com.gsma.services.nfc.extra.DATA"

    move-object/from16 v0, v23

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3497
    :cond_57a
    new-instance v51, Ljava/lang/String;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "nfc://secure:0/"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "/"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-direct/range {v51 .. v52}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3500
    .local v51, "url":Ljava/lang/String;
    invoke-static/range {v51 .. v51}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v52

    move-object/from16 v0, v23

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3501
    const/16 v52, 0x20

    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3502
    invoke-virtual/range {v45 .. v45}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, v23

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mMultiReceptionMap:Ljava/util/HashMap;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Boolean;

    .line 3505
    .local v27, "isMultiReception":Ljava/lang/Boolean;
    sget-object v52, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v27

    move-object/from16 v1, v52

    if-ne v0, v1, :cond_5f6

    .line 3507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 3511
    :cond_5f6
    :try_start_5f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsSentUnicastReception:Z

    move/from16 v52, v0
    :try_end_602
    .catch Ljava/lang/Exception; {:try_start_5f6 .. :try_end_602} :catch_64c

    if-nez v52, :cond_10

    .line 3514
    const/high16 v52, 0x10000000

    :try_start_606
    move-object/from16 v0, v45

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_620
    .catch Ljava/lang/Exception; {:try_start_606 .. :try_end_620} :catch_8b3

    .line 3520
    :goto_620
    const/high16 v52, 0x10000000

    :try_start_622
    move-object/from16 v0, v23

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v53

    move-object/from16 v1, v52

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsSentUnicastReception:Z
    :try_end_64a
    .catch Ljava/lang/Exception; {:try_start_622 .. :try_end_64a} :catch_64c

    goto/16 :goto_10

    .line 3525
    :catch_64c
    move-exception v52

    goto/16 :goto_10

    .line 3535
    .end local v4    # "action":Ljava/lang/String;
    .end local v10    # "byteAid":[B
    .end local v14    # "data":[B
    .end local v23    # "gsmaIntent":Landroid/content/Intent;
    .end local v25    # "i":I
    .end local v27    # "isMultiReception":Ljava/lang/Boolean;
    .end local v45    # "seIntent":Landroid/content/Intent;
    .end local v46    # "seName":Ljava/lang/String;
    .end local v48    # "strAid":Ljava/lang/StringBuffer;
    .end local v51    # "url":Ljava/lang/String;
    :pswitch_64f
    const/16 v28, 0x1

    .line 3537
    .local v28, "isSuccess":Z
    :try_start_651
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_6a2

    .line 3538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/android/nfc/NfcService$NfcAdapterService;->enable()Z
    :try_end_66e
    .catch Landroid/os/RemoteException; {:try_start_651 .. :try_end_66e} :catch_6a5

    .line 3546
    :goto_66e
    if-nez v28, :cond_10

    .line 3547
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    .line 3548
    .local v41, "pkg":Ljava/lang/String;
    new-instance v38, Landroid/content/Intent;

    invoke-direct/range {v38 .. v38}, Landroid/content/Intent;-><init>()V

    .line 3549
    .local v38, "nfcEnableIntent":Landroid/content/Intent;
    const-string v52, "com.android.qcom.nfc_extras.action.ENABLE_NFC_ADAPTER_FAILED"

    move-object/from16 v0, v38

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3550
    move-object/from16 v0, v38

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 3540
    .end local v38    # "nfcEnableIntent":Landroid/content/Intent;
    .end local v41    # "pkg":Ljava/lang/String;
    :cond_6a2
    const/16 v28, 0x0

    goto :goto_66e

    .line 3542
    :catch_6a5
    move-exception v19

    .line 3543
    .local v19, "e":Landroid/os/RemoteException;
    const-string v52, "NfcService"

    const-string v53, "failed to enable NfcAdapter"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3544
    const/16 v28, 0x0

    goto :goto_66e

    .line 3559
    .end local v19    # "e":Landroid/os/RemoteException;
    .end local v28    # "isSuccess":Z
    :pswitch_6b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Lcom/android/nfc/NfcService;->access$502(Lcom/android/nfc/NfcService;I)I

    .line 3560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v52

    const-string v53, "ee_routing_state"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)I

    move-result v54

    invoke-interface/range {v52 .. v54}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v52

    invoke-interface/range {v52 .. v52}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_10

    .line 3568
    :pswitch_6e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v53

    const-string v54, "ee_routing_state"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Lcom/android/nfc/DeviceHost;->getEeRoutingState()I

    move-result v55

    invoke-interface/range {v53 .. v55}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v53

    invoke-static/range {v52 .. v53}, Lcom/android/nfc/NfcService;->access$502(Lcom/android/nfc/NfcService;I)I

    .line 3569
    new-instance v9, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-direct {v9, v0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 3570
    .local v9, "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    const/16 v52, 0x0

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v9, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3573
    :try_start_728
    invoke-virtual {v9}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_72b
    .catch Ljava/lang/Exception; {:try_start_728 .. :try_end_72b} :catch_76b

    .line 3578
    :goto_72b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    .line 3579
    .restart local v41    # "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 3580
    .local v11, "cardEmulationEnableIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    move/from16 v52, v0

    const/16 v53, 0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_774

    .line 3581
    const-string v52, "com.android.qcom.nfc_extras.action.CARD_EMUALTION_ENABLED"

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3585
    :goto_753
    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 3574
    .end local v11    # "cardEmulationEnableIntent":Landroid/content/Intent;
    .end local v41    # "pkg":Ljava/lang/String;
    :catch_76b
    move-exception v19

    .line 3575
    .local v19, "e":Ljava/lang/Exception;
    const-string v52, "NfcService"

    const-string v53, "failed to enable card emulation mode"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72b

    .line 3583
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v11    # "cardEmulationEnableIntent":Landroid/content/Intent;
    .restart local v41    # "pkg":Ljava/lang/String;
    :cond_774
    const-string v52, "com.android.qcom.nfc_extras.action.ENABLE_CARD_EMULATION_FAILED"

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_753

    .line 3593
    .end local v9    # "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    .end local v11    # "cardEmulationEnableIntent":Landroid/content/Intent;
    .end local v41    # "pkg":Ljava/lang/String;
    :pswitch_77c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    const/16 v53, 0x1

    invoke-static/range {v52 .. v53}, Lcom/android/nfc/NfcService;->access$502(Lcom/android/nfc/NfcService;I)I

    .line 3594
    new-instance v9, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-direct {v9, v0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 3595
    .restart local v9    # "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    const/16 v52, 0x0

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v9, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3598
    :try_start_7a1
    invoke-virtual {v9}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_7a4
    .catch Ljava/lang/Exception; {:try_start_7a1 .. :try_end_7a4} :catch_7de

    .line 3603
    :goto_7a4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Ljava/lang/String;

    .line 3604
    .restart local v41    # "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 3605
    .restart local v11    # "cardEmulationEnableIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    move/from16 v52, v0

    if-nez v52, :cond_7e7

    .line 3606
    const-string v52, "com.android.qcom.nfc_extras.action.CARD_EMUALTION_DISABLED"

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3610
    :goto_7c6
    move-object/from16 v0, v41

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 3599
    .end local v11    # "cardEmulationEnableIntent":Landroid/content/Intent;
    .end local v41    # "pkg":Ljava/lang/String;
    :catch_7de
    move-exception v19

    .line 3600
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string v52, "NfcService"

    const-string v53, "failed to disable card emulation mode"

    invoke-static/range {v52 .. v53}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a4

    .line 3608
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v11    # "cardEmulationEnableIntent":Landroid/content/Intent;
    .restart local v41    # "pkg":Ljava/lang/String;
    :cond_7e7
    const-string v52, "com.android.qcom.nfc_extras.action.DISABLE_CARD_EMUALTION_FAILED"

    move-object/from16 v0, v52

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7c6

    .line 3618
    .end local v9    # "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    .end local v11    # "cardEmulationEnableIntent":Landroid/content/Intent;
    .end local v41    # "pkg":Ljava/lang/String;
    :pswitch_7ef
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Ljava/lang/String;

    .line 3619
    .restart local v46    # "seName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_10

    .line 3620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v52

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    .line 3621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v52

    const-string v53, "active_secure_element"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    move-object/from16 v54, v0

    invoke-interface/range {v52 .. v54}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    invoke-static/range {v52 .. v52}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v52

    invoke-interface/range {v52 .. v52}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    const/16 v53, 0x0

    invoke-virtual/range {v52 .. v53}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto/16 :goto_10

    .line 3630
    .end local v46    # "seName":Ljava/lang/String;
    :pswitch_84e
    new-instance v49, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    const-class v53, Lcom/android/nfc/SwpUnsupportActivity;

    move-object/from16 v0, v49

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3631
    .local v49, "swpunsupport":Landroid/content/Intent;
    const/high16 v52, 0x10000000

    move-object/from16 v0, v49

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 3637
    .end local v49    # "swpunsupport":Landroid/content/Intent;
    :pswitch_885
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v47, v0

    .line 3640
    .local v47, "slotId":I
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 3641
    .local v13, "catIntent":Landroid/content/Intent;
    const-string v52, "org.codeaurora.intent.action.stk.hci_connectivity"

    move-object/from16 v0, v52

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3642
    const-string v52, "SLOT_ID"

    move-object/from16 v0, v52

    move/from16 v1, v47

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 3516
    .end local v13    # "catIntent":Landroid/content/Intent;
    .end local v47    # "slotId":I
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v10    # "byteAid":[B
    .restart local v14    # "data":[B
    .restart local v23    # "gsmaIntent":Landroid/content/Intent;
    .restart local v25    # "i":I
    .restart local v27    # "isMultiReception":Ljava/lang/Boolean;
    .restart local v45    # "seIntent":Landroid/content/Intent;
    .restart local v46    # "seName":Ljava/lang/String;
    .restart local v48    # "strAid":Ljava/lang/StringBuffer;
    .restart local v51    # "url":Ljava/lang/String;
    :catch_8b3
    move-exception v52

    goto/16 :goto_620

    .line 3187
    :pswitch_data_8b6
    .packed-switch 0x0
        :pswitch_102
        :pswitch_225
        :pswitch_383
        :pswitch_3bc
        :pswitch_451
        :pswitch_9
        :pswitch_9
        :pswitch_59
        :pswitch_478
        :pswitch_48f
        :pswitch_30f
        :pswitch_2fc
        :pswitch_33c
        :pswitch_4a6
        :pswitch_4bd
        :pswitch_440
        :pswitch_11
        :pswitch_35
        :pswitch_4d
        :pswitch_4d4
        :pswitch_64f
        :pswitch_6b0
        :pswitch_6e7
        :pswitch_77c
        :pswitch_7ef
        :pswitch_885
        :pswitch_9
        :pswitch_84e
    .end packed-switch
.end method
