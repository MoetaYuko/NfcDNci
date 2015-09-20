.class Lcom/android/nfc/handover/HandoverService$2;
.super Landroid/content/BroadcastReceiver;
.source "HandoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/HandoverService;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverService;)V
    .registers 2

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverService$2;->this$0:Lcom/android/nfc/handover/HandoverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, "action":Ljava/lang/String;
    const-string v26, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_bc

    .line 442
    const-string v26, "android.bluetooth.adapter.extra.STATE"

    const/high16 v27, -0x80000000

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 444
    .local v20, "state":I
    const/16 v26, 0xc

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_5d

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService$2;->this$0:Lcom/android/nfc/handover/HandoverService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetHandover:Lcom/android/nfc/handover/BluetoothHeadsetHandover;

    move-object/from16 v26, v0

    if-eqz v26, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService$2;->this$0:Lcom/android/nfc/handover/HandoverService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetHandover:Lcom/android/nfc/handover/BluetoothHeadsetHandover;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->hasStarted()Z

    move-result v26

    if-nez v26, :cond_53

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService$2;->this$0:Lcom/android/nfc/handover/HandoverService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetHandover:Lcom/android/nfc/handover/BluetoothHeadsetHandover;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->start()V

    .line 452
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService$2;->this$0:Lcom/android/nfc/handover/HandoverService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/nfc/handover/HandoverService;->startPendingTransfers()V

    .line 553
    .end local v20    # "state":I
    :cond_5c
    :goto_5c
    return-void

    .line 453
    .restart local v20    # "state":I
    :cond_5d
    const/16 v26, 0xa

    move/from16 v0, v20

    move/from16 v1, v26

    if-ne v0, v1, :cond_5c

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService$2;->this$0:Lcom/android/nfc/handover/HandoverService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/nfc/handover/HandoverService;->mBluetoothEnabledByNfc:Z

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService$2;->this$0:Lcom/android/nfc/handover/HandoverService;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/nfc/handover/HandoverService;->mBluetoothHeadsetConnected:Z

    .line 457
    const-string v26, "com.android.nfc.handover.extra.SOURCE_ADDRESS"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 458
    .local v19, "sourceAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService$2;->this$0:Lcom/android/nfc/handover/HandoverService;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/handover/HandoverService;->findHandoverTransfer(Ljava/lang/String;Z)Lcom/android/nfc/handover/HandoverTransfer;

    move-result-object v21

    .line 459
    .local v21, "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    if-eqz v21, :cond_a2

    .line 460
    invoke-virtual/range {v21 .. v21}, Lcom/android/nfc/handover/HandoverTransfer;->cancel()V

    .line 464
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService$2;->this$0:Lcom/android/nfc/handover/HandoverService;

    move-object/from16 v26, v0

    const-string v27, "nfc_open_bluetooth_file"

    const/16 v28, 0x5

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 465
    .local v15, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_5c

    .line 468
    .end local v15    # "preferences":Landroid/content/SharedPreferences;
    .end local v19    # "sourceAddress":Ljava/lang/String;
    .end local v20    # "state":I
    .end local v21    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_bc
    const-string v26, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12b

    .line 469
    const-string v26, "com.android.nfc.handover.extra.SOURCE_ADDRESS"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 470
    .restart local v19    # "sourceAddress":Ljava/lang/String;
    const-string v26, "com.android.nfc.handover.extra.INCOMING"

    const/16 v27, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_129

    const/4 v12, 0x1

    .line 471
    .local v12, "incoming":Z
    :goto_e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService$2;->this$0:Lcom/android/nfc/handover/HandoverService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/android/nfc/handover/HandoverService;->findHandoverTransfer(Ljava/lang/String;Z)Lcom/android/nfc/handover/HandoverTransfer;

    move-result-object v21

    .line 472
    .restart local v21    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    if-eqz v21, :cond_5c

    .line 473
    const-string v26, "HandoverService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cancelling transfer "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->mTransferId:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    invoke-virtual/range {v26 .. v27}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFailedReason(I)V

    .line 478
    invoke-virtual/range {v21 .. v21}, Lcom/android/nfc/handover/HandoverTransfer;->cancel()V

    goto/16 :goto_5c

    .line 470
    .end local v12    # "incoming":Z
    .end local v21    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_129
    const/4 v12, 0x0

    goto :goto_e7

    .line 480
    .end local v19    # "sourceAddress":Ljava/lang/String;
    :cond_12b
    const-string v26, "android.btopp.intent.action.BT_OPP_TRANSFER_PROGRESS"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_149

    const-string v26, "android.btopp.intent.action.BT_OPP_TRANSFER_DONE"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_149

    const-string v26, "android.btopp.intent.action.BT_OPP_HANDOVER_STARTED"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5c

    .line 483
    :cond_149
    const-string v26, "android.btopp.intent.extra.BT_OPP_TRANSFER_DIRECTION"

    const/16 v27, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 484
    .local v8, "direction":I
    const-string v26, "android.btopp.intent.extra.BT_OPP_TRANSFER_ID"

    const/16 v27, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 485
    .local v11, "id":I
    const-string v26, "android.btopp.intent.action.BT_OPP_HANDOVER_STARTED"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_170

    .line 487
    const/4 v8, 0x0

    .line 489
    :cond_170
    const-string v26, "android.btopp.intent.extra.BT_OPP_ADDRESS"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 491
    .restart local v19    # "sourceAddress":Ljava/lang/String;
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v8, v0, :cond_5c

    if-eqz v19, :cond_5c

    .line 492
    if-nez v8, :cond_1cd

    const/4 v12, 0x1

    .line 494
    .restart local v12    # "incoming":Z
    :goto_185
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    .line 495
    .local v5, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v17

    .line 496
    .local v17, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {v17 .. v17}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v18

    .line 499
    .local v18, "remoteName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService$2;->this$0:Lcom/android/nfc/handover/HandoverService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/android/nfc/handover/HandoverService;->findHandoverTransfer(Ljava/lang/String;Z)Lcom/android/nfc/handover/HandoverTransfer;

    move-result-object v21

    .line 500
    .restart local v21    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    if-nez v21, :cond_1cf

    .line 503
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v11, v0, :cond_5c

    .line 504
    const-string v26, "HandoverService"

    const-string v27, "Didn\'t find transfer, stopping"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v6, Landroid/content/Intent;

    const-string v26, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v6, "cancelIntent":Landroid/content/Intent;
    const-string v26, "android.btopp.intent.extra.BT_OPP_TRANSFER_ID"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverService$2;->this$0:Lcom/android/nfc/handover/HandoverService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5c

    .line 492
    .end local v5    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v6    # "cancelIntent":Landroid/content/Intent;
    .end local v12    # "incoming":Z
    .end local v17    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v18    # "remoteName":Ljava/lang/String;
    .end local v21    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_1cd
    const/4 v12, 0x0

    goto :goto_185

    .line 513
    .restart local v5    # "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    .restart local v12    # "incoming":Z
    .restart local v17    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v18    # "remoteName":Ljava/lang/String;
    .restart local v21    # "transfer":Lcom/android/nfc/handover/HandoverTransfer;
    :cond_1cf
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileName()Ljava/lang/String;

    move-result-object v14

    .line 515
    .local v14, "name":Ljava/lang/String;
    if-eqz v14, :cond_1e5

    const-string v26, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1f4

    .line 516
    :cond_1e5
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/android/nfc/transferhistory/DataBaseUtils;->getFileNameFromBtopp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 519
    :cond_1f4
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFriendlyName(Ljava/lang/String;)V

    .line 520
    const-string v26, "android.btopp.intent.extra.BT_OPP_TRANSFER_URI"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 522
    .local v25, "uris":Ljava/lang/String;
    if-eqz v25, :cond_229

    .line 523
    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 524
    .local v24, "urii":Landroid/net/Uri;
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 526
    .local v9, "file":Ljava/io/File;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverTransfer;->transferInfo:Lcom/android/nfc/transferhistory/NfcTransferInfo;

    move-object/from16 v26, v0

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->setFileName(Ljava/lang/String;)V

    .line 529
    .end local v9    # "file":Ljava/io/File;
    .end local v24    # "urii":Landroid/net/Uri;
    :cond_229
    const-string v26, "android.btopp.intent.action.BT_OPP_TRANSFER_DONE"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_28e

    .line 530
    const-string v26, "android.btopp.intent.extra.BT_OPP_TRANSFER_STATUS"

    const/16 v27, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 532
    .local v10, "handoverStatus":I
    if-nez v10, :cond_27b

    .line 533
    const-string v26, "android.btopp.intent.extra.BT_OPP_TRANSFER_URI"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 534
    .local v23, "uriString":Ljava/lang/String;
    const-string v26, "android.btopp.intent.extra.BT_OPP_TRANSFER_MIMETYPE"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 535
    .local v13, "mimeType":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 536
    .local v22, "uri":Landroid/net/Uri;
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_26e

    .line 537
    new-instance v26, Ljava/io/File;

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v22

    .line 539
    :cond_26e
    const/16 v26, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/nfc/handover/HandoverTransfer;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 541
    .end local v13    # "mimeType":Ljava/lang/String;
    .end local v22    # "uri":Landroid/net/Uri;
    .end local v23    # "uriString":Ljava/lang/String;
    :cond_27b
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/handover/HandoverTransfer;->finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 543
    .end local v10    # "handoverStatus":I
    :cond_28e
    const-string v26, "android.btopp.intent.action.BT_OPP_TRANSFER_PROGRESS"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_2af

    .line 544
    const-string v26, "android.btopp.intent.extra.BT_OPP_TRANSFER_PROGRESS"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v16

    .line 545
    .local v16, "progress":F
    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/HandoverTransfer;->updateFileProgress(F)V

    goto/16 :goto_5c

    .line 546
    .end local v16    # "progress":F
    :cond_2af
    const-string v26, "android.btopp.intent.action.BT_OPP_HANDOVER_STARTED"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5c

    .line 547
    const-string v26, "android.btopp.intent.extra.BT_OPP_OBJECT_COUNT"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 548
    .local v7, "count":I
    if-lez v7, :cond_5c

    .line 549
    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/android/nfc/handover/HandoverTransfer;->setObjectCount(I)V

    goto/16 :goto_5c
.end method
