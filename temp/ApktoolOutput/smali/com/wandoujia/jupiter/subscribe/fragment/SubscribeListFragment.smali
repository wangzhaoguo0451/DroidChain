.class public Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;
.super Lcom/wandoujia/jupiter/fragment/ListFragment;
.source "SubscribeListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Leqw;
    .locals 2
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
    .line 71
    new-instance v0, Ldcb;

    invoke-direct {v0, p1}, Ldcb;-><init>(Ljava/lang/String;)V

    .line 72
    const/4 v1, 0x0

    iput-boolean v1, v0, Lhhv;->h:Z

    .line 73
    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;

    iget-object v1, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->removeList(Ljava/lang/String;)Leqw;

    .line 79
    invoke-super {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onDestroyView()V

    .line 80
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->a(Landroid/content/Context;)Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUBSCRIBE"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->h()V

    .line 63
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    const v1, 0x7f030182

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyLayout(I)V

    .line 35
    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/fragment/SubscribeListFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    new-instance v1, Lduh;

    invoke-direct {v1}, Lduh;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyViewRender(Lhmx;)V

    .line 54
    return-void
.end method
