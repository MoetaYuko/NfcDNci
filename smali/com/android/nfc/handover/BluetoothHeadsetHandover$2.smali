.class Lcom/android/nfc/handover/BluetoothHeadsetHandover$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothHeadsetHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/BluetoothHeadsetHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/BluetoothHeadsetHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/BluetoothHeadsetHandover;)V
    .registers 2

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover$2;->this$0:Lcom/android/nfc/handover/BluetoothHeadsetHandover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothHeadsetHandover$2;->this$0:Lcom/android/nfc/handover/BluetoothHeadsetHandover;

    invoke-virtual {v0, p2}, Lcom/android/nfc/handover/BluetoothHeadsetHandover;->handleIntent(Landroid/content/Intent;)V

    .line 442
    return-void
.end method
