.class Lcom/android/nfc/handover/HandoverServer$ServerThread;
.super Ljava/lang/Thread;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverServer;


# direct methods
.method private constructor <init>(Lcom/android/nfc/handover/HandoverServer;)V
    .registers 3

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/handover/HandoverServer$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/nfc/handover/HandoverServer;
    .param p2, "x1"    # Lcom/android/nfc/handover/HandoverServer$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverServer$ServerThread;-><init>(Lcom/android/nfc/handover/HandoverServer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 78
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 79
    :try_start_3
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 80
    .local v9, "threadRunning":Z
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_54

    .line 82
    :goto_6
    if-eqz v9, :cond_53

    .line 84
    :try_start_8
    iget-object v10, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v10
    :try_end_b
    .catch Lcom/android/nfc/LlcpException; {:try_start_8 .. :try_end_b} :catch_5a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_e4
    .catchall {:try_start_8 .. :try_end_b} :catchall_113

    .line 85
    :try_start_b
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget v1, v1, Lcom/android/nfc/handover/HandoverServer;->mSap:I

    const-string v2, "urn:nfc:sn:handover"

    const/16 v3, 0x80

    const/4 v4, 0x1

    const/16 v5, 0x400

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 87
    monitor-exit v10
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_57

    .line 88
    :try_start_21
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_8f

    .line 89
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "HandoverServer"

    const-string v1, "failed to create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Lcom/android/nfc/LlcpException; {:try_start_21 .. :try_end_34} :catch_5a
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_34} :catch_e4
    .catchall {:try_start_21 .. :try_end_34} :catchall_113

    .line 124
    :cond_34
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 125
    :try_start_37
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_52

    .line 126
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_37 .. :try_end_4a} :catchall_8c

    .line 128
    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4f} :catch_1c5
    .catchall {:try_start_4a .. :try_end_4f} :catchall_8c

    .line 132
    :goto_4f
    const/4 v0, 0x0

    :try_start_50
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 134
    :cond_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_8c

    .line 141
    :cond_53
    :goto_53
    return-void

    .line 80
    .end local v9    # "threadRunning":Z
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0

    .line 87
    .restart local v9    # "threadRunning":Z
    :catchall_57
    move-exception v0

    :try_start_58
    monitor-exit v10
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v0
    :try_end_5a
    .catch Lcom/android/nfc/LlcpException; {:try_start_59 .. :try_end_5a} :catch_5a
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5a} :catch_e4
    .catchall {:try_start_59 .. :try_end_5a} :catchall_113

    .line 119
    :catch_5a
    move-exception v7

    .line 120
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :try_start_5b
    const-string v0, "HandoverServer"

    const-string v1, "llcp error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_113

    .line 124
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 125
    :try_start_65
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_80

    .line 126
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_78

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_65 .. :try_end_78} :catchall_1b1

    .line 128
    :cond_78
    :try_start_78
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7d} :catch_1bd
    .catchall {:try_start_78 .. :try_end_7d} :catchall_1b1

    .line 132
    :goto_7d
    const/4 v0, 0x0

    :try_start_7e
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 134
    :cond_80
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_1b1

    .line 137
    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :goto_81
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 138
    :try_start_84
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 139
    monitor-exit v1

    goto/16 :goto_6

    :catchall_89
    move-exception v0

    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_84 .. :try_end_8b} :catchall_89

    throw v0

    .line 134
    :catchall_8c
    move-exception v0

    :try_start_8d
    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw v0

    .line 92
    :cond_8f
    :try_start_8f
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string v0, "HandoverServer"

    const-string v1, "created LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_9e
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1
    :try_end_a1
    .catch Lcom/android/nfc/LlcpException; {:try_start_8f .. :try_end_a1} :catch_5a
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_a1} :catch_e4
    .catchall {:try_start_8f .. :try_end_a1} :catchall_113

    .line 94
    :try_start_a1
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 95
    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_e1

    .line 97
    :goto_a4
    if-eqz v9, :cond_17e

    .line 99
    :try_start_a6
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1
    :try_end_a9
    .catch Lcom/android/nfc/LlcpException; {:try_start_a6 .. :try_end_a9} :catch_5a
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_e4
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_113

    .line 100
    :try_start_a9
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 101
    .local v8, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_110

    .line 103
    if-nez v8, :cond_134

    .line 104
    :try_start_ae
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_bd

    const-string v0, "HandoverServer"

    const-string v1, "Server socket shut down."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catch Lcom/android/nfc/LlcpException; {:try_start_ae .. :try_end_bd} :catch_5a
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_bd} :catch_e4
    .catchall {:try_start_ae .. :try_end_bd} :catchall_113

    .line 124
    :cond_bd
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 125
    :try_start_c0
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_db

    .line 126
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d3

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catchall {:try_start_c0 .. :try_end_d3} :catchall_de

    .line 128
    :cond_d3
    :try_start_d3
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d8} :catch_1c2
    .catchall {:try_start_d3 .. :try_end_d8} :catchall_de

    .line 132
    :goto_d8
    const/4 v0, 0x0

    :try_start_d9
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 134
    :cond_db
    monitor-exit v1

    goto/16 :goto_53

    :catchall_de
    move-exception v0

    monitor-exit v1
    :try_end_e0
    .catchall {:try_start_d9 .. :try_end_e0} :catchall_de

    throw v0

    .line 95
    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_e1
    move-exception v0

    :try_start_e2
    monitor-exit v1
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_e1

    :try_start_e3
    throw v0
    :try_end_e4
    .catch Lcom/android/nfc/LlcpException; {:try_start_e3 .. :try_end_e4} :catch_5a
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e4} :catch_e4
    .catchall {:try_start_e3 .. :try_end_e4} :catchall_113

    .line 121
    :catch_e4
    move-exception v7

    .line 122
    .local v7, "e":Ljava/io/IOException;
    :try_start_e5
    const-string v0, "HandoverServer"

    const-string v1, "IO error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ec
    .catchall {:try_start_e5 .. :try_end_ec} :catchall_113

    .line 124
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 125
    :try_start_ef
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_10a

    .line 126
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_102

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_102
    .catchall {:try_start_ef .. :try_end_102} :catchall_10d

    .line 128
    :cond_102
    :try_start_102
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_107} :catch_1ba
    .catchall {:try_start_102 .. :try_end_107} :catchall_10d

    .line 132
    :goto_107
    const/4 v0, 0x0

    :try_start_108
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 134
    :cond_10a
    monitor-exit v1

    goto/16 :goto_81

    :catchall_10d
    move-exception v0

    monitor-exit v1
    :try_end_10f
    .catchall {:try_start_108 .. :try_end_10f} :catchall_10d

    throw v0

    .line 101
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_110
    move-exception v0

    :try_start_111
    monitor-exit v1
    :try_end_112
    .catchall {:try_start_111 .. :try_end_112} :catchall_110

    :try_start_112
    throw v0
    :try_end_113
    .catch Lcom/android/nfc/LlcpException; {:try_start_112 .. :try_end_113} :catch_5a
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_113} :catch_e4
    .catchall {:try_start_112 .. :try_end_113} :catchall_113

    .line 124
    :catchall_113
    move-exception v0

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 125
    :try_start_117
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v2, :cond_132

    .line 126
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12a

    const-string v2, "HandoverServer"

    const-string v3, "about to close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12a
    .catchall {:try_start_117 .. :try_end_12a} :catchall_1b4

    .line 128
    :cond_12a
    :try_start_12a
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12f} :catch_1b7
    .catchall {:try_start_12a .. :try_end_12f} :catchall_1b4

    .line 132
    :goto_12f
    const/4 v2, 0x0

    :try_start_130
    iput-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 134
    :cond_132
    monitor-exit v1
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_1b4

    throw v0

    .line 107
    .restart local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_134
    :try_start_134
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_143

    const-string v0, "HandoverServer"

    const-string v1, "about to accept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_143
    invoke-interface {v8}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 109
    .local v6, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_167

    const-string v0, "HandoverServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_167
    if-eqz v6, :cond_173

    .line 111
    new-instance v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-direct {v0, v1, v6}, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;-><init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    :cond_173
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1
    :try_end_176
    .catch Lcom/android/nfc/LlcpException; {:try_start_134 .. :try_end_176} :catch_5a
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_176} :catch_e4
    .catchall {:try_start_134 .. :try_end_176} :catchall_113

    .line 115
    :try_start_176
    iget-boolean v9, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 116
    monitor-exit v1

    goto/16 :goto_a4

    :catchall_17b
    move-exception v0

    monitor-exit v1
    :try_end_17d
    .catchall {:try_start_176 .. :try_end_17d} :catchall_17b

    :try_start_17d
    throw v0

    .line 118
    .end local v6    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_17e
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18d

    const-string v0, "HandoverServer"

    const-string v1, "stop running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18d
    .catch Lcom/android/nfc/LlcpException; {:try_start_17d .. :try_end_18d} :catch_5a
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_18d} :catch_e4
    .catchall {:try_start_17d .. :try_end_18d} :catchall_113

    .line 124
    :cond_18d
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 125
    :try_start_190
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_1ab

    .line 126
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a3

    const-string v0, "HandoverServer"

    const-string v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a3
    .catchall {:try_start_190 .. :try_end_1a3} :catchall_1ae

    .line 128
    :cond_1a3
    :try_start_1a3
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1a8
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1a8} :catch_1c0
    .catchall {:try_start_1a3 .. :try_end_1a8} :catchall_1ae

    .line 132
    :goto_1a8
    const/4 v0, 0x0

    :try_start_1a9
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 134
    :cond_1ab
    monitor-exit v1

    goto/16 :goto_81

    :catchall_1ae
    move-exception v0

    monitor-exit v1
    :try_end_1b0
    .catchall {:try_start_1a9 .. :try_end_1b0} :catchall_1ae

    throw v0

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catchall_1b1
    move-exception v0

    :try_start_1b2
    monitor-exit v1
    :try_end_1b3
    .catchall {:try_start_1b2 .. :try_end_1b3} :catchall_1b1

    throw v0

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_1b4
    move-exception v0

    :try_start_1b5
    monitor-exit v1
    :try_end_1b6
    .catchall {:try_start_1b5 .. :try_end_1b6} :catchall_1b4

    throw v0

    .line 129
    :catch_1b7
    move-exception v2

    goto/16 :goto_12f

    .local v7, "e":Ljava/io/IOException;
    :catch_1ba
    move-exception v0

    goto/16 :goto_107

    .local v7, "e":Lcom/android/nfc/LlcpException;
    :catch_1bd
    move-exception v0

    goto/16 :goto_7d

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catch_1c0
    move-exception v0

    goto :goto_1a8

    .restart local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_1c2
    move-exception v0

    goto/16 :goto_d8

    .end local v8    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_1c5
    move-exception v0

    goto/16 :goto_4f
.end method

.method public shutdown()V
    .registers 3

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 145
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 146
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    if-eqz v0, :cond_12

    .line 148
    :try_start_a
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_17
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 152
    :goto_f
    const/4 v0, 0x0

    :try_start_10
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 154
    :cond_12
    monitor-exit v1

    .line 155
    return-void

    .line 154
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_14

    throw v0

    .line 149
    :catch_17
    move-exception v0

    goto :goto_f
.end method
