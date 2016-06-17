.class public final Ldsk;
.super Ljava/lang/Object;
.source "SearchHintHelper.java"


# instance fields
.field a:I

.field public b:Z

.field c:Z

.field public d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Ldsk;->a:I

    .line 39
    sget-object v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    .line 46
    iput-object p1, p0, Ldsk;->e:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Ldsk;->f:Landroid/widget/TextView;

    .line 48
    iput-boolean p3, p0, Ldsk;->c:Z

    .line 49
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Ldsk;->e:Landroid/content/Context;

    const v1, 0x7f0e052c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Ldsk;->g:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Ldsk;->g:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Ldsk;->g:Ljava/util/Timer;

    .line 172
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 52
    sget-object v0, Ldca;->a:Ldca;

    iget-object v0, v0, Ldca;->b:Ldrq;

    invoke-virtual {v0, p1}, Ldrq;->a(Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)Ljava/util/Set;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Ldsk;->a(Ljava/util/Collection;)V

    .line 59
    const-string v0, "http://apis.wandoujia.com/five/v1/search/hint?format=proto&pattern=%d"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->getPattern()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 61
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v2, Ldcb;

    invoke-direct {v2, v0, v1}, Ldcb;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "timestamp"

    aput-object v1, v0, v6

    iput-object v0, v2, Lhhv;->i:[Ljava/lang/String;

    .line 64
    new-instance v0, Ldsl;

    invoke-direct {v0, p0, p1}, Ldsl;-><init>(Ldsk;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    invoke-virtual {v2, v0}, Ldcb;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    .line 92
    invoke-virtual {v2}, Ldcb;->g()V

    .line 93
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 155
    iput-boolean p2, p0, Ldsk;->b:Z

    .line 156
    iget-object v0, p0, Ldsk;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method final a(Ljava/util/Collection;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0}, Ldsk;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Ldsk;->a(Ljava/lang/String;Z)V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    array-length v1, v0

    if-le v1, v2, :cond_2

    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    new-instance v2, Ldsm;

    invoke-direct {v2, p0, v0}, Ldsm;-><init>(Ldsk;[Ljava/lang/String;)V

    iget-object v0, p0, Ldsk;->g:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Ldsk;->g:Ljava/util/Timer;

    iget-object v0, p0, Ldsk;->g:Ljava/util/Timer;

    new-instance v1, Ldsn;

    invoke-direct {v1, v2}, Ldsn;-><init>(Landroid/os/Handler;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    aget-object v0, v0, v3

    invoke-virtual {p0, v0, v2}, Ldsk;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
