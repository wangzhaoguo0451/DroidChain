.class public Lcom/wandoujia/jupiter/subscribe/activity/PublisherCollectionActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "PublisherCollectionActivity.java"


# instance fields
.field private a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    const v8, 0x1020002

    .line 52
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherCollectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherCollectionActivity;->finish()V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherCollectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Ld;->a(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    .line 61
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Ldub;

    invoke-direct {v3}, Ldub;-><init>()V

    const-string v4, "page_intent_uri"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "wdj://follow/bundles/"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "page_api_url"

    const-string v4, "http://apis.wandoujia.com/five/v1/follow/bundles/%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherCollectionActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    invoke-virtual {v0, v8, v3}, Lag;->a(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    sget-object v0, Ldca;->a:Ldca;

    const-string v1, "local_feed"

    invoke-virtual {v0, v1}, Ldca;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->d()V

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/wandoujia/jupiter/subscribe/activity/PublisherCollectionActivity;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/wandoujia/jupiter/subscribe/activity/PublisherCollectionActivity;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment;

    iget v1, v0, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment;->a:I

    iget-object v2, v0, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/wandoujia/jupiter/category/fragment/CategoryDetailFragment;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment;

    invoke-direct {v1}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment;-><init>()V

    iput-object v1, p0, Lcom/wandoujia/jupiter/subscribe/activity/PublisherCollectionActivity;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment;

    const-string v1, "page_intent_uri"

    const-string v2, "wdj://follow/categories"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "page_api_url"

    const-string v2, "http://apis.wandoujia.com/five/v1/follow/publishers/categories?format=proto"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/wandoujia/jupiter/subscribe/activity/PublisherCollectionActivity;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment;

    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherCollectionActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    iget-object v1, p0, Lcom/wandoujia/jupiter/subscribe/activity/PublisherCollectionActivity;->a:Lcom/wandoujia/jupiter/subscribe/fragment/PublisherCollectionFragment;

    invoke-virtual {v0, v8, v1}, Lag;->a(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    sget-object v0, Ldca;->a:Ldca;

    const-string v1, "local_feed"

    invoke-virtual {v0, v1}, Ldca;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;

    invoke-virtual {v0}, Lcom/wandoujia/jupiter/startpage/manager/LocalFeedManager;->d()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherCollectionActivity;->a()V

    .line 36
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherCollectionActivity;->setIntent(Landroid/content/Intent;)V

    .line 42
    invoke-direct {p0}, Lcom/wandoujia/jupiter/subscribe/activity/PublisherCollectionActivity;->a()V

    .line 43
    return-void
.end method
