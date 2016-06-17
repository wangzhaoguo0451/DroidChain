.class public Lcom/wandoujia/jupiter/library/fragment/FavoriteFragment;
.super Lcom/wandoujia/jupiter/fragment/ListFragment;
.source "FavoriteFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Leqw;
    .locals 4
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
    const/4 v3, 0x0

    .line 69
    const-string v0, "http://apis.wandoujia.com/five/v2/favorites/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lchv;->t()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ldcb;

    invoke-direct {v1, v0}, Ldcb;-><init>(Ljava/lang/String;)V

    .line 71
    iput-boolean v3, v1, Lhhv;->h:Z

    .line 72
    return-object v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onResume()V

    .line 60
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/library/fragment/FavoriteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->a(Landroid/content/Context;)Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FAVORITE"

    invoke-static {v0, v1}, Lcom/wandoujia/p4/subscribe/SubscribeRefreshFlagChecker;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/FavoriteFragment;->n:Leqw;

    invoke-virtual {v0}, Leqw;->h()V

    .line 65
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 33
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/FavoriteFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    const v1, 0x7f030182

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyLayout(I)V

    .line 34
    iget-object v0, p0, Lcom/wandoujia/jupiter/library/fragment/FavoriteFragment;->j:Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;

    new-instance v1, Ldia;

    invoke-direct {v1}, Ldia;-><init>()V

    invoke-virtual {v0, v1}, Lcom/wandoujia/ripple_framework/view/RecyclerViewAutoLoadingLayout;->setEmptyViewRender(Lhmx;)V

    .line 55
    return-void
.end method
