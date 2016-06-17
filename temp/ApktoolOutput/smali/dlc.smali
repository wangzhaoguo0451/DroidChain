.class public final Ldlc;
.super Lhic;
.source "BigCardLayoutPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lhic;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 2
    .parameter

    .prologue
    .line 18
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->tag:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Ldlc;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0063

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Leri;->f(I)Leri;

    .line 21
    :cond_0
    return-void
.end method
