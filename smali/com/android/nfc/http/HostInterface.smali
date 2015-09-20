.class public Lcom/android/nfc/http/HostInterface;
.super Ljava/lang/Object;
.source "HostInterface.java"


# static fields
.field public static final IPV4_BITMASK:I = 0x1

.field public static final IPV6_BITMASK:I = 0x10

.field public static final LOCAL_BITMASK:I = 0x100

.field public static final USE_LOOPBACK_ADDR:Z

.field public static final USE_ONLY_IPV4_ADDR:Z

.field public static final USE_ONLY_IPV6_ADDR:Z

.field private static ifAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, ""

    sput-object v0, Lcom/android/nfc/http/HostInterface;->ifAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHostAddress(I)Ljava/lang/String;
    .registers 10
    .param p0, "n"    # I

    .prologue
    .line 179
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->hasAssignedInterface()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 180
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v3

    .line 209
    :goto_b
    return-object v3

    .line 182
    :cond_c
    const/4 v4, 0x0

    .line 185
    .local v4, "hostAddrCnt":I
    :try_start_d
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v6

    .line 187
    .local v6, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_11
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_43

    .line 188
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 189
    .local v5, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 190
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 191
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 192
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/nfc/http/HostInterface;->isUsableAddress(Ljava/net/InetAddress;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 194
    if-ge v4, p0, :cond_38

    .line 195
    add-int/lit8 v4, v4, 0x1

    .line 196
    goto :goto_21

    .line 198
    :cond_38
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_3b
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_3b} :catch_3d

    move-result-object v3

    .line 201
    .local v3, "host":Ljava/lang/String;
    goto :goto_b

    .line 204
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "host":Ljava/lang/String;
    .end local v5    # "ni":Ljava/net/NetworkInterface;
    .end local v6    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_3d
    move-exception v2

    .line 206
    .local v2, "e":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    const/4 v3, 0x0

    goto :goto_b

    .line 209
    .end local v2    # "e":Ljava/net/SocketException;
    .restart local v6    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_43
    const-string v3, ""

    goto :goto_b
.end method

.method public static final getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 291
    move-object v0, p0

    .line 292
    .local v0, "hostAddr":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/nfc/http/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getIPv4Address()Ljava/lang/String;
    .registers 5

    .prologue
    .line 267
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 268
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_5
    if-ge v2, v1, :cond_16

    .line 269
    invoke-static {v2}, Lcom/android/nfc/http/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/nfc/http/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 273
    .end local v0    # "addr":Ljava/lang/String;
    :goto_12
    return-object v0

    .line 268
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 273
    .end local v0    # "addr":Ljava/lang/String;
    :cond_16
    const-string v0, ""

    goto :goto_12
.end method

.method public static final getIPv6Address()Ljava/lang/String;
    .registers 5

    .prologue
    .line 277
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 278
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_5
    if-ge v2, v1, :cond_16

    .line 279
    invoke-static {v2}, Lcom/android/nfc/http/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/nfc/http/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_13

    .line 283
    .end local v0    # "addr":Ljava/lang/String;
    :goto_12
    return-object v0

    .line 278
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 283
    .end local v0    # "addr":Ljava/lang/String;
    :cond_16
    const-string v0, ""

    goto :goto_12
.end method

.method public static final getInetAddress(I[Ljava/lang/String;)[Ljava/net/InetAddress;
    .registers 13
    .param p0, "ipfilter"    # I
    .param p1, "interfaces"    # [Ljava/lang/String;

    .prologue
    .line 135
    const/4 v10, 0x0

    new-array v8, v10, [Ljava/net/InetAddress;

    .line 136
    .local v8, "resultAddresses":[Ljava/net/InetAddress;
    if-eqz p1, :cond_5d

    .line 137
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 138
    .local v5, "iflist":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/net/NetworkInterface;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    array-length v10, p1

    if-ge v4, v10, :cond_1e

    .line 141
    :try_start_e
    aget-object v10, p1, v4

    invoke-static {v10}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_13
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_13} :catch_1c

    move-result-object v6

    .line 145
    .local v6, "ni":Ljava/net/NetworkInterface;
    if-eqz v6, :cond_19

    .line 146
    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v6    # "ni":Ljava/net/NetworkInterface;
    :cond_19
    :goto_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 142
    :catch_1c
    move-exception v3

    .line 143
    .local v3, "e":Ljava/net/SocketException;
    goto :goto_19

    .line 149
    .end local v3    # "e":Ljava/net/SocketException;
    :cond_1e
    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v7

    .line 157
    .end local v4    # "i":I
    .end local v5    # "iflist":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/net/NetworkInterface;>;"
    .local v7, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    :cond_27
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_65

    .line 159
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 160
    .restart local v6    # "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 161
    .local v2, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_27

    .line 162
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 163
    .local v0, "addr":Ljava/net/InetAddress;
    and-int/lit16 v10, p0, 0x100

    if-nez v10, :cond_4d

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v10

    if-nez v10, :cond_37

    .line 165
    :cond_4d
    and-int/lit8 v10, p0, 0x1

    if-nez v10, :cond_55

    and-int/lit8 v10, p0, 0x10

    if-eqz v10, :cond_37

    :cond_55
    instance-of v10, v0, Ljava/net/Inet4Address;

    if-eqz v10, :cond_37

    .line 166
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 152
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v2    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v6    # "ni":Ljava/net/NetworkInterface;
    .end local v7    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_5d
    :try_start_5d
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_60
    .catch Ljava/net/SocketException; {:try_start_5d .. :try_end_60} :catch_62

    move-result-object v7

    .restart local v7    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    goto :goto_22

    .line 153
    .end local v7    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_62
    move-exception v3

    .restart local v3    # "e":Ljava/net/SocketException;
    move-object v9, v8

    .line 175
    .end local v3    # "e":Ljava/net/SocketException;
    .end local v8    # "resultAddresses":[Ljava/net/InetAddress;
    .local v9, "resultAddresses":[Ljava/net/InetAddress;
    :goto_64
    return-object v9

    .line 171
    .end local v9    # "resultAddresses":[Ljava/net/InetAddress;
    .restart local v1    # "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .restart local v7    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v8    # "resultAddresses":[Ljava/net/InetAddress;
    :cond_65
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_74

    .line 172
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v8, v10, [Ljava/net/InetAddress;

    .line 173
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_74
    move-object v9, v8

    .line 175
    .end local v8    # "resultAddresses":[Ljava/net/InetAddress;
    .restart local v9    # "resultAddresses":[Ljava/net/InetAddress;
    goto :goto_64
.end method

.method public static final getInterface()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->hasAssignedInterface()Z

    move-result v1

    if-nez v1, :cond_e

    .line 65
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/nfc/http/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "firstIf":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/nfc/http/HostInterface;->setInterface(Ljava/lang/String;)V

    .line 69
    :cond_e
    sget-object v1, Lcom/android/nfc/http/HostInterface;->ifAddress:Ljava/lang/String;

    return-object v1
.end method

.method public static final getNHostAddresses()I
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 100
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->hasAssignedInterface()Z

    move-result v6

    if-ne v6, v3, :cond_8

    .line 122
    :cond_7
    :goto_7
    return v3

    .line 102
    :cond_8
    const/4 v3, 0x0

    .line 105
    .local v3, "nHostAddrs":I
    :try_start_9
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 107
    .local v5, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_d
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 108
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 109
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 110
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 111
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 112
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/nfc/http/HostInterface;->isUsableAddress(Ljava/net/InetAddress;)Z
    :try_end_2c
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_2c} :catch_32

    move-result v6

    if-eqz v6, :cond_1d

    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 115
    goto :goto_1d

    .line 117
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    .end local v5    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :catch_32
    move-exception v2

    .line 119
    .local v2, "e":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    const/4 v3, 0x0

    goto :goto_7
.end method

.method private static final hasAssignedInterface()Z
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/nfc/http/HostInterface;->ifAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static final hasIPv4Addresses()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 243
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 244
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_6
    if-ge v2, v1, :cond_16

    .line 245
    invoke-static {v2}, Lcom/android/nfc/http/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/nfc/http/HostInterface;->isIPv4Address(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_13

    .line 249
    .end local v0    # "addr":Ljava/lang/String;
    :goto_12
    return v3

    .line 244
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 249
    .end local v0    # "addr":Ljava/lang/String;
    :cond_16
    const/4 v3, 0x0

    goto :goto_12
.end method

.method public static final hasIPv6Addresses()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 253
    invoke-static {}, Lcom/android/nfc/http/HostInterface;->getNHostAddresses()I

    move-result v1

    .line 254
    .local v1, "addrCnt":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_6
    if-ge v2, v1, :cond_16

    .line 255
    invoke-static {v2}, Lcom/android/nfc/http/HostInterface;->getHostAddress(I)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "addr":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/nfc/http/HostInterface;->isIPv6Address(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_13

    .line 259
    .end local v0    # "addr":Ljava/lang/String;
    :goto_12
    return v3

    .line 254
    .restart local v0    # "addr":Ljava/lang/String;
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 259
    .end local v0    # "addr":Ljava/lang/String;
    :cond_16
    const/4 v3, 0x0

    goto :goto_12
.end method

.method public static final isIPv4Address(Ljava/lang/String;)Z
    .registers 4
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 229
    :try_start_1
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 230
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_b

    if-eqz v2, :cond_a

    .line 231
    const/4 v1, 0x1

    .line 235
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_a
    :goto_a
    return v1

    .line 233
    :catch_b
    move-exception v2

    goto :goto_a
.end method

.method public static final isIPv6Address(Ljava/lang/String;)Z
    .registers 4
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 218
    :try_start_1
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 219
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_b

    if-eqz v2, :cond_a

    .line 220
    const/4 v1, 0x1

    .line 224
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_a
    :goto_a
    return v1

    .line 222
    :catch_b
    move-exception v2

    goto :goto_a
.end method

.method private static final isUsableAddress(Ljava/net/InetAddress;)Z
    .registers 3
    .param p0, "addr"    # Ljava/net/InetAddress;

    .prologue
    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-ne v1, v0, :cond_8

    .line 86
    const/4 v0, 0x0

    .line 96
    :cond_8
    return v0
.end method

.method public static final setInterface(Ljava/lang/String;)V
    .registers 1
    .param p0, "ifaddr"    # Ljava/lang/String;

    .prologue
    .line 58
    sput-object p0, Lcom/android/nfc/http/HostInterface;->ifAddress:Ljava/lang/String;

    .line 59
    return-void
.end method
