.class Lcom/android/nfc/handover/BluetoothFastConHandover$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothFastConHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/BluetoothFastConHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/BluetoothFastConHandover;)V
    .registers 2

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothFastConHandover$2;->this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothFastConHandover$2;->this$0:Lcom/android/nfc/handover/BluetoothFastConHandover;

    invoke-virtual {v0, p2}, Lcom/android/nfc/handover/BluetoothFastConHandover;->handleFastConIntent(Landroid/content/Intent;)V

    .line 334
    return-void
.end method
