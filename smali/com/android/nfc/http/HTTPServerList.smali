.class public Lcom/android/nfc/http/HTTPServerList;
.super Ljava/util/Vector;
.source "HTTPServerList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private binds:[Ljava/net/InetAddress;

.field private port:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 30
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/nfc/http/HTTPServerList;->port:I

    .line 33
    return-void
.end method

.method public constructor <init>([Ljava/net/InetAddress;I)V
    .registers 4
    .param p1, "list"    # [Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 30
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/nfc/http/HTTPServerList;->port:I

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/android/nfc/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 49
    iput p2, p0, Lcom/android/nfc/http/HTTPServerList;->port:I

    .line 50
    return-void
.end method


# virtual methods
.method public addRequestListener(Lcom/android/nfc/http/HTTPRequestListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/nfc/http/HTTPRequestListener;

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 58
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_5
    if-ge v0, v1, :cond_11

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPServerList;->getHTTPServer(I)Lcom/android/nfc/http/HTTPServer;

    move-result-object v2

    .line 60
    .local v2, "server":Lcom/android/nfc/http/HTTPServer;
    invoke-virtual {v2, p1}, Lcom/android/nfc/http/HTTPServer;->addRequestListener(Lcom/android/nfc/http/HTTPRequestListener;)V

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 62
    .end local v2    # "server":Lcom/android/nfc/http/HTTPServer;
    :cond_11
    return-void
.end method

.method public close()V
    .registers 4

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 74
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_5
    if-ge v0, v1, :cond_11

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPServerList;->getHTTPServer(I)Lcom/android/nfc/http/HTTPServer;

    move-result-object v2

    .line 76
    .local v2, "server":Lcom/android/nfc/http/HTTPServer;
    invoke-virtual {v2}, Lcom/android/nfc/http/HTTPServer;->close()Z

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 78
    .end local v2    # "server":Lcom/android/nfc/http/HTTPServer;
    :cond_11
    return-void
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHTTPServer(I)Lcom/android/nfc/http/HTTPServer;
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/http/HTTPServer;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .registers 2

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/util/Vector;->hashCode()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public open()I
    .registers 10

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/nfc/http/HTTPServerList;->binds:[Ljava/net/InetAddress;

    .line 83
    .local v1, "binds":[Ljava/net/InetAddress;
    if-eqz v1, :cond_16

    .line 84
    array-length v7, v1

    new-array v0, v7, [Ljava/lang/String;

    .line 85
    .local v0, "bindAddresses":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    array-length v7, v1

    if-ge v3, v7, :cond_28

    .line 86
    aget-object v7, v1, v3

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v3

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 89
    .end local v0    # "bindAddresses":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_16
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->getNHostAddresses()I

    move-result v6

    .line 90
    .local v6, "nHostAddrs":I
    new-array v0, v6, [Ljava/lang/String;

    .line 91
    .restart local v0    # "bindAddresses":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_1d
    if-ge v5, v6, :cond_28

    .line 92
    invoke-static {v5}, Lcom/android/nfc/http/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v5

    .line 91
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 95
    .end local v5    # "n":I
    .end local v6    # "nHostAddrs":I
    :cond_28
    const/4 v4, 0x0

    .line 96
    .local v4, "j":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2a
    array-length v7, v0

    if-ge v3, v7, :cond_4f

    .line 97
    new-instance v2, Lcom/android/nfc/http/HTTPServer;

    invoke-direct {v2}, Lcom/android/nfc/http/HTTPServer;-><init>()V

    .line 98
    .local v2, "httpServer":Lcom/android/nfc/http/HTTPServer;
    aget-object v7, v0, v3

    if-eqz v7, :cond_40

    aget-object v7, v0, v3

    iget v8, p0, Lcom/android/nfc/http/HTTPServerList;->port:I

    invoke-virtual {v2, v7, v8}, Lcom/android/nfc/http/HTTPServer;->open(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_49

    .line 99
    :cond_40
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPServerList;->close()V

    .line 100
    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    .line 96
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 102
    :cond_49
    invoke-virtual {p0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 106
    .end local v2    # "httpServer":Lcom/android/nfc/http/HTTPServer;
    :cond_4f
    return v4
.end method

.method public open(I)Z
    .registers 3
    .param p1, "port"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/android/nfc/http/HTTPServerList;->port:I

    .line 111
    invoke-virtual {p0}, Lcom/android/nfc/http/HTTPServerList;->open()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public start()V
    .registers 4

    .prologue
    .line 119
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 120
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_5
    if-ge v0, v1, :cond_11

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPServerList;->getHTTPServer(I)Lcom/android/nfc/http/HTTPServer;

    move-result-object v2

    .line 122
    .local v2, "server":Lcom/android/nfc/http/HTTPServer;
    invoke-virtual {v2}, Lcom/android/nfc/http/HTTPServer;->start()Z

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 124
    .end local v2    # "server":Lcom/android/nfc/http/HTTPServer;
    :cond_11
    return-void
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 128
    .local v1, "nServers":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_5
    if-ge v0, v1, :cond_11

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/nfc/http/HTTPServerList;->getHTTPServer(I)Lcom/android/nfc/http/HTTPServer;

    move-result-object v2

    .line 130
    .local v2, "server":Lcom/android/nfc/http/HTTPServer;
    invoke-virtual {v2}, Lcom/android/nfc/http/HTTPServer;->stop()Z

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 132
    .end local v2    # "server":Lcom/android/nfc/http/HTTPServer;
    :cond_11
    return-void
.end method
