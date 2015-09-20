.class Lcom/android/nfc/handover/BluetoothFastConHandover$BtConnectTimerOutTask;
.super Ljava/util/TimerTask;
.source "BluetoothFastConHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/BluetoothFastConHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BtConnectTimerOutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;


# direct methods
.method private constructor <init>(Lcom/android/nfc/handover/BluetoothFastConHandover;)V
    .registers 2

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover$BtConnectTimerOutTask;->this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/handover/BluetoothFastConHandover;Lcom/android/nfc/handover/BluetoothFastConHandover$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/nfc/handover/BluetoothFastConHandover;
    .param p2, "x1"    # Lcom/android/nfc/handover/BluetoothFastConHandover$1;

    .prologue
    .line 442
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/BluetoothFastConHandover$BtConnectTimerOutTask;-><init>(Lcom/android/nfc/handover/BluetoothFastConHandover;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 448
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover$BtConnectTimerOutTask;->this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;

    const/16 v2, 0x7d0

    invoke-static {v1, v2}, Lcom/android/nfc/handover/BluetoothFastConHandover;->access$100(Lcom/android/nfc/handover/BluetoothFastConHandover;I)V

    .line 449
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover$BtConnectTimerOutTask;->this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;

    iget-object v1, v1, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_33

    .line 450
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover$BtConnectTimerOutTask;->this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;

    iget-object v1, v1, Lcom/android/nfc/handover/BluetoothFastConHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    move-result v0

    .line 451
    .local v0, "status":Z
    const-string v1, "BluetoohFastConHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelBondProcess status is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v0    # "status":Z
    :cond_33
    return-void
.end method
