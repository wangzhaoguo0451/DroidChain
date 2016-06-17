.class public final Lddn;
.super Ljava/lang/Object;
.source "CategoryListProcessor.java"

# interfaces
.implements Leqx;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leqx",
        "<",
        "Lcom/wandoujia/ripple_framework/model/Model;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    const v10, 0x7fffffff

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 31
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 34
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    move v2, v3

    .line 35
    :goto_1
    if-eqz v2, :cond_1

    .line 36
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 40
    :cond_1
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v7, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->CONTAINER:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v1, v7, :cond_0

    .line 41
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v10, :cond_5

    .line 42
    :cond_2
    :goto_2
    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    if-nez v2, :cond_3

    .line 45
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    .line 47
    :cond_3
    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    move v2, v4

    .line 34
    goto :goto_1

    .line 41
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    sget-object v7, Lham;->f:Lham;

    iget-object v7, v7, Lhal;->d:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e02c3

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v7}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    sget-object v8, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->APP:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v8}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->getValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/wandoujia/api/proto/Entity$Builder;->type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v7

    sget-object v8, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->LIST_ITEM_EXPEND:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v7, v8}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v7

    new-instance v8, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v8, v7}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v8, v3, v7}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    const/4 v7, 0x2

    invoke-virtual {v8, v7, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(ILjava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, v10, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/wandoujia/ripple_framework/model/Model;->a(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1, v4, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_2

    .line 51
    :cond_6
    return-object v5
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
