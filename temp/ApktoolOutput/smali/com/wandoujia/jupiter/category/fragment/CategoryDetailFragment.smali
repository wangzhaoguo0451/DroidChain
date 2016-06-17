.class public Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;
.super Lcom/wandoujia/jupiter/fragment/TabListFragment;
.source "CategoryDetailFragment.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/wandoujia/jupiter/fragment/TabListFragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->e:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/wandoujia/ripple_framework/model/Model;)Lhbe;
    .locals 5
    .parameter

    .prologue
    .line 47
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    .line 48
    iget-object v1, v0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    iget-object v2, v0, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    invoke-static {v2}, Ld;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 49
    const-string v2, "force_close_toolbar"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    new-instance v2, Lhbe;

    iget-object v3, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v3, v3, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->b()Ljava/lang/Class;

    move-result-object v4

    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0, v1}, Lhbe;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v2
.end method

.method protected final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    const-string v0, ""

    .line 34
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_api_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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
    const/4 v1, 0x0

    .line 60
    invoke-static {p1}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    iget-object v0, v0, Lcom/wandoujia/ripple_framework/model/Model;->i:Ljava/util/List;

    invoke-static {v0}, Lcom/wandoujia/base/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/model/Model;

    .line 66
    iget-object v1, v0, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v1, v1, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->getView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lddj;

    invoke-direct {v2, p0, v0}, Lddj;-><init>(Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;Lcom/wandoujia/ripple_framework/model/Model;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    const-class v0, Lcom/wandoujia/jupiter/fragment/ListFragment;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcom/wandoujia/jupiter/fragment/TabListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subCategoryName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->a:Ljava/lang/String;

    .line 43
    :cond_0
    return-void
.end method
