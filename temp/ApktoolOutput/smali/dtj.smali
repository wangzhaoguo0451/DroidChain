.class public final Ldtj;
.super Ldcj;
.source "DiversionProcessor.java"


# instance fields
.field private a:Leqx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leqx",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leqx;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leqx",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ldcj;-><init>()V

    .line 23
    iput-object p1, p0, Ldtj;->a:Leqx;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 9
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
    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 30
    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DETAIL_HEADER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    iget-object v4, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->j()Lcom/wandoujia/api/proto/PublisherDetail;

    move-result-object v3

    .line 33
    new-instance v4, Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v5, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    invoke-direct {v4, v5}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    .line 34
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e04f1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v3, Lcom/wandoujia/api/proto/PublisherDetail;->subscribedCount:Ljava/lang/Integer;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Lcom/wandoujia/api/proto/PublisherDetail;->feedCount:Ljava/lang/Integer;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    .line 40
    new-instance v5, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v3, v3, Lcom/wandoujia/api/proto/PublisherDetail;->relatedApp:Lcom/wandoujia/api/proto/RelatedApp;

    if-eqz v3, :cond_0

    .line 43
    new-instance v3, Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    invoke-direct {v3, v0}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    sget-object v0, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SINGLE_MICRO:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v3, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    new-instance v3, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v3, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p0, Ldtj;->a:Leqx;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldtj;->a:Leqx;

    invoke-interface {v0, v1}, Leqx;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Ldcj;->a()V

    .line 62
    iget-object v0, p0, Ldtj;->a:Leqx;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Ldtj;->a:Leqx;

    invoke-interface {v0}, Leqx;->a()V

    .line 65
    :cond_0
    return-void
.end method
