.class public final Lelj;
.super Leee;
.source "SuggestionCardAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leee",
        "<",
        "Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;)V
    .locals 5
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Leee;-><init>()V

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;->suggestions:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    const/4 v0, 0x0

    .line 48
    iget-object v1, p1, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo;->suggestions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;

    .line 49
    new-instance v4, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;

    invoke-direct {v4, v0}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;-><init>(Lcom/wandoujia/launcher_search/suggestion/model/SuggestionInfo$Item;)V

    .line 50
    if-nez v1, :cond_0

    .line 51
    invoke-virtual {v4}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a()Z

    move-result v1

    move v0, v1

    .line 55
    :goto_1
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    .line 56
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v4}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    sget-object v0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;->Simple:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;

    iput-object v0, v4, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->b:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;

    :cond_1
    move v0, v1

    goto :goto_1

    .line 58
    :cond_2
    invoke-virtual {p0, v2}, Lelj;->a(Ljava/util/List;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/view/ViewGroup;Leef;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lelj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;

    .line 75
    iput p1, p3, Leef;->a:I

    .line 76
    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-static {p2}, Lelp;->b(Landroid/view/ViewGroup;)Lelp;

    move-result-object v1

    .line 78
    iput-object v1, p3, Leef;->b:Lcom/wandoujia/mvc/BaseView;

    .line 79
    invoke-virtual {v1}, Lelp;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->c()Leiu;

    move-result-object v3

    invoke-interface {v3}, Leiu;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, v1, Lelp;->d:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->c()Leiu;

    move-result-object v3

    invoke-interface {v3}, Leiu;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, v1, Lelp;->d:Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;

    invoke-static {v1}, Lcom/wandoujia/launcher_search/utils/SearchLogHelper;->b(Lcom/wandoujia/launcher_base/view/button/view/StatefulButton;)V

    .line 87
    :goto_0
    new-instance v1, Lell;

    invoke-direct {v1}, Lell;-><init>()V

    iput-object v1, p3, Leef;->c:Lcom/wandoujia/mvc/BaseController;

    .line 88
    invoke-virtual {p3, v0}, Leef;->a(Lcom/wandoujia/mvc/BaseModel;)V

    .line 90
    iget-object v0, p3, Leef;->b:Lcom/wandoujia/mvc/BaseView;

    invoke-interface {v0}, Lcom/wandoujia/mvc/BaseView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 85
    :cond_0
    invoke-static {p2}, Lelp;->a(Landroid/view/ViewGroup;)Lelp;

    move-result-object v1

    iput-object v1, p3, Leef;->b:Lcom/wandoujia/mvc/BaseView;

    goto :goto_0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lelk;

    invoke-direct {v0, p0}, Lelk;-><init>(Lelj;)V

    return-object v0
.end method

.method public final getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lelj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;

    iget-object v0, v0, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel;->b:Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;

    invoke-virtual {v0}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;->getValue()I

    move-result v0

    return v0
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;->values()[Lcom/wandoujia/launcher_search/suggestion/model/SuggestionCardModel$Type;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
