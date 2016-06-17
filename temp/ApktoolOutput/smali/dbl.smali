.class final Ldbl;
.super Ljava/util/TimerTask;
.source "ImageMemoryCache.java"


# instance fields
.field private synthetic a:Ldbj;


# direct methods
.method constructor <init>(Ldbj;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Ldbl;->a:Ldbj;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 32
    iget-object v0, p0, Ldbl;->a:Ldbj;

    iget-object v0, v0, Ldbj;->a:Ldz;

    invoke-virtual {v0}, Ldz;->a()Ljava/util/Map;

    move-result-object v0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 34
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldbm;

    iget-wide v6, v1, Ldbm;->b:J

    sub-long v6, v2, v6

    const-wide/32 v8, 0xea60

    cmp-long v1, v6, v8

    if-lez v1, :cond_0

    .line 36
    iget-object v1, p0, Ldbl;->a:Ldbj;

    iget-object v1, v1, Ldbj;->a:Ldz;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldz;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_1
    return-void
.end method
