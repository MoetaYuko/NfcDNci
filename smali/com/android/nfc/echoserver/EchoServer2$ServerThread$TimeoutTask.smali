.class Lcom/android/nfc/echoserver/EchoServer2$ServerThread$TimeoutTask;
.super Ljava/util/TimerTask;
.source "EchoServer2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/echoserver/EchoServer2$ServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;


# direct methods
.method private constructor <init>(Lcom/android/nfc/echoserver/EchoServer2$ServerThread;)V
    .registers 2

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread$TimeoutTask;->this$1:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/echoserver/EchoServer2$ServerThread;Lcom/android/nfc/echoserver/EchoServer2$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/nfc/echoserver/EchoServer2$ServerThread;
    .param p2, "x1"    # Lcom/android/nfc/echoserver/EchoServer2$1;

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread$TimeoutTask;-><init>(Lcom/android/nfc/echoserver/EchoServer2$ServerThread;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer2$ServerThread$TimeoutTask;->this$1:Lcom/android/nfc/echoserver/EchoServer2$ServerThread;

    invoke-static {v0}, Lcom/android/nfc/echoserver/EchoServer2$ServerThread;->access$100(Lcom/android/nfc/echoserver/EchoServer2$ServerThread;)V

    .line 417
    return-void
.end method
