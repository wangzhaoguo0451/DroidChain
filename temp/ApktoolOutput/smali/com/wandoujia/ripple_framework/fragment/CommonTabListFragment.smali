.class public abstract Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;
.super Lcom/wandoujia/ripple_framework/fragment/TabFragment;
.source "CommonTabListFragment.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field public b:Leqw;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/wandoujia/ripple_framework/model/Model;)Lhbe;
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->a:Ljava/util/List;

    .line 170
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 171
    invoke-virtual {p0, v0}, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->a(Lcom/wandoujia/ripple_framework/model/Model;)Lhbe;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    :cond_1
    invoke-super {p0, v1}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wandoujia/ripple_framework/model/Model;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->k:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    sget-object v3, Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;->TAB:Lcom/wandoujia/api/proto/ContentTypeEnum$ContentType;

    if-ne v0, v3, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->c:Z

    .line 79
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->c:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->b:Leqw;

    move-object v1, v0

    .line 80
    :goto_2
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->c:Z

    if-nez v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;

    invoke-virtual {v0, p2}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->removeList(Ljava/lang/String;)Leqw;

    .line 84
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->pageLoaded()V

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    new-instance v2, Lhdx;

    invoke-direct {v2, p0, v1}, Lhdx;-><init>(Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;Leqw;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    move v0, v2

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    new-instance v0, Lcom/wandoujia/ripple_framework/model/Model;

    invoke-static {p2}, Lhlk;->a(Ljava/lang/String;)Lcom/wandoujia/api/proto/Entity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/wandoujia/ripple_framework/model/Model;-><init>(Lcom/wandoujia/api/proto/Entity;)V

    new-array v1, v1, [Lcom/wandoujia/ripple_framework/model/Model;

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Lhdz;

    invoke-direct {v0, v1}, Lhdz;-><init>(Ljava/util/List;)V

    move-object v1, v0

    goto :goto_2
.end method

.method public d()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 178
    .line 179
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v1, v2

    .line 188
    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 182
    :goto_1
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->l:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    sget-object v3, Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;->DEFAULT_TAB:Lcom/wandoujia/api/proto/TemplateTypeEnum$TemplateType;

    if-eq v0, v3, :cond_1

    .line 182
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected initializePageUri(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->c:Z

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->initializePageUri(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/fragment/TabFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->c:Z

    .line 58
    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/activity/BaseActivity;

    new-instance v2, Lhhv;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lhhv;-><init>(Ljava/lang/String;Leqx;)V

    invoke-virtual {v0, v2}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->addList(Leqw;)Leqw;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->b:Leqw;

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->b:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->e()V

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->b:Leqw;

    invoke-virtual {v0}, Leqw;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->b:Leqw;

    new-instance v2, Lhdy;

    invoke-direct {v2, p0, v1}, Lhdy;-><init>(Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Leqw;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener;)V

    iget-object v0, p0, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->b:Leqw;

    invoke-virtual {v0}, Leqw;->g()V

    goto :goto_0
.end method
