.class Lcom/android/nfc/SwpUnsupportActivity$1;
.super Ljava/lang/Object;
.source "SwpUnsupportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/SwpUnsupportActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/SwpUnsupportActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/SwpUnsupportActivity;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/nfc/SwpUnsupportActivity$1;->this$0:Lcom/android/nfc/SwpUnsupportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 30
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 31
    iget-object v0, p0, Lcom/android/nfc/SwpUnsupportActivity$1;->this$0:Lcom/android/nfc/SwpUnsupportActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 32
    return-void
.end method
