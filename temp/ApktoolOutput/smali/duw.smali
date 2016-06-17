.class public final Lduw;
.super Ldcl;
.source "SubscribeTimeLineFragment.java"


# instance fields
.field private synthetic a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;Lerv;)V
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
    .line 173
    iput-object p1, p0, Lduw;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;

    .line 174
    invoke-virtual {p1}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->c()I

    move-result v0

    invoke-direct {p0, p2, v0}, Ldcl;-><init>(Lerv;I)V

    .line 175
    return-void
.end method


# virtual methods
.method protected final d(II)I
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0b00d0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Lduw;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->a(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 197
    :goto_0
    return v0

    .line 184
    :cond_0
    if-lez p2, :cond_1

    iget-object v0, p0, Lduw;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->b(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 185
    :cond_1
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lduw;->a:Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->c(Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;)Leqw;

    move-result-object v0

    invoke-virtual {v0, p2}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 191
    invoke-static {}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeTimeLineFragment;->g()[Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    move-result-object v4

    array-length v5, v4

    move v3, v1

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    .line 192
    iget-object v7, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v6, v7}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v1, v2

    .line 197
    :cond_3
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    .line 191
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 197
    goto :goto_0
.end method
