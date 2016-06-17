.class final Lczx;
.super Lcxb;
.source "JsonReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1532
    invoke-direct {p0}, Lcxb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lczw;)V
    .locals 3
    .parameter

    .prologue
    .line 1534
    instance-of v0, p1, Lcxw;

    if-eqz v0, :cond_0

    .line 1535
    check-cast p1, Lcxw;

    sget-object v0, Lcom/wandoujia/gson/stream/JsonToken;->NAME:Lcom/wandoujia/gson/stream/JsonToken;

    invoke-virtual {p1, v0}, Lcxw;->a(Lcom/wandoujia/gson/stream/JsonToken;)V

    invoke-virtual {p1}, Lcxw;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p1, Lcxw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p1, Lcxw;->a:Ljava/util/List;

    new-instance v2, Lcwd;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Lcwd;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1547
    :goto_0
    return-void

    .line 1538
    :cond_0
    invoke-static {p1}, Lczw;->a(Lczw;)I

    move-result v0

    .line 1539
    if-nez v0, :cond_1

    .line 1540
    invoke-static {p1}, Lczw;->b(Lczw;)I

    move-result v0

    .line 1542
    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1543
    const/16 v0, 0x9

    invoke-static {p1, v0}, Lczw;->a(Lczw;I)I

    goto :goto_0

    .line 1544
    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 1545
    const/16 v0, 0x8

    invoke-static {p1, v0}, Lczw;->a(Lczw;I)I

    goto :goto_0

    .line 1546
    :cond_3
    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 1547
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lczw;->a(Lczw;I)I

    goto :goto_0

    .line 1549
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lczw;->f()Lcom/wandoujia/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lczw;->c(Lczw;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lczw;->d(Lczw;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
