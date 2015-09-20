.class Lcom/android/nfc/NfcDispatcher$DispatchInfo$1;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcDispatcher$DispatchInfo;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)V
    .registers 2

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo$1;->this$0:Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .param p1, "btn"    # Landroid/widget/CompoundButton;
    .param p2, "value"    # Z

    .prologue
    .line 232
    if-eqz p2, :cond_a

    .line 233
    const-string v0, "persist.hw_nfc_url"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    :goto_9
    return-void

    .line 235
    :cond_a
    const-string v0, "persist.hw_nfc_url"

    const-string v1, "0"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_9
.end method
