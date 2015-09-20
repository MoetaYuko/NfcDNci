.class Lcom/android/nfc/ConfirmNfcEnableActivity$2;
.super Ljava/lang/Object;
.source "ConfirmNfcEnableActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/ConfirmNfcEnableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/ConfirmNfcEnableActivity;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/nfc/ConfirmNfcEnableActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/nfc/ConfirmNfcEnableActivity$2;->this$0:Lcom/android/nfc/ConfirmNfcEnableActivity;

    iput-object p2, p0, Lcom/android/nfc/ConfirmNfcEnableActivity$2;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.action.ALLOW_NFC_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "allowIntent":Landroid/content/Intent;
    const-string v1, "com.android.nfc.action.EXTRA_PKG"

    iget-object v2, p0, Lcom/android/nfc/ConfirmNfcEnableActivity$2;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/android/nfc/ConfirmNfcEnableActivity$2;->this$0:Lcom/android/nfc/ConfirmNfcEnableActivity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    iget-object v1, p0, Lcom/android/nfc/ConfirmNfcEnableActivity$2;->this$0:Lcom/android/nfc/ConfirmNfcEnableActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 54
    return-void
.end method
