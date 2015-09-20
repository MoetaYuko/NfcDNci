.class Lcom/android/nfc/handover/WiFiHandover$5;
.super Landroid/os/Handler;
.source "WiFiHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/WiFiHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private staList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/nfc/handover/WiFiHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/WiFiHandover;)V
    .registers 2

    .prologue
    .line 1813
    iput-object p1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x0

    const/16 v5, 0x6b

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1821
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_342

    .line 2026
    :cond_b
    :goto_b
    :pswitch_b
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2027
    :cond_e
    :goto_e
    return-void

    .line 1825
    :pswitch_f
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$300(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1831
    :goto_23
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->staList:Ljava/util/List;

    if-nez v0, :cond_32

    .line 1832
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/WiFiHandover;->disableDevice()Z

    goto :goto_e

    .line 1835
    :cond_32
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_33
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->staList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_52

    .line 1836
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->staList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$1500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1835
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 1840
    :cond_52
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/WiFiHandover;->disableDevice()Z

    goto :goto_b

    .line 1846
    .end local v7    # "i":I
    :pswitch_58
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$1600(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v1

    if-ne v0, v1, :cond_6e

    .line 1847
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 1849
    :cond_6e
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$300(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->access$1702(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1851
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$100(Lcom/android/nfc/handover/WiFiHandover;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 1852
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$1800(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/nfc/handover/WiFiHandover;->access$1900(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_b

    .line 1854
    :cond_92
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0, v13, v3}, Lcom/android/nfc/handover/WiFiHandover;->access$1900(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_b

    .line 1861
    :pswitch_99
    const-string v0, "WiFiHandover"

    const-string v1, "AP has started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$2100(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->access$2002(Lcom/android/nfc/handover/WiFiHandover;Ljava/lang/String;)Ljava/lang/String;

    .line 1863
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0, v4}, Lcom/android/nfc/handover/WiFiHandover;->access$202(Lcom/android/nfc/handover/WiFiHandover;I)I

    .line 1864
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$100(Lcom/android/nfc/handover/WiFiHandover;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1865
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 1870
    :pswitch_c3
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$100(Lcom/android/nfc/handover/WiFiHandover;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 1871
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 1875
    :cond_d6
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$900(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/HandoverManager;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/android/nfc/handover/HandoverManager;->sendFastConnectResult(II)V

    goto/16 :goto_b

    .line 1883
    :pswitch_e1
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2200(Lcom/android/nfc/handover/WiFiHandover;)Ljava/util/List;

    move-result-object v9

    .line 1885
    .local v9, "mLinkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    .line 1886
    .local v11, "size":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_ec
    if-ge v7, v11, :cond_105

    .line 1887
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$1500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1886
    add-int/lit8 v7, v7, 0x1

    goto :goto_ec

    .line 1892
    :cond_105
    const-string v0, "WiFiHandover"

    const-string v1, "this sta has disconnected AP,we should trun off AP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/WiFiHandover;->disableDevice()Z

    goto/16 :goto_b

    .line 1899
    .end local v7    # "i":I
    .end local v9    # "mLinkedStaList":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v11    # "size":I
    :pswitch_113
    const-string v0, "WiFiHandover"

    const-string v1, "AP buildHttpServer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1100(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1902
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1100(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$2300(Lcom/android/nfc/handover/WiFiHandover;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/TransmitManager;->buildHttpServer(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1909
    :pswitch_133
    const-string v0, "WiFiHandover"

    const-string v1, "ap receive file start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    monitor-enter p0

    .line 1912
    :try_start_13b
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1100(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    if-eqz v0, :cond_164

    .line 1913
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1100(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$1000(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/ConfigInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$1500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/handover/WiFiHandover;->access$2400(Lcom/android/nfc/handover/WiFiHandover;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$1500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/handover/TransmitManager;->getFileUris(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    :cond_164
    monitor-exit p0

    goto/16 :goto_b

    :catchall_167
    move-exception v0

    monitor-exit p0
    :try_end_169
    .catchall {:try_start_13b .. :try_end_169} :catchall_167

    throw v0

    .line 1921
    :pswitch_16a
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0, v13, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$1900(Lcom/android/nfc/handover/WiFiHandover;Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_b

    .line 1926
    :pswitch_171
    const-string v0, "WiFiHandover"

    const-string v1, "STA buildHttpServer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0, v3}, Lcom/android/nfc/handover/WiFiHandover;->access$802(Lcom/android/nfc/handover/WiFiHandover;Z)Z

    .line 1929
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1200(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1930
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1200(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$2300(Lcom/android/nfc/handover/WiFiHandover;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/TransmitManager;->buildHttpServer(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1937
    :pswitch_196
    const-string v0, "WiFiHandover"

    const-string v1, "sta receive file start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    monitor-enter p0

    .line 1939
    :try_start_19e
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->access$802(Lcom/android/nfc/handover/WiFiHandover;Z)Z

    .line 1941
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1200(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    if-eqz v0, :cond_1c8

    .line 1942
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$1200(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/TransmitManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$1000(Lcom/android/nfc/handover/WiFiHandover;)Lcom/android/nfc/handover/ConfigInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/nfc/handover/WiFiHandover;->access$2300(Lcom/android/nfc/handover/WiFiHandover;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$1500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/handover/TransmitManager;->getFileUris(Lcom/android/nfc/handover/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    :cond_1c8
    monitor-exit p0

    goto/16 :goto_b

    :catchall_1cb
    move-exception v0

    monitor-exit p0
    :try_end_1cd
    .catchall {:try_start_19e .. :try_end_1cd} :catchall_1cb

    throw v0

    .line 1949
    :pswitch_1ce
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0, v3}, Lcom/android/nfc/handover/WiFiHandover;->access$2500(Lcom/android/nfc/handover/WiFiHandover;Z)V

    goto/16 :goto_b

    .line 1953
    :pswitch_1d5
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0, v2}, Lcom/android/nfc/handover/WiFiHandover;->access$2500(Lcom/android/nfc/handover/WiFiHandover;Z)V

    goto/16 :goto_b

    .line 1957
    :pswitch_1dc
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2600(Lcom/android/nfc/handover/WiFiHandover;)V

    goto/16 :goto_b

    .line 1962
    :pswitch_1e3
    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    monitor-enter v1

    .line 1963
    :try_start_1e6
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2700(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v0

    const/16 v2, 0xa

    if-gt v0, v2, :cond_220

    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$200(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v0

    if-eq v4, v0, :cond_220

    .line 1964
    const-string v0, "WiFiHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mConApNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v3}, Lcom/android/nfc/handover/WiFiHandover;->access$2700(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2600(Lcom/android/nfc/handover/WiFiHandover;)V

    .line 1966
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2708(Lcom/android/nfc/handover/WiFiHandover;)I

    .line 1968
    :cond_220
    monitor-exit v1

    goto/16 :goto_b

    :catchall_223
    move-exception v0

    monitor-exit v1
    :try_end_225
    .catchall {:try_start_1e6 .. :try_end_225} :catchall_223

    throw v0

    .line 1974
    :pswitch_226
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    iget-object v1, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v1}, Lcom/android/nfc/handover/WiFiHandover;->access$2100(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->access$2002(Lcom/android/nfc/handover/WiFiHandover;Ljava/lang/String;)Ljava/lang/String;

    .line 1976
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$600(Lcom/android/nfc/handover/WiFiHandover;)V

    .line 1977
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$100(Lcom/android/nfc/handover/WiFiHandover;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1978
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 1986
    :pswitch_24b
    iget-object v13, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    monitor-enter v13

    .line 1987
    :try_start_24e
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2800(Lcom/android/nfc/handover/WiFiHandover;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_260

    .line 1988
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/android/nfc/handover/WiFiHandover;->access$2802(Lcom/android/nfc/handover/WiFiHandover;Ljava/util/Timer;)Ljava/util/Timer;
    :try_end_260
    .catchall {:try_start_24e .. :try_end_260} :catchall_27f

    .line 1991
    :cond_260
    :try_start_260
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2800(Lcom/android/nfc/handover/WiFiHandover;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_27c

    .line 1992
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$2800(Lcom/android/nfc/handover/WiFiHandover;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/android/nfc/handover/WiFiHandover$ScanAPTimerTask;

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-direct {v1, v2}, Lcom/android/nfc/handover/WiFiHandover$ScanAPTimerTask;-><init>(Lcom/android/nfc/handover/WiFiHandover;)V

    const-wide/16 v2, 0x1770

    const-wide/16 v4, 0x1770

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_27c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_260 .. :try_end_27c} :catch_282
    .catch Ljava/lang/IllegalStateException; {:try_start_260 .. :try_end_27c} :catch_2a3
    .catchall {:try_start_260 .. :try_end_27c} :catchall_27f

    .line 2002
    :cond_27c
    :goto_27c
    :try_start_27c
    monitor-exit v13

    goto/16 :goto_b

    :catchall_27f
    move-exception v0

    monitor-exit v13
    :try_end_281
    .catchall {:try_start_27c .. :try_end_281} :catchall_27f

    throw v0

    .line 1994
    :catch_282
    move-exception v6

    .line 1995
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_283
    const-string v0, "WiFiHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_27c

    .line 1998
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2a3
    move-exception v6

    .line 1999
    .local v6, "e":Ljava/lang/IllegalStateException;
    const-string v0, "WiFiHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2c3
    .catchall {:try_start_283 .. :try_end_2c3} :catchall_27f

    goto :goto_27c

    .line 2007
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :pswitch_2c4
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$300(Lcom/android/nfc/handover/WiFiHandover;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v12

    .line 2009
    .local v12, "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const-string v0, "WiFiHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBeamState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v2}, Lcom/android/nfc/handover/WiFiHandover;->access$200(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    if-eqz v12, :cond_b

    .line 2011
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_2f2
    :goto_2f2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 2012
    .local v10, "result":Landroid/net/wifi/ScanResult;
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f2

    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$500(Lcom/android/nfc/handover/WiFiHandover;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f2

    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$200(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v0

    if-eq v0, v4, :cond_2f2

    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$200(Lcom/android/nfc/handover/WiFiHandover;)I

    move-result v0

    if-eq v0, v3, :cond_2f2

    .line 2013
    const-string v0, "WiFiHandover"

    const-string v1, "we have scaned ap ,connect it and cancel timer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0, v3}, Lcom/android/nfc/handover/WiFiHandover;->access$202(Lcom/android/nfc/handover/WiFiHandover;I)I

    .line 2015
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$600(Lcom/android/nfc/handover/WiFiHandover;)V

    .line 2016
    iget-object v0, p0, Lcom/android/nfc/handover/WiFiHandover$5;->this$0:Lcom/android/nfc/handover/WiFiHandover;

    invoke-static {v0}, Lcom/android/nfc/handover/WiFiHandover;->access$000(Lcom/android/nfc/handover/WiFiHandover;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2f2

    .line 1821
    nop

    :pswitch_data_342
    .packed-switch 0x64
        :pswitch_58
        :pswitch_99
        :pswitch_1dc
        :pswitch_1ce
        :pswitch_226
        :pswitch_1e3
        :pswitch_c3
        :pswitch_113
        :pswitch_133
        :pswitch_171
        :pswitch_196
        :pswitch_b
        :pswitch_e1
        :pswitch_24b
        :pswitch_2c4
        :pswitch_1d5
        :pswitch_16a
        :pswitch_f
    .end packed-switch
.end method
