.class public Lcom/wandoujia/jupiter/subscribe/activity/SubscribeRankingActivity;
.super Lcom/wandoujia/ripple_framework/activity/BaseActivity;
.source "SubscribeRankingActivity.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/activity/SubscribeRankingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/activity/SubscribeRankingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 54
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wandoujia/jupiter/subscribe/activity/SubscribeRankingActivity;->a:Ljava/lang/String;

    .line 55
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wandoujia/jupiter/subscribe/activity/SubscribeRankingActivity;->b:Ljava/lang/String;

    .line 58
    :cond_1
    const-string v0, "wdj://follow/top"

    const-string v1, "http://apis.wandoujia.com/five/v1/follow/tops?format=proto"

    iget-object v2, p0, Lcom/wandoujia/jupiter/subscribe/activity/SubscribeRankingActivity;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/wandoujia/jupiter/fragment/ListFragment;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 60
    const-string v1, "type"

    iget-object v2, p0, Lcom/wandoujia/jupiter/subscribe/activity/SubscribeRankingActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v1, Lcom/wandoujia/jupiter/fragment/ListFragment;

    invoke-direct {v1}, Lcom/wandoujia/jupiter/fragment/ListFragment;-><init>()V

    .line 62
    invoke-virtual {v1, v0}, Lcom/wandoujia/jupiter/fragment/ListFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/wandoujia/jupiter/subscribe/activity/SubscribeRankingActivity;->getSupportFragmentManager()Ls;

    move-result-object v0

    invoke-virtual {v0}, Ls;->a()Lag;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Lag;->a(ILandroid/support/v4/app/Fragment;)Lag;

    move-result-object v0

    invoke-virtual {v0}, Lag;->a()I

    .line 64
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
    .line 32
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-direct {p0}, Lcom/wandoujia/jupiter/subscribe/activity/SubscribeRankingActivity;->a()V

    .line 34
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/wandoujia/ripple_framework/activity/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/wandoujia/jupiter/subscribe/activity/SubscribeRankingActivity;->setIntent(Landroid/content/Intent;)V

    .line 40
    invoke-direct {p0}, Lcom/wandoujia/jupiter/subscribe/activity/SubscribeRankingActivity;->a()V

    .line 41
    return-void
.end method
