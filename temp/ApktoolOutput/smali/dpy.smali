.class public final Ldpy;
.super Lhic;
.source "SearchFilterPresenter.java"


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lhic;-><init>()V

    .line 29
    iput v0, p0, Ldpy;->a:I

    .line 30
    iput v0, p0, Ldpy;->b:I

    .line 156
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/wandoujia/ripple_framework/model/Model;Landroid/view/View;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "page_api_url"

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "extra_from_spinner"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "source"

    const-string v2, "FILTER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    sget-object v2, Lcom/wandoujia/ripple_framework/log/Logger$Module;->SEARCH:Lcom/wandoujia/ripple_framework/log/Logger$Module;

    sget-object v3, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;->SPINNER:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;

    sget-object v4, Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;->REDIRECT:Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;

    iget-object v1, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v5, v1, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/log/Logger$Module;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Element;Lcom/wandoujia/logv3/model/packages/ViewLogPackage$Action;Ljava/lang/String;Ljava/lang/Long;)Lcom/wandoujia/ripple_framework/log/Logger;

    if-eqz p1, :cond_1

    invoke-virtual {v0, p2, p1}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Lcom/wandoujia/ripple_framework/model/Model;)Lcom/wandoujia/ripple_framework/log/Logger;

    :cond_1
    invoke-virtual {v0, p2}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static b(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ")",
            "Ljava/util/List",
            "<",
            "Lhnt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 127
    :goto_0
    return-object v0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 125
    new-instance v3, Ldqc;

    invoke-direct {v3, v0}, Ldqc;-><init>(Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 127
    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)V
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 34
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Ldpy;->e()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 40
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v2

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/wandoujia/ripple_framework/model/Model;

    .line 45
    iget-object v0, v1, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    .line 46
    sget-object v8, Ldqb;->a:[I

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->ordinal()I

    move-result v0

    aget v0, v8, v0

    packed-switch v0, :pswitch_data_0

    move-object v1, v2

    :cond_1
    move-object v2, v1

    .line 72
    goto :goto_1

    .line 48
    :pswitch_0
    iget-object v8, v1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    .line 49
    invoke-static {v8}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    move v4, v3

    .line 50
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 51
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 52
    iget-object v9, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v9, v9, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v9, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SELECTED_SEARCH_FILTER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v0, v9, :cond_2

    .line 54
    iput v4, p0, Ldpy;->a:I

    .line 50
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_3
    move-object v4, v1

    .line 59
    goto :goto_1

    .line 61
    :pswitch_1
    iget-object v8, v1, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    .line 62
    invoke-static {v8}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    .line 63
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 64
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 65
    iget-object v9, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v9, v9, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v9, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SELECTED_SEARCH_SORTER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-ne v0, v9, :cond_4

    .line 67
    iput v2, p0, Ldpy;->b:I

    .line 63
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 78
    :cond_5
    invoke-virtual {p0}, Ldpy;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0366

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Lcom/wandoujia/ripple_framework/view/Spinner;

    .line 79
    new-instance v1, Ldrk;

    invoke-direct {v1}, Ldrk;-><init>()V

    .line 80
    invoke-static {v4}, Ldpy;->b(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ldrk;->a(Ljava/util/List;)V

    .line 81
    new-instance v3, Ldpz;

    invoke-direct {v3, p0, v0}, Ldpz;-><init>(Ldpy;Lcom/wandoujia/ripple_framework/view/Spinner;)V

    invoke-virtual {v0, v3}, Lcom/wandoujia/ripple_framework/view/Spinner;->setOnMenuSelectListener(Lhnr;)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/Spinner;->setAdapter(Lhns;)V

    .line 95
    iget v1, p0, Ldpy;->a:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/Spinner;->a(I)V

    .line 98
    invoke-virtual {p0}, Ldpy;->f()Leri;

    move-result-object v0

    const v1, 0x7f0c0353

    invoke-virtual {v0, v1}, Leri;->b(I)Leri;

    move-result-object v0

    iget-object v0, v0, Leri;->a:Landroid/view/View;

    check-cast v0, Lcom/wandoujia/ripple_framework/view/Spinner;

    .line 99
    new-instance v1, Ldrk;

    invoke-direct {v1}, Ldrk;-><init>()V

    .line 100
    invoke-static {v2}, Ldpy;->b(Lcom/wandoujia/ripple_framework/model/Model;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldrk;->a(Ljava/util/List;)V

    .line 101
    new-instance v2, Ldqa;

    invoke-direct {v2, p0, v0}, Ldqa;-><init>(Ldpy;Lcom/wandoujia/ripple_framework/view/Spinner;)V

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/view/Spinner;->setOnMenuSelectListener(Lhnr;)V

    .line 114
    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/Spinner;->setAdapter(Lhns;)V

    .line 115
    iget v1, p0, Ldpy;->b:I

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/Spinner;->a(I)V

    goto/16 :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
