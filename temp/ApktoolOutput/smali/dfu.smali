.class public final Ldfu;
.super Lhz;
.source "HomePageFragment.java"


# instance fields
.field final synthetic a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;


# direct methods
.method public constructor <init>(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-direct {p0}, Lhz;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->c(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Lhhv;

    move-result-object v0

    iget-object v0, v0, Lcom/wandoujia/nirvana/framework/network/page/PageList;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->q(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->q(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 501
    iget-object v0, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->q(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 503
    iget-object v0, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;

    move-result-object v0

    invoke-interface {v0}, Ldgb;->a_()V

    .line 506
    :cond_0
    iget-object v1, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    iget-object v0, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->b(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldfn;

    move-result-object v0

    invoke-virtual {v0, p1}, Ldfn;->c(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Ldgb;

    invoke-static {v1, v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->a(Lcom/wandoujia/jupiter/homepage/HomePageFragment;Ldgb;)Ldgb;

    .line 507
    iget-object v0, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;

    move-result-object v0

    if-nez v0, :cond_2

    .line 517
    :cond_1
    :goto_0
    return-void

    .line 510
    :cond_2
    iget-object v0, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;

    move-result-object v0

    iget-object v1, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->r(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldfm;

    move-result-object v1

    invoke-interface {v0, v1}, Ldgb;->a(Ldfm;)V

    .line 512
    iget-object v0, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->a(Lcom/wandoujia/jupiter/homepage/HomePageFragment;Z)Z

    .line 513
    iget-object v0, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v0}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;

    move-result-object v0

    invoke-interface {v0}, Ldgb;->b_()I

    move-result v0

    .line 514
    iget-object v1, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->o(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ldfu;->a:Lcom/wandoujia/jupiter/homepage/HomePageFragment;

    invoke-static {v1}, Lcom/wandoujia/jupiter/homepage/HomePageFragment;->n(Lcom/wandoujia/jupiter/homepage/HomePageFragment;)Ldgb;

    move-result-object v1

    invoke-interface {v1}, Ldgb;->c_()Landroid/view/View;

    move-result-object v1

    new-instance v2, Ldfv;

    invoke-direct {v2, p0, v0}, Ldfv;-><init>(Ldfu;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 521
    invoke-super {p0, p1, p2, p3}, Lhz;->a(IFI)V

    .line 522
    return-void
.end method
