.class final Lcom/android/nfc/SendUi$ScreenshotTask;
.super Landroid/os/AsyncTask;
.source "SendUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/SendUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScreenshotTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/SendUi;


# direct methods
.method constructor <init>(Lcom/android/nfc/SendUi;)V
    .registers 2

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/SendUi;->createScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 546
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/SendUi$ScreenshotTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 554
    iget-object v0, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iget v0, v0, Lcom/android/nfc/SendUi;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 556
    iget-object v0, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iput v3, v0, Lcom/android/nfc/SendUi;->mState:I

    .line 576
    :goto_d
    return-void

    .line 557
    :cond_e
    iget-object v0, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iget v0, v0, Lcom/android/nfc/SendUi;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    .line 559
    iget-object v0, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iput v2, v0, Lcom/android/nfc/SendUi;->mState:I

    goto :goto_d

    .line 560
    :cond_1a
    iget-object v0, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iget v0, v0, Lcom/android/nfc/SendUi;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_45

    .line 561
    if-eqz p1, :cond_39

    .line 562
    iget-object v0, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iput-object p1, v0, Lcom/android/nfc/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 563
    iget-object v0, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iput v3, v0, Lcom/android/nfc/SendUi;->mState:I

    .line 565
    iget-object v0, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iget-object v1, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iget v1, v1, Lcom/android/nfc/SendUi;->mFastConnType:I

    iget-object v2, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iget-boolean v2, v2, Lcom/android/nfc/SendUi;->mWifiConnWlan:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/SendUi;->showPreSend(IZ)V

    goto :goto_d

    .line 570
    :cond_39
    const-string v0, "SendUi"

    const-string v1, "Failed to create screenshot"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iput v2, v0, Lcom/android/nfc/SendUi;->mState:I

    goto :goto_d

    .line 574
    :cond_45
    const-string v0, "SendUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid state on screenshot completion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/SendUi;

    iget v2, v2, Lcom/android/nfc/SendUi;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 546
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/SendUi$ScreenshotTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
