.class public final Ldsh;
.super Ljava/lang/Object;
.source "QueryHistoryProcessor.java"

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


# instance fields
.field private a:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ldsh;->a:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    .line 33
    return-void
.end method

.method private static b()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->d()Lcom/wandoujia/jupiter/JupiterApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/jupiter/JupiterApplication;->b:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;

    sget-object v2, Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;->ALL:Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;

    invoke-virtual {v0, v2}, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->a(Lcom/wandoujia/jupiter/search/utils/SearchConst$SearchType;)Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;

    .line 76
    new-instance v3, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v3}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    iget-object v4, v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->KEYWORD:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->QUERY_HISTORY_KEYWORD:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v3, v4}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v3

    new-instance v4, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v4}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "wdj://explore/search/home/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager$SearchHistory$SearchHistoryItem;->query:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wandoujia/api/proto/Entity$Builder;->action(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v0

    .line 82
    new-instance v3, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v3, v0}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 6
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
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    iget-object v1, p0, Ldsh;->a:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    new-instance v2, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v2}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0655

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->BUTTON:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->VIEW_ALL_ACTION:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v2, v3}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v2

    new-instance v3, Lcom/wandoujia/api/proto/Action$Builder;

    invoke-direct {v3}, Lcom/wandoujia/api/proto/Action$Builder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wdj://explore/search/hot?KEY_SEARCH_TYPE_FOR_HINT="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/wandoujia/api/proto/Action$Builder;->intent(Ljava/lang/String;)Lcom/wandoujia/api/proto/Action$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Action$Builder;->build()Lcom/wandoujia/api/proto/Action;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/wandoujia/api/proto/Entity$Builder;->action(Lcom/wandoujia/api/proto/Action;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v2, v1}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {}, Ldsh;->b()Ljava/util/List;

    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    new-instance v1, Lcom/wandoujia/api/proto/Entity$Builder;

    invoke-direct {v1}, Lcom/wandoujia/api/proto/Entity$Builder;-><init>()V

    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->e()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e048d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->title(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->KEYWORD:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->content_type(Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->QUERY_HISTORY_CLEAR_ALL:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    invoke-virtual {v1, v2}, Lcom/wandoujia/api/proto/Entity$Builder;->template_type(Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;)Lcom/wandoujia/api/proto/Entity$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wandoujia/api/proto/Entity$Builder;->build()Lcom/wandoujia/api/proto/Entity;

    move-result-object v1

    new-instance v2, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-direct {v2, v1}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    return-object v0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
