.class public Lcom/android/nfc/http/ParameterList;
.super Ljava/util/Vector;
.source "ParameterList.java"


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


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public at(I)Lcom/android/nfc/http/Parameter;
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/http/Parameter;

    return-object v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 32
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

.method public getParameter(I)Lcom/android/nfc/http/Parameter;
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/http/Parameter;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Lcom/android/nfc/http/Parameter;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 46
    if-nez p1, :cond_5

    move-object v2, v3

    .line 55
    :cond_4
    :goto_4
    return-object v2

    .line 49
    :cond_5
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 50
    .local v1, "nLists":I
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_a
    if-ge v0, v1, :cond_1d

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/nfc/http/ParameterList;->at(I)Lcom/android/nfc/http/Parameter;

    move-result-object v2

    .line 52
    .local v2, "param":Lcom/android/nfc/http/Parameter;
    invoke-virtual {v2}, Lcom/android/nfc/http/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .end local v2    # "param":Lcom/android/nfc/http/Parameter;
    :cond_1d
    move-object v2, v3

    .line 55
    goto :goto_4
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/nfc/http/ParameterList;->getParameter(Ljava/lang/String;)Lcom/android/nfc/http/Parameter;

    move-result-object v0

    .line 60
    .local v0, "param":Lcom/android/nfc/http/Parameter;
    if-nez v0, :cond_9

    .line 61
    const-string v1, ""

    .line 62
    :goto_8
    return-object v1

    :cond_9
    invoke-virtual {v0}, Lcom/android/nfc/http/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_8
.end method

.method public declared-synchronized hashCode()I
    .registers 2

    .prologue
    .line 38
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
