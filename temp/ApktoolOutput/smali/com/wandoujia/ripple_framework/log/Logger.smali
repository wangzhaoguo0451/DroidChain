.class public final Lcom/wandoujia/ripple_framework/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# instance fields
.field public a:Leny;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lemu;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {p1, p2}, Leny;->a(Landroid/content/Context;Lemu;)V

    .line 119
    invoke-static {}, Leny;->b()Leny;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/log/Logger;->a:Leny;

    .line 120
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/log/Logger;->a:Leny;

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/log/Logger$Module;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Leny;->a(Landroid/view/View;Ljava/lang/String;)Leny;

    move-result-object v0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Leny;

    .line 342
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->CARD:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    if-eq v0, p3, :cond_0

    sget-object v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->LIST_ITEM:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    if-ne v0, p3, :cond_1

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/log/Logger;->a:Leny;

    invoke-virtual {v0, p1}, Leny;->k(Landroid/view/View;)Leny;

    .line 346
    :cond_1
    return-object p0
.end method

.method public final a(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)Lcom/wandoujia/ripple_framework/log/Logger;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 358
    if-nez p2, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-object p0

    .line 361
    :cond_1
    iget-object v4, p0, Lcom/wandoujia/ripple_framework/log/Logger;->a:Leny;

    new-instance v1, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    move-result-object v1

    iget-object v5, p2, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v5}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    move-result-object v1

    iget-object v5, p2, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    iget-object v6, p2, Lcom/wandoujia/ripple_framework/model/Model;->m:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v5, v6, :cond_2

    iget-object v5, p2, Lcom/wandoujia/ripple_framework/model/Model;->m:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v5}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->sub_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    :cond_2
    iget-object v5, p2, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v5, :cond_3

    iget-object v5, p2, Lcom/wandoujia/ripple_framework/model/Model;->c:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v5}, Lcom/wandoujia/ripple_framework/model/Model;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->parent_id(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    :cond_3
    iget-object v5, p2, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p2, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->num(Ljava/lang/Integer;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    :cond_4
    iget-object v5, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v5, v5, Lcom/wandoujia/api/proto/Entity$Builder;->badge:Ljava/lang/Integer;

    if-eqz v5, :cond_5

    iget-object v5, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v5, v5, Lcom/wandoujia/api/proto/Entity$Builder;->badge:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->status(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    :cond_5
    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v5

    iget-object v5, v5, Lcom/wandoujia/api/proto/AppDetail;->impr_url:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->sub_status(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    :cond_6
    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->tag(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;

    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/CardPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/CardPackage;

    move-result-object v1

    invoke-static {p1}, Leny;->j(Landroid/view/View;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->card_package(Lcom/wandoujia/logv3/model/packages/CardPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    new-instance v1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;-><init>()V

    iget-object v5, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v5, v5, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    move-result-object v1

    iget-object v5, p2, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v5}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->sub_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    move-result-object v5

    iget-object v1, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    if-eqz v1, :cond_b

    iget-object v1, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    if-eqz v1, :cond_b

    iget-object v1, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    if-eqz v1, :cond_b

    move v1, v2

    :goto_1
    if-eqz v1, :cond_c

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    :goto_2
    sget-object v1, Lhhi;->a:[I

    iget-object v6, p2, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v6}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_0

    :goto_3
    iget-object v1, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->badge:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    iget-object v1, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->badge:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    const/16 v6, 0x20

    if-ne v1, v6, :cond_7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->is_free(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    :cond_7
    invoke-virtual {v5}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ContentPackage;

    move-result-object v1

    invoke-virtual {v4, p1, v1}, Leny;->a(Landroid/view/View;Lcom/wandoujia/logv3/model/packages/ContentPackage;)Leny;

    .line 364
    new-instance v1, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;

    move-result-object v1

    iget-object v3, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Entity$Builder;->strategy_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Entity$Builder;->strategy_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->template(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;

    :cond_8
    iget-object v3, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Entity$Builder;->recommend_reason:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p2, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Entity$Builder;->recommend_reason:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->detail(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;

    :cond_9
    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/FeedPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/FeedPackage;

    move-result-object v1

    invoke-static {p1}, Leny;->j(Landroid/view/View;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->feed_package(Lcom/wandoujia/logv3/model/packages/FeedPackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    .line 365
    iget-object v1, p2, Lcom/wandoujia/ripple_framework/model/Model;->f:Lcom/wandoujia/ripple_framework/model/Model;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v3

    if-nez v3, :cond_d

    .line 366
    :cond_a
    :goto_4
    if-eqz v0, :cond_0

    .line 367
    invoke-static {p1}, Leny;->j(Landroid/view/View;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;->resource_package(Lcom/wandoujia/logv3/model/packages/ResourcePackage;)Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    goto/16 :goto_0

    :cond_b
    move v1, v3

    .line 361
    goto/16 :goto_1

    :cond_c
    invoke-virtual {p2}, Lcom/wandoujia/ripple_framework/model/Model;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    goto/16 :goto_2

    :pswitch_0
    sget-object v1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->APP:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-virtual {v5, v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    goto/16 :goto_3

    :pswitch_1
    sget-object v1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->GAME:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-virtual {v5, v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    goto/16 :goto_3

    :pswitch_2
    sget-object v1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->VIDEO:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-virtual {v5, v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    goto/16 :goto_3

    :pswitch_3
    sget-object v1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->SUGGESTION:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-virtual {v5, v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    goto/16 :goto_3

    :pswitch_4
    sget-object v1, Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;->IAS:Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;

    invoke-virtual {v5, v1}, Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/ContentPackage$Type;)Lcom/wandoujia/logv3/model/packages/ContentPackage$Builder;

    goto/16 :goto_3

    .line 365
    :cond_d
    invoke-virtual {v1}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    new-instance v3, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    invoke-direct {v3}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;-><init>()V

    iget-object v4, v0, Lcom/wandoujia/api/proto/AppDetail;->package_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->identity(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    move-result-object v3

    iget-object v4, v0, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->provider_name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    move-result-object v3

    iget-object v1, v1, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->sub_type(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    move-result-object v1

    iget-object v3, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->can_download(Ljava/lang/Boolean;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    :cond_e
    iget-object v2, v0, Lcom/wandoujia/api/proto/AppDetail;->app_platform:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    if-eqz v2, :cond_f

    iget-object v0, v0, Lcom/wandoujia/api/proto/AppDetail;->app_platform:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    sget-object v2, Lcom/wandoujia/api/proto/AppDetail$AppPlatform;->IOS:Lcom/wandoujia/api/proto/AppDetail$AppPlatform;

    if-ne v0, v2, :cond_f

    sget-object v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->PARTNER_PRIVATE:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    :goto_5
    invoke-virtual {v1}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ResourcePackage;

    move-result-object v0

    goto :goto_4

    :cond_f
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;->WDJ_HOSTED:Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;

    invoke-virtual {v1, v0}, Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;->type(Lcom/wandoujia/logv3/model/packages/ResourcePackage$Type;)Lcom/wandoujia/logv3/model/packages/ResourcePackage$Builder;

    goto :goto_5

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;)Lcom/wandoujia/ripple_framework/log/Logger;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/ripple_framework/log/Logger;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/ripple_framework/log/Logger;
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/log/Logger$PageParameter;",
            ">;)",
            "Lcom/wandoujia/ripple_framework/log/Logger;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/log/Logger;->a:Leny;

    new-instance v1, Leoj;

    invoke-direct {v1, p2}, Leoj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Leny;->a(Landroid/view/View;Leoj;)Leny;

    .line 308
    if-eqz p3, :cond_2

    .line 309
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/log/Logger$PageParameter;

    .line 311
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v4, v0, Lcom/wandoujia/ripple_framework/log/Logger$PageParameter;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/log/Logger$PageParameter;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :cond_0
    sget v0, Leny;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget v0, Leny;->c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    sget v0, Leny;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 315
    :cond_2
    return-object p0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/log/Logger;->a:Leny;

    invoke-virtual {v0, p1}, Leny;->a(Landroid/content/Context;)V

    .line 129
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/log/Logger;->a:Leny;

    invoke-virtual {v0, p1}, Leny;->b(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method public final a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/log/Logger;->a:Leny;

    invoke-virtual {v0, p1, p2}, Leny;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    .line 264
    return-void
.end method

.method public final a(Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;-><init>()V

    .line 177
    invoke-virtual {p1}, Lcom/wandoujia/ripple_framework/log/Logger$Module;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->module(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->action(Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->name(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->value(Ljava/lang/Long;)Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;

    .line 183
    new-instance v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    invoke-direct {v1}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;-><init>()V

    .line 184
    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;->VIEW_EVENT:Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;

    invoke-virtual {v1, v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->action(Lcom/wandoujia/logv3/model/packages/TaskEvent$Action;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Builder;->build()Lcom/wandoujia/logv3/model/packages/ViewLogPackage;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;->view_log_package(Lcom/wandoujia/logv3/model/packages/ViewLogPackage;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;

    .line 188
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;

    invoke-direct {v0}, Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;-><init>()V

    iget-object v2, p0, Lcom/wandoujia/ripple_framework/log/Logger;->a:Leny;

    invoke-virtual {v2, v1, v0}, Leny;->a(Lcom/wandoujia/logv3/model/packages/TaskEvent$Builder;Lcom/wandoujia/logv3/model/packages/ExtraPackage$Builder;)V

    .line 189
    return-void
.end method

.method public final b(Landroid/view/View;)Lcom/wandoujia/ripple_framework/log/Logger;
    .locals 2
    .parameter

    .prologue
    .line 389
    sget v0, Leny;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget v1, Leny;->d:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 390
    :cond_0
    return-object p0
.end method
