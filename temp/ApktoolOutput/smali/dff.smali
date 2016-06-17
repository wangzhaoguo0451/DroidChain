.class public final Ldff;
.super Ldcb;
.source "DetailFragment.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 792
    invoke-direct {p0, p1}, Ldcb;-><init>(Ljava/lang/String;)V

    .line 793
    new-instance v0, Ldrh;

    invoke-direct {v0}, Ldrh;-><init>()V

    invoke-virtual {p0, v0}, Ldff;->a(Leqx;)V

    .line 794
    return-void
.end method

.method static synthetic a(Ldff;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 789
    iget-object v0, p0, Ldff;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v3, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DETAIL_UPGRADE_INFO:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v3, v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    sget-object v2, Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;->REMOVE:Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;

    new-instance v3, Leqz;

    invoke-direct {v3, v1, v0, v5, v5}, Leqz;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {p0, v2, v3}, Ldff;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Leqz;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
