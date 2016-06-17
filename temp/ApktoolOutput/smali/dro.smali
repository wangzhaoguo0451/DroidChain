.class public final Ldro;
.super Ljava/lang/Object;
.source "SearchQueryHistoryFragment.java"

# interfaces
.implements Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;


# instance fields
.field private synthetic a:Ldcb;

.field private synthetic b:Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;Ldcb;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Ldro;->b:Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;

    iput-object p2, p0, Ldro;->a:Ldcb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Ldro;->b:Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->c(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;)I

    .line 103
    iget-object v0, p0, Ldro;->a:Ldcb;

    iget-object v0, v0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 104
    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity;->content_type:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->BUTTON:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-eq v0, v2, :cond_0

    .line 105
    iget-object v0, p0, Ldro;->b:Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->d(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;)I

    goto :goto_0

    .line 109
    :cond_0
    return-void
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    return-void
.end method
