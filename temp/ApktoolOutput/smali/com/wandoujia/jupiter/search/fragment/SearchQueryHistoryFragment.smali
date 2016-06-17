.class public Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;
.super Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;
.source "SearchQueryHistoryFragment.java"


# instance fields
.field private d:I

.field private e:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

.field private q:Ldrs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;-><init>()V

    .line 45
    sget-object v0, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->e:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    .line 46
    new-instance v0, Ldrs;

    invoke-direct {v0, p0}, Ldrs;-><init>(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;)V

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->q:Ldrs;

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;)Leqw;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->n:Leqw;

    return-object v0
.end method

.method public static synthetic c(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->d:I

    return v0
.end method

.method public static synthetic d(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;)I
    .locals 2
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->d:I

    return v0
.end method

.method public static synthetic e(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->d:I

    return v0
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

    .line 85
    invoke-static {}, Lcom/wandoujia/jupiter/JupiterApplication;->d()Lcom/wandoujia/jupiter/JupiterApplication;

    move-result-object v0

    iget-object v1, v0, Lcom/wandoujia/jupiter/JupiterApplication;->b:Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;

    iget-object v2, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->q:Ldrs;

    iget-object v3, v1, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->a:Ljava/util/Set;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrs;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    const-string v0, "http://apis.wandoujia.com/five/v1/search/hot?format=proto&short=true"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v2, Ldcb;

    invoke-direct {v2, v0, v1}, Ldcb;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "timestamp"

    aput-object v1, v0, v6

    iput-object v0, v2, Lhhv;->i:[Ljava/lang/String;

    .line 94
    new-instance v0, Ldsh;

    iget-object v1, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->e:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-direct {v0, v1}, Ldsh;-><init>(Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    invoke-virtual {v2, v0}, Ldcb;->a(Leqx;)V

    .line 95
    new-instance v0, Ldro;

    invoke-direct {v0, p0, v2}, Ldro;-><init>(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;Ldcb;)V

    invoke-virtual {v2, v0}, Ldcb;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    .line 114
    return-object v2

    .line 85
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/wandoujia/jupiter/search/manage/SearchHistoryManager;->a:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final a()Lum;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Ldco;

    invoke-direct {v0}, Ldco;-><init>()V

    return-object v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f03013c

    return v0
.end method

.method protected final d_()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(I)V

    .line 126
    new-instance v1, Ldrp;

    invoke-direct {v1, p0}, Ldrp;-><init>(Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;)V

    iput-object v1, v0, Landroid/support/v7/widget/GridLayoutManager;->a:Lti;

    .line 132
    return-object v0
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 3
    .parameter

    .prologue
    .line 152
    sget-object v0, Lham;->f:Lham;

    iget-object v0, v0, Lhal;->e:Lcom/wandoujia/ripple_framework/log/Logger;

    const-string v1, "wdj://search/history"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/wandoujia/ripple_framework/log/Logger;->a(Landroid/view/View;Ljava/lang/String;Ljava/util/List;)Lcom/wandoujia/ripple_framework/log/Logger;

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method protected initializeToolbar(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;->initializeToolbar(Landroid/view/View;Landroid/os/Bundle;)V

    .line 143
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f020253

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 145
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 146
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#ff000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 148
    :cond_0
    return-void
.end method

.method public isSystemBarEnabled()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KEY_SEARCH_TYPE_FOR_HINT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    invoke-static {v0}, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->valueOf(Ljava/lang/String;)Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->e:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    .line 63
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;->onResume()V

    .line 120
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->h()V

    .line 121
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f0c0482

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    .line 70
    iget-object v1, p0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;->e:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->setHintType(Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    .line 71
    return-void
.end method
