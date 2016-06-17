.class public final Ldue;
.super Ldcl;
.source "PublisherProfileFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;Lerv;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lerv",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    iput-object p1, p0, Ldue;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ldcl;-><init>(Lerv;I)V

    .line 134
    return-void
.end method


# virtual methods
.method protected final d(II)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 139
    iget-object v0, p0, Ldue;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->a(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v3

    .line 143
    :cond_1
    if-eqz p2, :cond_0

    .line 145
    iget-object v0, p0, Ldue;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->b(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)Lhaz;

    move-result-object v0

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Ldue;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->d(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)Lhaz;

    move-result-object v0

    iget-object v0, v0, Lerv;->d:Ljava/util/List;

    iget-object v1, p0, Ldue;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->c(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)Lhaz;

    move-result-object v1

    iget-object v1, v1, Lerv;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v1, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->END:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v0, v1, :cond_0

    .line 152
    :cond_2
    if-lez p2, :cond_0

    iget-object v0, p0, Ldue;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->e(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 156
    iget-object v0, p0, Ldue;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->f(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0, p2}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 157
    if-lez p2, :cond_6

    iget-object v1, p0, Ldue;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->g(Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;)Leqw;

    move-result-object v1

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v1, v4}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    move-object v5, v1

    .line 160
    :goto_1
    if-eqz v5, :cond_7

    iget-object v1, v5, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DETAIL_HEADER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1, v4}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_MICRO:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1, v4}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    move v4, v2

    .line 166
    :goto_2
    if-eqz v5, :cond_8

    iget-object v1, v5, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    iget-object v6, p0, Ldue;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;

    iget-object v6, v6, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->d:[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-static {v1, v6}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->a(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    .line 170
    :goto_3
    iget-object v6, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    iget-object v7, p0, Ldue;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;

    iget-object v7, v7, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->e:[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-static {v6, v7}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherProfileFragment;->a(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v5, :cond_9

    iget-object v5, v5, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v5, :cond_9

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    if-nez v0, :cond_9

    :cond_3
    move v0, v2

    .line 174
    :goto_4
    if-nez v4, :cond_4

    if-nez v1, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v3, v2

    .line 175
    :cond_5
    if-eqz v3, :cond_a

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    goto/16 :goto_0

    .line 157
    :cond_6
    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_1

    :cond_7
    move v4, v3

    .line 160
    goto :goto_2

    :cond_8
    move v1, v3

    .line 166
    goto :goto_3

    :cond_9
    move v0, v3

    .line 170
    goto :goto_4

    :cond_a
    move v3, v2

    .line 175
    goto/16 :goto_0
.end method
