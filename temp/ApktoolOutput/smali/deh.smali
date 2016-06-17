.class public final Ldeh;
.super Ljava/lang/Object;
.source "DetailAppHistoryFragment.java"

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
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 8
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
    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 96
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 99
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->b:Lcom/wandoujia/api/proto/Entity;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity;->detail:Lcom/wandoujia/api/proto/Detail;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Detail;->app_detail:Lcom/wandoujia/api/proto/AppDetail;

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->apk:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/api/proto/ApkDetail;

    .line 100
    iget-object v7, v1, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    iget-object v7, v7, Lcom/wandoujia/api/proto/DownloadUrl;->market:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 101
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, v1, Lcom/wandoujia/api/proto/ApkDetail;->download_url:Lcom/wandoujia/api/proto/DownloadUrl;

    iget-object v1, v1, Lcom/wandoujia/api/proto/DownloadUrl;->market:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :cond_2
    new-instance v1, Lcom/wandoujia/api/proto/AppDetail$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/AppDetail$Builder;-><init>()V

    .line 106
    invoke-virtual {v1, v4}, Lcom/wandoujia/api/proto/AppDetail$Builder;->apk(Ljava/util/List;)Lcom/wandoujia/api/proto/AppDetail$Builder;

    .line 107
    new-instance v4, Lcom/wandoujia/ripple_framework/model/Model;

    new-instance v5, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v5}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    iget-object v6, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v5, v6}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v5

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v5, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    new-instance v5, Lcom/wandoujia/api/proto/Detail$Builder;

    invoke-direct {v5}, Lcom/wandoujia/api/proto/Detail$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/AppDetail$Builder;->build()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/wandoujia/api/proto/Detail$Builder;->app_detail(Lcom/wandoujia/api/proto/AppDetail;)Lcom/wandoujia/api/proto/Detail$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Detail$Builder;->build()Lcom/wandoujia/api/proto/Detail;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/api/proto/Entity$Builder;->detail(Lcom/wandoujia/api/proto/Detail;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 114
    :cond_3
    return-object v2
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method
