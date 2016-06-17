.class public Lcom/wandoujia/jupiter/fragment/TabListFragment;
.super Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;
.source "TabListFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/wandoujia/ripple_framework/model/Model;)Lhbe;
    .locals 5
    .parameter

    .prologue
    .line 37
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/TabListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/TabListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 42
    :cond_0
    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v2, v0, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    iget-object v0, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v0, v0, Lcom/wandoujia/api/proto/Action;->url:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_1
    :goto_0
    invoke-static {v2, v0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 43
    const-string v0, "force_close_toolbar"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    new-instance v0, Lhbe;

    iget-object v2, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v2, v2, Lcom/wandoujia/api/proto/Entity$Builder;->title:Ljava/lang/String;

    const-class v3, Lcom/wandoujia/jupiter/fragment/ListFragment;

    iget-object v4, p1, Lcom/wandoujia/ripple_framework/model/Model;->a:Lcom/wandoujia/api/proto/Entity$Builder;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Entity$Builder;->action:Lcom/wandoujia/api/proto/Action;

    iget-object v4, v4, Lcom/wandoujia/api/proto/Action;->intent:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v1}, Lhbe;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0

    .line 42
    :cond_2
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://ripple.wandoujia.com"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/TabListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page_api_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->a(Lcom/wandoujia/nirvana/framework/network/page/DataLoadListener$Op;Ljava/lang/Exception;)V

    .line 57
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/TabListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/fragment/TabListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/fragment/TabListFragment;->b:Leqw;

    invoke-static {v0, v1, p2}, Ldxa;->a(Landroid/content/Context;Leqw;Ljava/lang/Exception;)Ldxa;

    move-result-object v0

    invoke-virtual {v0}, Ldxa;->a()V

    .line 60
    :cond_0
    return-void
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f030176

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lcom/wandoujia/ripple_framework/fragment/CommonTabListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 23
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/TabListFragment;->toolbarDeco:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/wandoujia/jupiter/fragment/TabListFragment;->toolbarDeco:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    :cond_0
    return-void
.end method
