.class public Lcom/wandoujia/jupiter/search/activity/SearchQueryHistoryActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "SearchQueryHistoryActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wandoujia/jupiter/search/activity/SearchQueryHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 26
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 27
    const-string v1, "KEY_SEARCH_TYPE_FOR_HINT"

    invoke-virtual {p1}, Lcom/wandoujia/jupiter/search/model/SearchTypeForHint;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected customSystemTintBar()Z
    .locals 1

    .prologue
    .line 54
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
    new-instance v0, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/search/fragment/SearchQueryHistoryFragment;-><init>()V

    .line 37
    const-string v1, "wdj://search/history"

    invoke-static {v1}, Lcom/wandoujia/jupiter/fragment/ListFragment;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/activity/SearchQueryHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/activity/SearchQueryHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/activity/SearchQueryHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 45
    :cond_1
    new-instance v1, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;

    invoke-direct {v1}, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;-><init>()V

    .line 46
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;->swipeRefresh:Z

    .line 47
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "view_config"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 49
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/search/activity/SearchQueryHistoryActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 50
    return-void
.end method
