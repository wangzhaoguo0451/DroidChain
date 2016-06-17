.class public Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;
.super Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;
.source "SearchHomeFragment.java"


# instance fields
.field public d:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

.field private e:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

.field private q:Ldxa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 5
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
    const/4 v4, 0x0

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    const-string v1, "ch"

    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "source"

    invoke-static {}, Lcom/wandoujia/ripple_framework/Config;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v1, Ldcb;

    invoke-direct {v1, p1, v0}, Ldcb;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    new-instance v0, Ldrf;

    invoke-direct {v0, v4}, Ldrf;-><init>(B)V

    invoke-virtual {v1, v0}, Ldcb;->a(Leqx;)V

    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "timestamp"

    aput-object v2, v0, v4

    iput-object v0, v1, Lhhv;->i:[Ljava/lang/String;

    .line 120
    return-object v1
.end method

.method public final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V

    .line 163
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setSwipeRefreshEnabled(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->n:Leqw;

    invoke-static {v0, v1, p2}, Ldxa;->a(Landroid/content/Context;Leqw;Ljava/lang/Exception;)Ldxa;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->q:Ldxa;

    .line 165
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->q:Ldxa;

    invoke-virtual {v0}, Ldxa;->a()V

    .line 166
    return-void
.end method

.method public final a(Leqw;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->n:Leqw;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->n:Leqw;

    check-cast v0, Ldcb;

    iget-object v1, v0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lerd;

    invoke-direct {v1, v0}, Lerd;-><init>(Lcom/wandoujia/nirvana/framework/network/page/PageList;)V

    iput-object v1, v0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->e:Lerd;

    invoke-virtual {v0}, Lcom/wandoujia/nirvana/framework/network/page/PageList;->f()V

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;->a(Leqw;)V

    .line 109
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 125
    const v0, 0x7f03013d

    return v0
.end method

.method protected final b(Leqw;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;->b(Leqw;)V

    .line 131
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setSwipeRefreshEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->q:Ldxa;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->q:Ldxa;

    invoke-virtual {v0}, Ldxa;->b()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->n:Leqw;

    invoke-virtual {v0, v4}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v1, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->h:Landroid/view/View;

    const v2, 0x7f0c0352

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->SEARCH_FILTER:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v2, v3, :cond_4

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 136
    :cond_1
    :goto_0
    invoke-virtual {p1}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p1, v4}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 138
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v2, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->SEARCH_DIRECT:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    if-eqz v1, :cond_2

    .line 140
    sget-object v1, Lham;->f:Lham;

    const-string v2, "navigation"

    invoke-virtual {v1, v2}, Lham;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/jupiter/navigation/NavigationManager;

    iget-object v2, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->h:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    invoke-virtual {v1, v2, v0}, Lcom/wandoujia/jupiter/navigation/NavigationManager;->a(Landroid/content/Context;Lcom/wandoujia/api/proto/Action;)V

    .line 143
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->pageLoaded()V

    .line 154
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->m()V

    .line 156
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->i:Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/view/ObservableRecyclerView;->l()V

    .line 158
    :cond_3
    return-void

    .line 135
    :cond_4
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v2, Lerf;

    invoke-direct {v2, v1}, Lerf;-><init>(Landroid/view/View;)V

    new-instance v1, Ldpy;

    invoke-direct {v1}, Ldpy;-><init>()V

    invoke-virtual {v2, v4, v1, v4}, Lerf;->a(ILerg;Z)Lerf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lerf;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected initializeToolbar(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;->initializeToolbar(Landroid/view/View;Landroid/os/Bundle;)V

    .line 171
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f020253

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 173
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundColor(I)V

    .line 174
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const-string v1, "#ff000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 176
    :cond_0
    return-void
.end method

.method public isSystemBarEnabled()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/search/fragment/AutoHideInputMethodFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    const v1, 0x7f030183

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyLayout(I)V

    .line 55
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    new-instance v1, Ldrm;

    invoke-direct {v1}, Ldrm;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyViewRender(Lhmx;)V

    .line 72
    const v0, 0x7f0c0482

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->e:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    .line 73
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->e:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    sget-object v1, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->ALL:Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;

    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->setHintType(Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V

    .line 75
    const v0, 0x7f0c0365

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    iput-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->d:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    .line 76
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->d:Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;

    invoke-virtual {v0, v2}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbarForSearch;->a(Z)V

    .line 78
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_query"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->e:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->e:Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;

    iput-boolean v2, v1, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->a:Z

    invoke-static {v0}, Lcom/wandoujia/base/utils/TextUtil;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v1}, Lcom/wandoujia/jupiter/search/view/SearchSuggestionTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/wandoujia/jupiter/search/fragment/SearchHomeFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setSwipeRefreshEnabled(Z)V

    .line 83
    return-void
.end method
