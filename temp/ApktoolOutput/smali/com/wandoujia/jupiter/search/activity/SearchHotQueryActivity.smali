.class public Lcom/wandoujia/jupiter/search/activity/SearchHotQueryActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "SearchHotQueryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected customSystemTintBar()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/search/fragment/SearchHotQueryFragment;-><init>()V

    .line 37
    const-string v1, "wdj://search/hot"

    invoke-static {v1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/activity/SearchHotQueryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/activity/SearchHotQueryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/activity/SearchHotQueryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 40
    const-string v2, "KEY_SEARCH_TYPE_FOR_HINT"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    .line 42
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "KEY_SEARCH_TYPE_FOR_HINT"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    new-instance v1, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;

    invoke-direct {v1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;-><init>()V

    .line 48
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->swipeRefresh:Z

    .line 49
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "view_config"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 51
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/activity/SearchHotQueryActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 52
    return-void
.end method
