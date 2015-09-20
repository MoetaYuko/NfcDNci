.class Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectTimerOutTask;
.super Ljava/util/TimerTask;
.source "P2PHandoverClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/P2PHandoverClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "P2PConnectTimerOutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;


# direct methods
.method private constructor <init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V
    .registers 2

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectTimerOutTask;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/handover/P2PHandoverClientSession;Lcom/android/nfc/handover/P2PHandoverClientSession$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/nfc/handover/P2PHandoverClientSession;
    .param p2, "x1"    # Lcom/android/nfc/handover/P2PHandoverClientSession$1;

    .prologue
    .line 1058
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectTimerOutTask;-><init>(Lcom/android/nfc/handover/P2PHandoverClientSession;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/android/nfc/handover/P2PHandoverClientSession$P2PConnectTimerOutTask;->this$0:Lcom/android/nfc/handover/P2PHandoverClientSession;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/nfc/handover/P2PHandoverClientSession;->access$000(Lcom/android/nfc/handover/P2PHandoverClientSession;I)V

    .line 1062
    return-void
.end method
