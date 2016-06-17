.class public Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;
.super Lcom/wandoujia/ripple_framework/fragment/BaseFragment;
.source "DetailExpandInfoFragment.java"


# instance fields
.field private a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

.field private b:Lcom/wandoujia/ripple_framework/model/Model;

.field private c:Lcom/wandoujia/api/proto/AppDetail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;
    .locals 2
    .parameter

    .prologue
    .line 34
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string v1, "page_api_url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;

    invoke-direct {v1}, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;-><init>()V

    .line 37
    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    return-object v1
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 104
    :cond_0
    return-void
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_api_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lhhw;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lhhw;

    invoke-interface {v0, v1}, Lhhw;->findList(Ljava/lang/String;)Leqw;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leqw;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->b:Lcom/wandoujia/ripple_framework/model/Model;

    .line 50
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0}, Lcom/wandoujia/ripple_framework/model/Model;->h()Lcom/wandoujia/api/proto/AppDetail;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->c:Lcom/wandoujia/api/proto/AppDetail;

    .line 53
    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    const v0, 0x7f030113

    invoke-static {p2, v0}, Ld;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    .line 58
    const v0, 0x7f0c0323

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;

    .line 60
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->setLeftMiniWidth(I)V

    .line 62
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->c:Lcom/wandoujia/api/proto/AppDetail;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->c:Lcom/wandoujia/api/proto/AppDetail;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Ldwk;->b(Lcom/wandoujia/api/proto/AppDetail;Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->removeAllViews()V

    iget-object v2, v0, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v1, v5}, Lcom/wandoujia/phoenix2/av/view/PairTextContainer;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 68
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 69
    new-instance v0, Ldek;

    invoke-direct {v0, p0}, Ldek;-><init>(Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 80
    return-object v3
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->c:Lcom/wandoujia/api/proto/AppDetail;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->c:Lcom/wandoujia/api/proto/AppDetail;

    iget-object v1, v1, Lcom/wandoujia/api/proto/AppDetail;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    :cond_0
    const v0, 0x7f0c00f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    iput-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    .line 90
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->getListener()Ldvf;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->a:Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/toolbar/JupiterToolbar;->getListener()Ldvf;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/DetailExpandInfoFragment;->b:Lcom/wandoujia/ripple_framework/model/Model;

    invoke-virtual {v0, v1}, Ldvf;->a(Lcom/wandoujia/ripple_framework/model/Model;)V

    .line 93
    :cond_1
    return-void
.end method
