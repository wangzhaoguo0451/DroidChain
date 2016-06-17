.class public Lcom/wandoujia/jupiter/activity/RankingActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "RankingActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    .line 24
    const-string v0, "wdj://apps/top"

    iput-object v0, p0, Lcom/wandoujia/jupiter/activity/RankingActivity;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Lcom/wandoujia/jupiter/fragment/TabListFragment;

    invoke-direct {v0}, Lcom/wandoujia/jupiter/fragment/TabListFragment;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/RankingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "page_api_url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/jupiter/activity/RankingActivity;->a:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Lcom/wandoujia/jupiter/activity/RankingActivity;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/RankingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/wandoujia/jupiter/activity/RankingActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/wandoujia/jupiter/activity/RankingActivity;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/wandoujia/jupiter/fragment/ListFragment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/wandoujia/ripple_framework/fragment/BaseListFragment$ViewConfig;)Landroid/os/Bundle;

    move-result-object v1

    .line 42
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/RankingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0503

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/wandoujia/jupiter/fragment/TabListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/RankingActivity;->getSupportFragmentManager()Ls;

    move-result-object v1

    invoke-virtual {v1}, Ls;->a()Lag;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Lag;->b(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 46
    return-void

    .line 39
    :cond_1
    const-string v1, "wdj://games/top"

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/activity/RankingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "http://apis.wandoujia.com/games/v1/tops?format=proto"

    iput-object v1, p0, Lcom/wandoujia/jupiter/activity/RankingActivity;->a:Ljava/lang/String;

    const-string v1, "wdj://games/top"

    iput-object v1, p0, Lcom/wandoujia/jupiter/activity/RankingActivity;->b:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "http://apis.wandoujia.com/apps/v1/tops?format=proto"

    iput-object v1, p0, Lcom/wandoujia/jupiter/activity/RankingActivity;->a:Ljava/lang/String;

    const-string v1, "wdj://apps/top"

    iput-object v1, p0, Lcom/wandoujia/jupiter/activity/RankingActivity;->b:Ljava/lang/String;

    goto :goto_0
.end method
