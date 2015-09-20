.class public Lcom/android/nfc/transferhistory/DataBaseUtils;
.super Ljava/lang/Object;
.source "DataBaseUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteHistoryfromDB(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-static {}, Lcom/android/nfc/transferhistory/HwBeamStore$TransferListTable;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 126
    .local v0, "mUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public static getFileNameFromBtopp(Landroid/content/Context;I)Ljava/lang/String;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 36
    sget-object v1, Lcom/android/nfc/transferhistory/HwBeamStore;->BLUETOOTH_URI:Landroid/net/Uri;

    .line 37
    .local v1, "mUri":Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "mUserWhere":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    .line 42
    .local v4, "mUserWhereArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/nfc/transferhistory/HwBeamStore;->getBTColumns()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 45
    .local v9, "mCur":Landroid/database/Cursor;
    if-nez v9, :cond_31

    .line 65
    :goto_30
    return-object v5

    .line 48
    :cond_31
    const/4 v7, 0x0

    .line 51
    .local v7, "fileName":Ljava/lang/String;
    :cond_32
    :try_start_32
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 52
    const-string v0, "hint"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 53
    .local v8, "index":I
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_41} :catch_49
    .catchall {:try_start_32 .. :try_end_41} :catchall_51

    move-result-object v7

    .line 54
    if-eqz v7, :cond_32

    .line 62
    .end local v8    # "index":I
    :cond_44
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v7

    .line 65
    goto :goto_30

    .line 58
    :catch_49
    move-exception v6

    .line 59
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4a
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_51

    .line 62
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_30

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_51
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static insertHistoryIntoDB(Lcom/android/nfc/transferhistory/NfcTransferInfo;Landroid/content/Context;)V
    .registers 8
    .param p0, "info"    # Lcom/android/nfc/transferhistory/NfcTransferInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    if-nez p0, :cond_3

    .line 33
    :goto_2
    return-void

    .line 18
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 19
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "file_path"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string v3, "mime_type"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v3, "file_name"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string v3, "file_size"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFileSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 23
    const-string v3, "current_size"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 24
    const-string v3, "friendly_name"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v3, "transfer_direction"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getTransferDir()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    const-string v3, "transfer_result"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getTransferResult()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    const-string v3, "failed_reason"

    invoke-virtual {p0}, Lcom/android/nfc/transferhistory/NfcTransferInfo;->getFailedReason()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 30
    .local v1, "date":Ljava/util/Date;
    const-string v3, "complete_time"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 31
    invoke-static {}, Lcom/android/nfc/transferhistory/HwBeamStore$TransferListTable;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 32
    .local v0, "apUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2
.end method

.method public static queryTransferList(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 25
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/nfc/transferhistory/NfcTransferInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Lcom/android/nfc/transferhistory/HwBeamStore$TransferListTable;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 70
    .local v2, "mUri":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transfer_direction"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "=?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "mUserWhere":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 75
    .local v5, "mUserWhereArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/android/nfc/transferhistory/HwBeamStore;->getTransferColumns()[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 78
    .local v23, "mCur":Landroid/database/Cursor;
    if-nez v23, :cond_36

    .line 79
    const/16 v22, 0x0

    .line 121
    :goto_35
    return-object v22

    .line 82
    :cond_36
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v22, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/transferhistory/NfcTransferInfo;>;"
    :goto_3b
    :try_start_3b
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 86
    const-string v1, "_id"

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 88
    .local v7, "id":I
    const-string v1, "file_path"

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "filePath":Ljava/lang/String;
    const-string v1, "mime_type"

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, "mimeType":Ljava/lang/String;
    const-string v1, "file_name"

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 94
    .local v10, "fileName":Ljava/lang/String;
    const-string v1, "file_size"

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 96
    .local v11, "fileSize":J
    const-string v1, "current_size"

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 98
    .local v13, "currentSize":J
    const-string v1, "friendly_name"

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 100
    .local v15, "friendName":Ljava/lang/String;
    const-string v1, "transfer_direction"

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 102
    .local v16, "transferDir":I
    const-string v1, "transfer_result"

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 104
    .local v17, "result":I
    const-string v1, "failed_reason"

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 106
    .local v18, "resason":I
    const-string v1, "complete_time"

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 109
    .local v19, "completeTime":J
    new-instance v6, Lcom/android/nfc/transferhistory/NfcTransferInfo;

    invoke-direct/range {v6 .. v20}, Lcom/android/nfc/transferhistory/NfcTransferInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIIJ)V

    .line 111
    .local v6, "transerinfo":Lcom/android/nfc/transferhistory/NfcTransferInfo;
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_e5} :catch_e7
    .catchall {:try_start_3b .. :try_end_e5} :catchall_f7

    goto/16 :goto_3b

    .line 114
    .end local v6    # "transerinfo":Lcom/android/nfc/transferhistory/NfcTransferInfo;
    .end local v7    # "id":I
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "fileSize":J
    .end local v13    # "currentSize":J
    .end local v15    # "friendName":Ljava/lang/String;
    .end local v16    # "transferDir":I
    .end local v17    # "result":I
    .end local v18    # "resason":I
    .end local v19    # "completeTime":J
    :catch_e7
    move-exception v21

    .line 115
    .local v21, "e":Ljava/lang/Exception;
    :try_start_e8
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_f7

    .line 116
    const/16 v22, 0x0

    .line 118
    .end local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/transferhistory/NfcTransferInfo;>;"
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_35

    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v22    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/transferhistory/NfcTransferInfo;>;"
    :cond_f2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_35

    :catchall_f7
    move-exception v1

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v1
.end method
