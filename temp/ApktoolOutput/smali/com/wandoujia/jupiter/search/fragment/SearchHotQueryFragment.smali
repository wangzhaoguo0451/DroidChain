.class public Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;
.super Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;
.source "SearchHotQueryFragment.java"


# instance fields
.field private d:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

.field private e:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;-><init>()V

    .line 38
    sget-object v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;->d:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Leqw",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 72
    const-string v0, "http://apis.wandoujia.com/five/v1/search/hot?format=proto"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 74
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v2, Ldcb;

    invoke-direct {v2, v0, v1}, Ldcb;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "timestamp"

    aput-object v1, v0, v6

    iput-object v0, v2, Lhhv;->i:[Ljava/lang/String;

    .line 77
    return-object v2
.end method

.method protected final a()Lum;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ldco;

    invoke-direct {v0}, Ldco;-><init>()V

    return-object v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f03013d

    return v0
.end method

.method protected final d_()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(I)V

    return-object v0
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 108
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    const-string v1, "wdj://search/hot"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/ripple_framework/log/Logger;

    .line 110
    const/4 v0, 0x1

    return v0
.end method

.method protected initializeToolbar(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;->initializeToolbar(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f020253

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 101
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 102
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#ff000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public isSystemBarEnabled()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_SEARCH_TYPE_FOR_HINT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-static {v0}, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;->d:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    .line 48
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->h()V

    .line 84
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f0c0482

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    .line 55
    iget-object v1, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;->d:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->setHintType(Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    .line 56
    const v0, 0x7f0c0365

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;->e:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    .line 57
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;->e:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Z)V

    .line 58
    return-void
.end method
