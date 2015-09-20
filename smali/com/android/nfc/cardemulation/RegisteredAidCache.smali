.class public Lcom/android/nfc/cardemulation/RegisteredAidCache;
.super Ljava/lang/Object;
.source "RegisteredAidCache.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredAidCache$SettingsObserver;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    }
.end annotation


# static fields
.field static final ANDROID_PPSE_AID:Ljava/lang/String; = "325041592E5359532E4444463031"

.field static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "RegisteredAidCache"

.field static final routeOnlyDefault:Z = true


# instance fields
.field final PPSE_NAME:[B

.field final mAidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAidToServices:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mCategoryAids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mCategoryDefaults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field mNextTapComponent:Landroid/content/ComponentName;

.field mNfcEnabled:Z

.field mPpseResponse:[B

.field final mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

.field final mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

.field final mSettingsObserver:Lcom/android/nfc/cardemulation/RegisteredAidCache$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "routingManager"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidToServices:Ljava/util/TreeMap;

    .line 48
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/HashMap;

    .line 51
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mCategoryDefaults:Ljava/util/HashMap;

    .line 63
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mCategoryAids:Ljava/util/HashMap;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    .line 74
    iput-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNextTapComponent:Landroid/content/ComponentName;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 79
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_76

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->PPSE_NAME:[B

    .line 80
    iput-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    .line 108
    const-string v0, "RegisteredAidCache"

    const-string v1, "RegisteredAidCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$SettingsObserver;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache$SettingsObserver;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSettingsObserver:Lcom/android/nfc/cardemulation/RegisteredAidCache$SettingsObserver;

    .line 110
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    .line 111
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 112
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 114
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_payment_default_component"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSettingsObserver:Lcom/android/nfc/cardemulation/RegisteredAidCache$SettingsObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 117
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateFromSettingsLocked(I)Z

    .line 118
    return-void

    .line 79
    nop

    :array_76
    .array-data 1
        0x32t
        0x50t
        0x41t
        0x59t
        0x2et
        0x53t
        0x59t
        0x53t
        0x2et
        0x44t
        0x44t
        0x46t
        0x30t
        0x31t
    .end array-data
.end method

.method static bytesToString([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B

    .prologue
    .line 837
    const/16 v4, 0x10

    new-array v2, v4, [C

    fill-array-data v2, :array_30

    .line 838
    .local v2, "hexChars":[C
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [C

    .line 840
    .local v1, "chars":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_d
    array-length v4, p0

    if-ge v3, v4, :cond_29

    .line 841
    aget-byte v4, p0, v3

    and-int/lit16 v0, v4, 0xff

    .line 842
    .local v0, "byteValue":I
    mul-int/lit8 v4, v3, 0x2

    ushr-int/lit8 v5, v0, 0x4

    aget-char v5, v2, v5

    aput-char v5, v1, v4

    .line 843
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v0, 0xf

    aget-char v5, v2, v5

    aput-char v5, v1, v4

    .line 840
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 845
    .end local v0    # "byteValue":I
    :cond_29
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 837
    nop

    :array_30
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method static hexStringToByteArray(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 827
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 828
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 829
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_2a

    .line 830
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 829
    add-int/lit8 v1, v1, 0x2

    goto :goto_b

    .line 833
    :cond_2a
    return-object v0
.end method


# virtual methods
.method checkDefaultsLocked(ILjava/util/List;)V
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 729
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const-string v2, "payment"

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 731
    .local v0, "defaultPaymentService":Landroid/content/ComponentName;
    const-string v2, "RegisteredAidCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current default: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    if-eqz v0, :cond_52

    .line 734
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v2, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    .line 735
    .local v1, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-nez v1, :cond_37

    .line 736
    const-string v2, "RegisteredAidCache"

    const-string v3, "Default payment service unexpectedly removed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPaymentDefaultRemoved(ILjava/util/List;)V

    .line 750
    .end local v1    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_33
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateFromSettingsLocked(I)Z

    .line 751
    return-void

    .line 738
    .restart local v1    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_37
    const-string v2, "payment"

    invoke-virtual {v1, v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 739
    const-string v2, "RegisteredAidCache"

    const-string v3, "Default payment service had payment category removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPaymentDefaultRemoved(ILjava/util/List;)V

    goto :goto_33

    .line 743
    :cond_4a
    const-string v2, "RegisteredAidCache"

    const-string v3, "Default payment service still ok."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 748
    .end local v1    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_52
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setDefaultIfNeededLocked(ILjava/util/List;)V

    goto :goto_33
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 814
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 815
    const-string v3, "AID cache entries: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 817
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dumpEntry(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 819
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    :cond_28
    const-string v3, "Category defaults: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mCategoryDefaults:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 821
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37

    .line 823
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/ComponentName;>;"
    :cond_6e
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method dumpEntry(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 796
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 797
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v1, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 799
    .local v1, "defaultService":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 802
    .local v0, "defaultComponent":Landroid/content/ComponentName;
    :goto_35
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v5, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 803
    .local v4, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v5, "        "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 805
    const-string v5, "*DEFAULT* "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :cond_61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (Description: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 799
    .end local v0    # "defaultComponent":Landroid/content/ComponentName;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_8a
    const/4 v0, 0x0

    goto :goto_35

    .line 810
    .restart local v0    # "defaultComponent":Landroid/content/ComponentName;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_8c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method generateAidCacheLocked()V
    .registers 6

    .prologue
    .line 473
    const-string v3, "RegisteredAidCache"

    const-string v4, "generateAidCacheLocked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 476
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidToServices:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 477
    .local v1, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 478
    .local v0, "aid":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 479
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v3, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidLocked(Ljava/util/List;Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 484
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    :cond_40
    return-void
.end method

.method generateAidCategoriesLocked(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const-string v7, "RegisteredAidCache"

    const-string v8, "generateAidCategoriesLocked"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mCategoryAids:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 444
    .local v6, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v1

    .line 445
    .local v1, "aidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;>;"
    if-eqz v1, :cond_10

    .line 446
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;

    .line 447
    .local v0, "aidGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "groupCategory":Ljava/lang/String;
    const-string v7, "RegisteredAidCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateAidCategoriesLocked groupCategory: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mCategoryAids:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 450
    .local v2, "categoryAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v2, :cond_5d

    .line 451
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "categoryAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 453
    .restart local v2    # "categoryAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5d
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;->getAids()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 454
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mCategoryAids:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 457
    .end local v0    # "aidGroup":Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;
    .end local v1    # "aidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$AidGroup;>;"
    .end local v2    # "categoryAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "groupCategory":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_6a
    return-void
.end method

.method generateAidTreeLocked(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const-string v5, "RegisteredAidCache"

    const-string v6, "generateAidTreeLocked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidToServices:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->clear()V

    .line 420
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 421
    .local v4, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v5, "RegisteredAidCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateAidTree component: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 423
    .local v0, "aid":Ljava/lang/String;
    const-string v5, "RegisteredAidCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateAidTree AID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidToServices:Ljava/util/TreeMap;

    invoke-virtual {v5, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 426
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidToServices:Ljava/util/TreeMap;

    invoke-virtual {v5, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 427
    .local v1, "aidServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 429
    .end local v1    # "aidServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .restart local v1    # "aidServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidToServices:Ljava/util/TreeMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 436
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aidServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_86
    return-void
.end method

.method generatePpseResponseLocked()V
    .registers 26

    .prologue
    .line 487
    const-string v22, "RegisteredAidCache"

    const-string v23, "generatePpseResponseLocked"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/16 v20, 0x14

    .line 491
    .local v20, "totalLength":I
    const/4 v7, 0x0

    .line 492
    .local v7, "appLabelLength":I
    const/4 v6, 0x0

    .line 493
    .local v6, "appLabel":Ljava/lang/String;
    const/16 v18, 0x0

    .line 495
    .local v18, "sPriority":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v5, "aidsInPPSE":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v8, "appLabels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v14, "priorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    .line 501
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNextTapComponent:Landroid/content/ComponentName;

    .line 502
    .local v9, "defaultComponent":Landroid/content/ComponentName;
    if-nez v9, :cond_38

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mCategoryDefaults:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const-string v23, "payment"

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "defaultComponent":Landroid/content/ComponentName;
    check-cast v9, Landroid/content/ComponentName;

    .line 505
    .restart local v9    # "defaultComponent":Landroid/content/ComponentName;
    :cond_38
    const-string v22, "RegisteredAidCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "defaultComponent is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_60
    :goto_60
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_cd

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 510
    .local v4, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 511
    .local v2, "aid":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 514
    .local v17, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const-string v22, "325041592E5359532E4444463031"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8a

    .line 515
    const-string v22, "RegisteredAidCache"

    const-string v23, "Skip PPSE AID"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 519
    :cond_8a
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_db

    .line 521
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object/from16 v19, v0

    .line 529
    .local v19, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_98
    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v7

    .line 530
    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 531
    invoke-virtual/range {v19 .. v19}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_fc

    .line 532
    const-string v18, "01"

    .line 539
    :goto_b2
    add-int/lit8 v22, v20, 0xe

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    add-int v22, v22, v7

    const/16 v23, 0x103

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_ff

    .line 540
    const-string v22, "RegisteredAidCache"

    const-string v23, "Too much data for PPSE response"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .end local v2    # "aid":Ljava/lang/String;
    .end local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v17    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v19    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_cd
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-nez v22, :cond_118

    .line 552
    const-string v22, "RegisteredAidCache"

    const-string v23, "No AID for PPSE Response"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :goto_da
    return-void

    .line 522
    .restart local v2    # "aid":Ljava/lang/String;
    .restart local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .restart local v17    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_db
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_60

    .line 524
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/nfc/cardemulation/ApduServiceInfo;

    .restart local v19    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    goto :goto_98

    .line 534
    :cond_fc
    const-string v18, "02"

    goto :goto_b2

    .line 544
    :cond_ff
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0xe

    add-int v22, v22, v7

    add-int v20, v20, v22

    .line 549
    goto/16 :goto_60

    .line 556
    .end local v2    # "aid":Ljava/lang/String;
    .end local v4    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v17    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v19    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_118
    const/4 v12, 0x0

    .line 557
    .local v12, "nextWrite":I
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "nextWrite":I
    .local v13, "nextWrite":I
    const/16 v23, 0x6f

    aput-byte v23, v22, v12

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    add-int/lit8 v23, v20, -0x4

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v13

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "nextWrite":I
    .restart local v13    # "nextWrite":I
    const/16 v23, -0x7c

    aput-byte v23, v22, v12

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    const/16 v23, 0xe

    aput-byte v23, v22, v13

    .line 564
    const/4 v10, 0x0

    .local v10, "i":I
    move v13, v12

    .end local v12    # "nextWrite":I
    .restart local v13    # "nextWrite":I
    :goto_15c
    const/16 v22, 0xe

    move/from16 v0, v22

    if-ge v10, v0, :cond_178

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->PPSE_NAME:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v10

    aput-byte v23, v22, v13

    .line 564
    add-int/lit8 v10, v10, 0x1

    move v13, v12

    .end local v12    # "nextWrite":I
    .restart local v13    # "nextWrite":I
    goto :goto_15c

    .line 569
    :cond_178
    const/16 v21, 0x0

    .local v21, "xx":I
    move v12, v13

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    :goto_17b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2ea

    .line 571
    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 572
    .restart local v2    # "aid":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 574
    .local v3, "aidBytes":[B
    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "appLabel":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 575
    .restart local v6    # "appLabel":Ljava/lang/String;
    if-nez v6, :cond_287

    .line 576
    const/4 v7, 0x0

    .line 580
    :goto_19c
    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "sPriority":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 581
    .restart local v18    # "sPriority":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 582
    .local v16, "priorityBytes":[B
    const/16 v22, 0x0

    aget-byte v15, v16, v22

    .line 584
    .local v15, "priority":I
    const-string v22, "RegisteredAidCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "AID = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", appLabel = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", priority = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "nextWrite":I
    .restart local v13    # "nextWrite":I
    const/16 v23, -0x5b

    aput-byte v23, v22, v12

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    array-length v0, v3

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0xc

    add-int v23, v23, v7

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v13

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "nextWrite":I
    .restart local v13    # "nextWrite":I
    const/16 v23, -0x41

    aput-byte v23, v22, v12

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    const/16 v23, 0xc

    aput-byte v23, v22, v13

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "nextWrite":I
    .restart local v13    # "nextWrite":I
    array-length v0, v3

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x9

    add-int v23, v23, v7

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v12

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    const/16 v23, 0x61

    aput-byte v23, v22, v13

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "nextWrite":I
    .restart local v13    # "nextWrite":I
    array-length v0, v3

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x7

    add-int v23, v23, v7

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v12

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    const/16 v23, 0x4f

    aput-byte v23, v22, v13

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "nextWrite":I
    .restart local v13    # "nextWrite":I
    array-length v0, v3

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v12

    .line 600
    const/4 v10, 0x0

    move v12, v13

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    :goto_270
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_28d

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "nextWrite":I
    .restart local v13    # "nextWrite":I
    aget-byte v23, v3, v10

    aput-byte v23, v22, v12

    .line 600
    add-int/lit8 v10, v10, 0x1

    move v12, v13

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    goto :goto_270

    .line 578
    .end local v15    # "priority":I
    .end local v16    # "priorityBytes":[B
    :cond_287
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    goto/16 :goto_19c

    .line 604
    .restart local v15    # "priority":I
    .restart local v16    # "priorityBytes":[B
    :cond_28d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "nextWrite":I
    .restart local v13    # "nextWrite":I
    const/16 v23, 0x50

    aput-byte v23, v22, v12

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    int-to-byte v0, v7

    move/from16 v23, v0

    aput-byte v23, v22, v13

    .line 606
    const/4 v10, 0x0

    move v13, v12

    .end local v12    # "nextWrite":I
    .restart local v13    # "nextWrite":I
    :goto_2a8
    if-ge v10, v7, :cond_2c1

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v23

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v22, v13

    .line 606
    add-int/lit8 v10, v10, 0x1

    move v13, v12

    .end local v12    # "nextWrite":I
    .restart local v13    # "nextWrite":I
    goto :goto_2a8

    .line 610
    :cond_2c1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    const/16 v23, -0x79

    aput-byte v23, v22, v13

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "nextWrite":I
    .restart local v13    # "nextWrite":I
    const/16 v23, 0x1

    aput-byte v23, v22, v12

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    int-to-byte v0, v15

    move/from16 v23, v0

    aput-byte v23, v22, v13

    .line 569
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_17b

    .line 616
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "aidBytes":[B
    .end local v15    # "priority":I
    .end local v16    # "priorityBytes":[B
    :cond_2ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "nextWrite":I
    .restart local v13    # "nextWrite":I
    const/16 v23, -0x70

    aput-byte v23, v22, v12

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v22, v0

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "nextWrite":I
    .restart local v12    # "nextWrite":I
    const/16 v23, 0x0

    aput-byte v23, v22, v13

    .line 619
    const-string v22, "RegisteredAidCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "generatePpseResponseLocked() mPpseResponse = 0x"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->bytesToString([B)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_da
.end method

.method public getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mCategoryAids:Ljava/util/HashMap;

    const-string v3, "payment"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 148
    .local v0, "paymentAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 149
    const-string v1, "payment"

    monitor-exit v2

    .line 151
    :goto_18
    return-object v1

    :cond_19
    const-string v1, "other"

    monitor-exit v2

    goto :goto_18

    .line 153
    .end local v0    # "paymentAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1d
    move-exception v1

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "validateInstalled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 229
    const-string v3, "payment"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 230
    const-string v3, "RegisteredAidCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowing defaults for category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 246
    :goto_22
    return-object v1

    .line 233
    :cond_23
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 235
    :try_start_26
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nfc_payment_default_component"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_4d

    .line 239
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 240
    .local v1, "service":Landroid/content/ComponentName;
    if-eqz p3, :cond_3c

    if-nez v1, :cond_41

    .line 241
    :cond_3c
    monitor-exit v3

    goto :goto_22

    .line 248
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "service":Landroid/content/ComponentName;
    :catchall_3e
    move-exception v2

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_3e

    throw v2

    .line 243
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "service":Landroid/content/ComponentName;
    :cond_41
    :try_start_41
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v4, p1, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .end local v1    # "service":Landroid/content/ComponentName;
    :goto_49
    monitor-exit v3

    goto :goto_22

    .restart local v1    # "service":Landroid/content/ComponentName;
    :cond_4b
    move-object v1, v2

    goto :goto_49

    .line 246
    .end local v1    # "service":Landroid/content/ComponentName;
    :cond_4d
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_3e

    move-object v1, v2

    goto :goto_22
.end method

.method public getPpseResponse()[B
    .registers 3

    .prologue
    .line 775
    const-string v0, "RegisteredAidCache"

    const-string v1, "getPpseResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPpseResponse:[B

    return-object v0
.end method

.method public getServicesForCategory(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServicesForCategory(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invalidateCache(I)V
    .registers 3
    .param p1, "currentUser"    # I

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 772
    return-void
.end method

.method public isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "aid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const/4 v2, 0x0

    .line 159
    .local v2, "serviceFound":Z
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 160
    :try_start_6
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v3, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v2

    .line 161
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_37

    .line 162
    if-nez v2, :cond_1b

    .line 168
    const-string v3, "RegisteredAidCache"

    const-string v5, "Didn\'t find passed in service, invalidating cache."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v3, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 171
    :cond_1b
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 172
    :try_start_1e
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-object v1, v0

    .line 173
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_3a

    .line 174
    iget-object v3, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    if-eqz v3, :cond_35

    iget-object v3, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3d

    :cond_35
    move v3, v4

    .line 182
    :goto_36
    return v3

    .line 161
    :catchall_37
    move-exception v3

    :try_start_38
    monitor-exit v5
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v3

    .line 173
    :catchall_3a
    move-exception v3

    :try_start_3b
    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v3

    .line 176
    :cond_3d
    iget-object v3, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v3, :cond_4c

    .line 177
    iget-object v3, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_36

    .line 178
    :cond_4c
    iget-object v3, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_66

    .line 179
    iget-object v3, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_36

    :cond_66
    move v3, v4

    .line 182
    goto :goto_36
.end method

.method public isDefaultServiceForCategory(ILjava/lang/String;Landroid/content/ComponentName;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x1

    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, "serviceFound":Z
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 216
    :try_start_5
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v4, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v1

    .line 217
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_27

    .line 218
    if-nez v1, :cond_1a

    .line 219
    const-string v3, "RegisteredAidCache"

    const-string v4, "Didn\'t find passed in service, invalidating cache."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v3, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 222
    :cond_1a
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 224
    .local v0, "defaultService":Landroid/content/ComponentName;
    if-eqz v0, :cond_2a

    invoke-virtual {v0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    :goto_26
    return v2

    .line 217
    .end local v0    # "defaultService":Landroid/content/ComponentName;
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v2

    .line 224
    .restart local v0    # "defaultService":Landroid/content/ComponentName;
    :cond_2a
    const/4 v2, 0x0

    goto :goto_26
.end method

.method public isNextTapOverriden()Z
    .registers 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNextTapComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 123
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public onNfcDisabled()V
    .registers 3

    .prologue
    .line 780
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 781
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 782
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_12

    .line 783
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->onNfcDisabled()V

    .line 784
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 785
    return-void

    .line 782
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public onNfcEnabled()V
    .registers 3

    .prologue
    .line 788
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 789
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 790
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateFromSettingsLocked(I)Z

    .line 791
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_14

    .line 792
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->onNfcEnabled()V

    .line 793
    return-void

    .line 791
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method onPaymentDefaultRemoved(ILjava/util/List;)V
    .registers 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 675
    const/4 v2, 0x0

    .line 676
    .local v2, "numPaymentServices":I
    const/4 v1, 0x0

    .line 677
    .local v1, "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 678
    .local v3, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v4, "payment"

    invoke-virtual {v3, v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 679
    add-int/lit8 v2, v2, 0x1

    .line 680
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_8

    .line 683
    .end local v3    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_23
    const-string v4, "RegisteredAidCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Number of payment services is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    if-nez v2, :cond_4e

    .line 686
    const-string v4, "RegisteredAidCache"

    const-string v5, "Default removed, no services left."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string v4, "payment"

    invoke-virtual {p0, p1, v8, v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 703
    :cond_4d
    :goto_4d
    return-void

    .line 690
    :cond_4e
    if-ne v2, v7, :cond_5d

    .line 692
    const-string v4, "RegisteredAidCache"

    const-string v5, "Default removed, making remaining service default."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-string v4, "payment"

    invoke-virtual {p0, p1, v1, v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto :goto_4d

    .line 695
    :cond_5d
    if-le v2, v7, :cond_4d

    .line 698
    const-string v4, "RegisteredAidCache"

    const-string v5, "Default removed, asking user to pick."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v4, "payment"

    invoke-virtual {p0, p1, v8, v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 701
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->showDefaultRemovedDialog()V

    goto :goto_4d
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 755
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const-string v0, "RegisteredAidCache"

    const-string v1, "onServicesUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 757
    :try_start_a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-ne v0, p1, :cond_21

    .line 759
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->checkDefaultsLocked(ILjava/util/List;)V

    .line 760
    invoke-virtual {p0, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidTreeLocked(Ljava/util/List;)V

    .line 761
    invoke-virtual {p0, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCategoriesLocked(Ljava/util/List;)V

    .line 762
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 763
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked()V

    .line 767
    :goto_1f
    monitor-exit v1

    .line 768
    return-void

    .line 765
    :cond_21
    const-string v0, "RegisteredAidCache"

    const-string v2, "Ignoring update because it\'s not for the current user."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 767
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method resolveAidLocked(Ljava/util/List;Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .registers 15
    .param p2, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;"
        }
    .end annotation

    .prologue
    .local p1, "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 273
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2b

    .line 274
    :cond_b
    const-string v7, "RegisteredAidCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not resolve AID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to any service."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 408
    :cond_2a
    :goto_2a
    return-object v3

    .line 277
    :cond_2b
    new-instance v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-direct {v3, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 278
    .local v3, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const-string v7, "RegisteredAidCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolveAidLocked: resolving AID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    .line 280
    iget-object v7, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 281
    iput-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 283
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNextTapComponent:Landroid/content/ComponentName;

    .line 284
    .local v0, "defaultComponent":Landroid/content/ComponentName;
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAidLocked: next tap component is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mCategoryAids:Ljava/util/HashMap;

    const-string v7, "payment"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 286
    .local v2, "paymentAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_17f

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17f

    .line 287
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAidLocked: AID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is a payment AID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-nez v0, :cond_ac

    .line 291
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mCategoryDefaults:Ljava/util/HashMap;

    const-string v7, "payment"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "defaultComponent":Landroid/content/ComponentName;
    check-cast v0, Landroid/content/ComponentName;

    .line 293
    .restart local v0    # "defaultComponent":Landroid/content/ComponentName;
    :cond_ac
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAidLocked: default payment component is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v10, :cond_126

    .line 296
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 297
    .local v4, "resolvedService":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAidLocked: resolved single service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz v0, :cond_118

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_118

    .line 301
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAidLocked: DECISION: routing to (default) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iput-object v4, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    goto/16 :goto_2a

    .line 306
    :cond_118
    const-string v6, "RegisteredAidCache"

    const-string v7, "resolveAidLocked: DECISION: not routing because not default payment service."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto/16 :goto_2a

    .line 347
    .end local v4    # "resolvedService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v10, :cond_2a

    .line 350
    const-string v6, "RegisteredAidCache"

    const-string v7, "resolveAidLocked: multiple services matched."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    if-eqz v0, :cond_2a

    .line 352
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_139
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 353
    .local v5, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_139

    .line 354
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAidLocked: DECISION: routing to (default) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iput-object v5, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 360
    .end local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_16d
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-nez v6, :cond_2a

    .line 363
    const-string v6, "RegisteredAidCache"

    const-string v7, "resolveAidLocked: DECISION: not routing because not default payment service."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto/16 :goto_2a

    .line 375
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_17f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_183
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 376
    .restart local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_183

    .line 377
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAidLocked: DECISION: cat OTHER AID, routing to (default) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iput-object v5, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 383
    .end local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1b7
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-nez v6, :cond_2a

    .line 386
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v10, :cond_1ed

    .line 387
    iget-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    iput-object v6, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 388
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAidLocked: DECISION: cat OTHER AID, routing to (default) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 391
    :cond_1ed
    const-string v6, "RegisteredAidCache"

    const-string v7, "resolveAidLocked: DECISION: cat OTHER AID, routing all"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a
.end method

.method public resolveAidPrefix(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .registers 10
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v4, "RegisteredAidCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resolveAidPrefix AID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 129
    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-char v2, v4

    .line 130
    .local v2, "nextAidChar":C
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "nextAid":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidToServices:Ljava/util/TreeMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 134
    .local v0, "matches":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 135
    const/4 v3, 0x0

    monitor-exit v5

    .line 140
    :goto_52
    return-object v3

    .line 137
    :cond_53
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 139
    .local v3, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->aid:Ljava/lang/String;

    .line 140
    monitor-exit v5

    goto :goto_52

    .line 142
    .end local v0    # "matches":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;>;"
    .end local v1    # "nextAid":Ljava/lang/String;
    .end local v2    # "nextAidChar":C
    .end local v3    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :catchall_69
    move-exception v4

    monitor-exit v5
    :try_end_6b
    .catchall {:try_start_1b .. :try_end_6b} :catchall_69

    throw v4
.end method

.method public setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    if-eqz p2, :cond_10

    .line 258
    :try_start_5
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNextTapComponent:Landroid/content/ComponentName;

    .line 263
    :goto_7
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 264
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked()V

    .line 265
    monitor-exit v1

    .line 266
    const/4 v0, 0x1

    return v0

    .line 260
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNextTapComponent:Landroid/content/ComponentName;

    goto :goto_7

    .line 265
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v0
.end method

.method setDefaultIfNeededLocked(ILjava/util/List;)V
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const/4 v5, 0x1

    .line 706
    const/4 v2, 0x0

    .line 707
    .local v2, "numPaymentServices":I
    const/4 v1, 0x0

    .line 708
    .local v1, "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 709
    .local v3, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string v4, "payment"

    invoke-virtual {v3, v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 710
    add-int/lit8 v2, v2, 0x1

    .line 711
    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_7

    .line 714
    .end local v3    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_22
    if-le v2, v5, :cond_2c

    .line 716
    const-string v4, "RegisteredAidCache"

    const-string v5, "No default set, more than one service left."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :goto_2b
    return-void

    .line 717
    :cond_2c
    if-ne v2, v5, :cond_3b

    .line 719
    const-string v4, "RegisteredAidCache"

    const-string v5, "No default set, making single service default."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v4, "payment"

    invoke-virtual {p0, p1, v1, v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto :goto_2b

    .line 724
    :cond_3b
    const-string v4, "RegisteredAidCache"

    const-string v5, "No default set, last payment service removed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method

.method public setDefaultRoute(Ljava/lang/String;)V
    .registers 3
    .param p1, "seName"    # Ljava/lang/String;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/AidRoutingManager;->setDefaultRoute(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v0, "payment"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 189
    const-string v0, "RegisteredAidCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowing defaults for category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    .line 204
    :goto_21
    return v0

    .line 192
    :cond_22
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    if-eqz p2, :cond_2f

    :try_start_27
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 197
    :cond_2f
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_payment_default_component"

    if-eqz p2, :cond_43

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :goto_3d
    invoke-static {v2, v3, v0, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 203
    :goto_40
    monitor-exit v1

    .line 204
    const/4 v0, 0x1

    goto :goto_21

    .line 197
    :cond_43
    const/4 v0, 0x0

    goto :goto_3d

    .line 201
    :cond_45
    const-string v0, "RegisteredAidCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find default service to make default: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 203
    :catchall_5e
    move-exception v0

    monitor-exit v1
    :try_end_60
    .catchall {:try_start_27 .. :try_end_60} :catchall_5e

    throw v0
.end method

.method showDefaultRemovedDialog()V
    .registers 4

    .prologue
    .line 669
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 670
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 671
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 672
    return-void
.end method

.method updateFromSettingsLocked(I)Z
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 461
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_payment_default_component"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_3e

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 465
    .local v1, "newDefault":Landroid/content/ComponentName;
    :goto_12
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mCategoryDefaults:Ljava/util/HashMap;

    const-string v4, "payment"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 467
    .local v2, "oldDefault":Landroid/content/ComponentName;
    const-string v4, "RegisteredAidCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating default component to: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_40

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    :goto_2f
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    if-eq v1, v2, :cond_43

    const/4 v3, 0x1

    :goto_3d
    return v3

    .line 464
    .end local v1    # "newDefault":Landroid/content/ComponentName;
    .end local v2    # "oldDefault":Landroid/content/ComponentName;
    :cond_3e
    const/4 v1, 0x0

    goto :goto_12

    .line 467
    .restart local v1    # "newDefault":Landroid/content/ComponentName;
    .restart local v2    # "oldDefault":Landroid/content/ComponentName;
    :cond_40
    const-string v3, "null"

    goto :goto_2f

    .line 469
    :cond_43
    const/4 v3, 0x0

    goto :goto_3d
.end method

.method updateRoutingLocked()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 623
    const-string v6, "RegisteredAidCache"

    const-string v7, "updateRoutingLocked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-boolean v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    if-nez v6, :cond_14

    .line 625
    const-string v6, "RegisteredAidCache"

    const-string v7, "Not updating routing table because NFC is off."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :goto_13
    return-void

    .line 628
    :cond_14
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 631
    .local v2, "handledAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 632
    .local v1, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 633
    .local v0, "aid":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 634
    .local v4, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4c

    .line 636
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v6, v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->removeAid(Ljava/lang/String;)Z

    .line 652
    :cond_48
    :goto_48
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 637
    :cond_4c
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v6, :cond_6c

    .line 639
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 640
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    const-string v7, "DH"

    invoke-virtual {v6, v0, v7}, Lcom/android/nfc/cardemulation/AidRoutingManager;->setRouteForAid(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_48

    .line 642
    :cond_60
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/android/nfc/cardemulation/AidRoutingManager;->setRouteForAid(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_48

    .line 644
    :cond_6c
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v8, :cond_7c

    .line 647
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    const-string v7, "DH"

    invoke-virtual {v6, v0, v7}, Lcom/android/nfc/cardemulation/AidRoutingManager;->setRouteForAid(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_48

    .line 648
    :cond_7c
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_48

    .line 650
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    const-string v7, "DH"

    invoke-virtual {v6, v0, v7}, Lcom/android/nfc/cardemulation/AidRoutingManager;->setRouteForAid(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_48

    .line 656
    .end local v0    # "aid":Ljava/lang/String;
    .end local v1    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v4    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_8c
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v6}, Lcom/android/nfc/cardemulation/AidRoutingManager;->getRoutedAids()Ljava/util/Set;

    move-result-object v5

    .line 657
    .local v5, "routedAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_96
    :goto_96
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 658
    .restart local v0    # "aid":Ljava/lang/String;
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    .line 659
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing routing for AID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", because "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "there are no no interested services."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v6, v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->removeAid(Ljava/lang/String;)Z

    goto :goto_96

    .line 665
    .end local v0    # "aid":Ljava/lang/String;
    :cond_d2
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v6}, Lcom/android/nfc/cardemulation/AidRoutingManager;->commitRouting()V

    goto/16 :goto_13
.end method
