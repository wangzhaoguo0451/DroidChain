.class public Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment;
.super Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;
.source "PublisherCollectionFragment.java"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment;->a:I

    .line 46
    return-void
.end method


# virtual methods
.method protected final a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 33
    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DEFAULT_TAB:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v2, v0}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iput v1, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment;->a:I

    .line 38
    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->a(Ljava/util/List;)V

    .line 39
    return-void

    .line 32
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected final b()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment$UrlKeySubscribeListFragment;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment;->a:I

    return v0
.end method
