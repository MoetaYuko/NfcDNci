.class final Lcom/android/nfc/NfcService$NfcQcomAdapterService;
.super Landroid/nfc/INfcQcomAdapter$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcQcomAdapterService"
.end annotation


# instance fields
.field private mHasOMACert:Z

.field private mWaitOMACheckCert:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 3

    .prologue
    .line 2367
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcQcomAdapter$Stub;-><init>()V

    .line 2369
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mWaitOMACheckCert:Ljava/lang/Object;

    .line 2370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mHasOMACert:Z

    return-void
.end method

.method private checkCertificatesFromSim(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2386
    .local v0, "checkCertificateIntent":Landroid/content/Intent;
    const-string v3, "org.simalliance.openmobileapi.service.ACTION_CHECK_CERT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2387
    const-string v3, "org.simalliance.openmobileapi.service"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2388
    const-string v3, "org.simalliance.openmobileapi.service.EXTRA_SE_NAME"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2389
    const-string v3, "org.simalliance.openmobileapi.service.EXTRA_PKG"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2390
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2392
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mWaitOMACheckCert:Ljava/lang/Object;

    .line 2393
    iput-boolean v2, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mHasOMACert:Z

    .line 2395
    :try_start_2a
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mWaitOMACheckCert:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_41

    .line 2396
    :try_start_2d
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mWaitOMACheckCert:Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 2397
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_3e

    .line 2402
    :goto_35
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mWaitOMACheckCert:Ljava/lang/Object;

    .line 2404
    iget-boolean v3, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mHasOMACert:Z

    if-eqz v3, :cond_3d

    .line 2405
    const/4 v2, 0x1

    .line 2407
    :cond_3d
    return v2

    .line 2397
    :catchall_3e
    move-exception v3

    :try_start_3f
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw v3
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_41} :catch_41

    .line 2398
    :catch_41
    move-exception v1

    .line 2400
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "NfcService"

    const-string v4, "interruped."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method private checkX509CertificatesFromSim(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2415
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2416
    .local v0, "checkCertificateIntent":Landroid/content/Intent;
    const-string v3, "org.simalliance.openmobileapi.service.ACTION_CHECK_X509"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2417
    const-string v3, "org.simalliance.openmobileapi.service"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2418
    const-string v3, "org.simalliance.openmobileapi.service.EXTRA_SE_NAME"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2419
    const-string v3, "org.simalliance.openmobileapi.service.EXTRA_PKG"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2420
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2422
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mWaitOMACheckCert:Ljava/lang/Object;

    .line 2423
    iput-boolean v2, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mHasOMACert:Z

    .line 2425
    :try_start_2a
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mWaitOMACheckCert:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_41

    .line 2426
    :try_start_2d
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mWaitOMACheckCert:Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 2427
    monitor-exit v4
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_3e

    .line 2432
    :goto_35
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mWaitOMACheckCert:Ljava/lang/Object;

    .line 2434
    iget-boolean v3, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mHasOMACert:Z

    if-eqz v3, :cond_3d

    .line 2435
    const/4 v2, 0x1

    .line 2437
    :cond_3d
    return v2

    .line 2427
    :catchall_3e
    move-exception v3

    :try_start_3f
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw v3
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_41} :catch_41

    .line 2428
    :catch_41
    move-exception v1

    .line 2430
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "NfcService"

    const-string v4, "interruped."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method private enableAfterUserConfirm(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2375
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/ConfirmNfcEnableActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2376
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string v1, "com.android.nfc.action.EXTRA_PKG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2377
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2379
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2380
    return-void
.end method


# virtual methods
.method public deliverSeIntent(Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2564
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p2}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2565
    return-void
.end method

.method public disableCardEmulationMode(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2493
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->checkCertificatesFromSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 2494
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cerficates from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2497
    :cond_33
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2500
    :cond_38
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2501
    const/4 v0, 0x1

    return v0
.end method

.method public enableCardEmulationMode(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2477
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2478
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->checkCertificatesFromSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 2479
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cerficates from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2482
    :cond_33
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2484
    :cond_38
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/16 v1, 0x16

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2485
    const/4 v0, 0x1

    return v0
.end method

.method public enableMultiReception(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2529
    const-string v0, "SIM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2531
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->checkX509CertificatesFromSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2533
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cerficates from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2536
    :cond_27
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2539
    :cond_2c
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mMultiReceptionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2540
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mMultiReceptionMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2541
    return-void
.end method

.method public enableNfcController(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2447
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->enableAfterUserConfirm(Ljava/lang/String;)V

    .line 2448
    return-void
.end method

.method public getActiveSecureElement(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mActiveSecureElement:Ljava/lang/String;

    return-object v0
.end method

.method public isCardEmulationEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2454
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)I

    move-result v1

    if-ne v1, v0, :cond_a

    .line 2455
    const/4 v0, 0x0

    .line 2457
    :cond_a
    return v0
.end method

.method public isSeEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2547
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()Ljava/lang/String;

    move-result-object v2

    .line 2548
    .local v2, "seListWithComma":Ljava/lang/String;
    if-eqz v2, :cond_25

    .line 2549
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2550
    .local v1, "seList":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-eqz v1, :cond_25

    array-length v3, v1

    if-ge v0, v3, :cond_25

    .line 2552
    aget-object v3, v1, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2553
    const/4 v3, 0x1

    .line 2556
    .end local v0    # "i":I
    .end local v1    # "seList":[Ljava/lang/String;
    :goto_21
    return v3

    .line 2550
    .restart local v0    # "i":I
    .restart local v1    # "seList":[Ljava/lang/String;
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 2556
    .end local v0    # "i":I
    .end local v1    # "seList":[Ljava/lang/String;
    :cond_25
    const/4 v3, 0x0

    goto :goto_21
.end method

.method public notifyCheckCertResult(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2573
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mWaitOMACheckCert:Ljava/lang/Object;

    monitor-enter v1

    .line 2574
    :try_start_8
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mWaitOMACheckCert:Ljava/lang/Object;

    if-eqz v0, :cond_16

    .line 2575
    if-eqz p2, :cond_18

    .line 2576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mHasOMACert:Z

    .line 2580
    :goto_11
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mWaitOMACheckCert:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2582
    :cond_16
    monitor-exit v1

    .line 2583
    return-void

    .line 2578
    :cond_18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->mHasOMACert:Z

    goto :goto_11

    .line 2582
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public selectSEToOpenApduGate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2589
    const-string v0, "eSE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2590
    const-string v0, "NfcService"

    const-string v1, "selectSEToOpenApduGate() invalid secure element for APDU Gate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    :goto_f
    return-void

    .line 2594
    :cond_10
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mSEToOpenAPDUGateMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public setActiveSecureElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2515
    const-string v0, "SIM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2516
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->checkCertificatesFromSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2517
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cerficates from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2520
    :cond_27
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2522
    :cond_2c
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p2}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 2523
    return-void
.end method

.method public updateCardEmulationRoute(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "route"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2465
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2466
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2467
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2468
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2469
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcQcomAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2470
    const/4 v1, 0x1

    return v1
.end method
