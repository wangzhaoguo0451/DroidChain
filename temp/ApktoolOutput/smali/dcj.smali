.class public Ldcj;
.super Ljava/lang/Object;
.source "JupiterDataProcessor.java"

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
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static a(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Ljava/util/List;
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            "Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/model/Model;->e()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Image;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Image;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 75
    :goto_0
    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v0}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity;->type:Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->type(Ljava/lang/Integer;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->action(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->sub_title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    .line 64
    new-instance v2, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v2, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    .line 65
    iput-object p0, v2, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 70
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/wandoujia/ripple_framework/model/Model;->e:Z

    .line 71
    iput-object p0, v0, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    .line 72
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 75
    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 5
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
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 27
    sget-object v3, Ldck;->a:[I

    iget-object v4, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v4}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 37
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :pswitch_0
    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->GROUP:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-static {v0, v3}, Ldcj;->a(Lcom/wandoujia/ripple_framework/model/Model;Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 40
    :cond_0
    return-object v1

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
